//   Copyright 2025 H.Momose / JJ2PNX
//
//   Licensed under the Apache License, Version 2.0 (the "License");
//   you may not use this file except in compliance with the License.
//   You may obtain a copy of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in writing, software
//   distributed under the License is distributed on an "AS IS" BASIS,
//   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//   See the License for the specific language governing permissions and
//   limitations under the License.

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/uart.h"
#include "sdkconfig.h"
#include "esp_log.h"
#include "semaphore.h"
#include "esp_system.h"
#include "esp_event.h"
#include "lwip/err.h"
#include "lwip/sys.h"
#include "fluke.h"

// Required to acheve 100sp/s rate
#ifndef CONFIG_UART_ISR_IN_IRAM
#error "Set CONFIG_UART_ISR_IN_IRAM"
#endif

#ifndef ARRAY_LENGTH
#define ARRAY_LENGTH(X)     (sizeof(X)/sizeof(X[0]))
#endif

//#define DUMP
#define UART_TXD 17
#define UART_RXD 16
#define UART_RTS (UART_PIN_NO_CHANGE)
#define UART_CTS (UART_PIN_NO_CHANGE)
#define UART_BAUD_RATE 62500  
#define UART_PORT_NUM 2
#define TASK_STACK_SIZE 3072    // Bytes (esp-idf uses bytes, not words)
#define TASK_PRIO   10

#define HOSTVALUE(X)  ((X) & 0x0F)      // Ignore upper 4 bits to get value from host (decode)
static const char _cardvalue[16] = {0x80, 0x01, 0x02, 0x83, 0x04, 0x85, 0x86, 0x07, 0x08, 0x89, 0x8a, 0x0b, 0x8c, 0x0d, 0x0e, 0x8f};
#define CARDVALUE(X)  (_cardvalue[(X)]) // Attach upper 4 bits to send value to host (encode)

static const char *TAG = "Fluke";

// Card transmit data
static char txdata[32];
static int txlen = 0;
static int txindex = 0;
static bool txslot = false;
static SemaphoreHandle_t txmutex;
static char txlast[16] = {0};
static int txcount  = 0;
// Host receive data
static char rxdata[32];
static int rxindex = 0;
static bool rxslot = false;
static QueueHandle_t rxqueue;
static char rxlast[16] = {0};
static int rxcount = 0;

static fluke_annun_t annunciator = ANNUN_NONE;
static bool registered = false;
static bool is8840a = false;

////////////////////////////////////////////////
// Internal prototypes (only required)
static void fluke_invoketx();
static void cardmsg_45(int datum);

////////////////////////////////////////////////
// Internal functions

// Send 1 byte to main
static void fluke_putc(char c)
{
    uart_write_bytes(UART_PORT_NUM, &c, 1);
#ifdef DUMP
    ESP_LOGI(TAG, "Write: %02x", c);
#endif
    txlast[txcount%sizeof(txlast)] = c;
    txcount ++;
}

// Bootup emulation of GPIB card
static void register_card()
{
    ESP_LOGI(TAG, "register_card");
    fluke_putc(0xC8);
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    txlen = 0;
    txindex = 0;
    txslot = false;
    //cardmsg_45(0);  // NotTalk(0), Talk(2)
    cardmsg_45(annunciator);
    fluke_invoketx();
    registered = true;
}

////////////////////////////////////////////////
// Card message maker

// Card msg 0x43 Disp GPIB addr etc.
// (P, Q, x, x) ... Disp GPIB addr(PQ) (P < 4)
// (8, R, x, x) ... Disp off(R=1) / on(R=0)
// (C, 1, x, x) ... Selftest(C is 0xC)
static void cardmsg_43(int a1, int a2, int b1, int b2)
{
    txdata[txlen++] = 0x43; // Header (Msg id)
    txdata[txlen++] = CARDVALUE(a1); // GPIB addr 10's etc
    txdata[txlen++] = CARDVALUE(a2); // GPIB addr 1's etc
    txdata[txlen++] = CARDVALUE(b1); // Unknown
    txdata[txlen++] = CARDVALUE(b2); // Unknown
    txdata[txlen++] = 0x40; // Footer
}

// Card msg 0x45 Annunciator
// 0x01 ... REMOTE, Lock local control
// 0x02 ... TALK
// 0x04 ... LISTEN
// 0x08 ... SRQ     Latter 3 are probably indicator only 
static void cardmsg_45(int datum)
{
    txdata[txlen++] = 0x45; // Header (Msg id)
    txdata[txlen++] = CARDVALUE(datum);
    txdata[txlen++] = 0x40; // Footer
}

// Card msg 0x49 Make host tell config, host will respond 0xE5 config
static void cardmsg_49(void)
{
    txdata[txlen++] = 0x49; // Header (Msg id)
    txdata[txlen++] = 0x40; // Footer
}

// Card msg 0xC1 Trigger
static void cardmsg_c1(void)
{
    txdata[txlen++] = 0xC1; // Header (Msg id)
    txdata[txlen++] = 0x40; // Footer
}

// Card msg 0xC4 Offset on/off
static void cardmsg_c4(bool offset)
{
    txdata[txlen++] = 0xC4; // Header (Msg id)
    txdata[txlen++] = offset ? CARDVALUE(1) : CARDVALUE(0);
    txdata[txlen++] = 0x40; // Footer
}

// Card msg 0xCB Set Func/Range/Speed/Trig
static void cardmsg_cb(int func, int range, int speed, int trig)
{
    if(is8840a && range > 2) range --;  // 8840a/8842a range is differ by one
    txdata[txlen++] = 0xCB; // Header (Msg id)
    txdata[txlen++] = CARDVALUE(func);
    txdata[txlen++] = CARDVALUE(range);
    txdata[txlen++] = CARDVALUE(speed);
    txdata[txlen++] = CARDVALUE(trig);
    txdata[txlen++] = 0x40; // Footer
}

////////////////////////////////////////////////
// Host message handlers

// Host msg 0x61 Unknown, typically seen prior to 0x67 meas, Sample complete ?
static void hostmsg_61(void)
{
}

// Host msg 0x64 LOCAL key pressed
// Genuine behavior
// In REMOTE mode, card sends 45-80-40 msg to bring host LOCAL mode
// In LOCAL mode, card sends 43 msg to display gpib addr
static void hostmsg_64(void)
{
    // cardmsg_43(0, 1, 0, 0);  // Display GPIB addr 01
    fluke_event_t event;
    event.type = EVENT_LOCAL;
    gettimeofday(&event.time, NULL);
    if(xQueueSendToBack(rxqueue, &event, 0) == errQUEUE_FULL){
        // Discard old event if append failed
        // This mostly occurs when SD card writing falls behind during FAST rate
        fluke_event_t dummy;
        xQueueReceive(rxqueue, &dummy, 0);
        xQueueSendToBack(rxqueue, &event, 0);
        ESP_LOGW(TAG, "Event queue full");
    }
}

// Host msg 0x67 Measured value, heart of the project
static void hostmsg_67(void)
{
    int count = 0;
    bool neg = false;
    bool over = false;
    // Special care for the top digit
    switch (HOSTVALUE(rxdata[0])){
    case 0x0: count = 0; break;
    case 0x1: count = 100000; break;
    case 0x2: count = 200000; over = true; break;
    case 0x3: count = 300000; over = true; break; // count is not correct
    case 0x8: count = 0; neg = true; break;
    case 0x9: count = 100000; neg = true; break;
    case 0xA: count = 200000; neg = true; over = true; break;
    case 0xB: count = 300000; neg = true; over = true; break; // count is not correct
    default:
        ESP_LOGI(TAG, "Unknown host msg 0x67 for top digit %02x", rxdata[0]);
        break;
    }
    count += HOSTVALUE(rxdata[1]) * 10000;
    count += HOSTVALUE(rxdata[2]) * 1000;
    count += HOSTVALUE(rxdata[3]) * 100;
    count += HOSTVALUE(rxdata[4]) * 10;
    count += HOSTVALUE(rxdata[5]);
    if (neg) count = -count;
    
    fluke_event_t event;
    event.type = EVENT_MEAS;
    gettimeofday(&event.time, NULL);
    event.meas.over = over;
    event.meas.count = count;
    event.meas.range = HOSTVALUE(rxdata[6]) + 1; // Reported range is -1 from request, we use request
    if(is8840a) event.meas.range ++; // 8840a/8842a range is differ by one
    if(xQueueSendToBack(rxqueue, &event, 0) == errQUEUE_FULL){
        ESP_LOGW(TAG, "Event queue full");
    }
}

// Host msg 0xE3 SRQ key pressed
static void hostmsg_e3(void)
{
    fluke_event_t event;
    event.type = EVENT_SRQ;
    gettimeofday(&event.time, NULL);
    if(xQueueSendToBack(rxqueue, &event, 0) == errQUEUE_FULL){
        // Discard old event if append failed
        // This mostly occurs when SD card writing falls behind during FAST rate
        fluke_event_t dummy;
        xQueueReceive(rxqueue, &dummy, 0);
        xQueueSendToBack(rxqueue, &event, 0);
        ESP_LOGW(TAG, "Event queue full");
    }
}

// Host msg 0xE5 Config report(Func/Range/Speed/Trig,etc)
// Reported func is same to set value (1)DCV, (2)ACV, (3)R2W, (4)R4W, (5)DCmA, (6)ACmA
// range differ from set value (-1) see below
//  V: (1)20mV (8842 only),   (2)200mV, (3)2V,  (4)20V,  (5)200V,  (6)1000V
//  R: (1)20R (8842,R4W only),(2)200R,  (3)2kR, (4)20kR, (5)200kR, (6)2000kR, (7)20MR
//  A: (5)200mA(8842,DCmA only), (6)2000mA
//  Auto/Man is placed in flags
// speed 1(S),2(M),3(F) or 9(S),10(M),11(F) ... 0x8 bit represents sample delay (my guess)
// flags 0x8 (0)No offset / (1)Offset
// flags 0x4 (0)Autorange / (1)Manual
// flags 0x2 (0)Front-in  / (1)Rear-in
// flags 0x1 (0)Int Trig  / (1)Ext Trig
static void hostmsg_e5(void)
{
    fluke_event_t event;
    event.type = EVENT_CONFIG;
    gettimeofday(&event.time, NULL);
    event.config.func  = HOSTVALUE(rxdata[0]);
    event.config.range = HOSTVALUE(rxdata[1]) + 1; // Reported range is -1 from request, we use request
    if(is8840a) event.config.range ++; // 8840a/8842a range is differ by one
    event.config.speed = HOSTVALUE(rxdata[2]);
    event.config.flags = HOSTVALUE(rxdata[3]);
    // rxdata[4]...Unknown probably cal status
    if(xQueueSendToBack(rxqueue, &event, 0) == errQUEUE_FULL){
        // Discard old event if append failed
        // This mostly occurs when SD card writing falls behind during FAST rate
        fluke_event_t dummy;
        xQueueReceive(rxqueue, &dummy, 0);
        xQueueSendToBack(rxqueue, &event, 0);
        ESP_LOGW(TAG, "Event queue full");
    }
}

// Host msg 0xE9 Error
static void hostmsg_e9(void)
{
    fluke_event_t event;
    event.type = EVENT_ERROR;
    gettimeofday(&event.time, NULL);
    event.errnum =  HOSTVALUE(rxdata[0]) * 10;
    event.errnum += HOSTVALUE(rxdata[1]);
    if(xQueueSendToBack(rxqueue, &event, 0) == errQUEUE_FULL){
        // Discard old event if append failed
        // This mostly occurs when SD card writing falls behind during FAST rate
        fluke_event_t dummy;
        xQueueReceive(rxqueue, &dummy, 0);
        xQueueSendToBack(rxqueue, &event, 0);
        ESP_LOGW(TAG, "Event queue full");
    }
}

struct hostmsgproc_st {
    char msgid;                 // Message id
    int datalen;                // Expected data length
    void (*proc)(void);         // Message handler
    int count;                  // Message receive counter
};

static struct hostmsgproc_st hostmsgprocs[] = {
    {0x61, 0, hostmsg_61, 0},   // Msg 0x61 Unknown, probably sample complete ?
    {0x64, 0, hostmsg_64, 0},   // Msg 0x64 LOCAL key pressed
    {0x67, 7, hostmsg_67, 0},   // Msg 0x67 Measured data
    {0xE3, 0, hostmsg_e3, 0},   // Msg 0xE3 SRQ key pressed
    {0xE5, 5, hostmsg_e5, 0},   // Msg 0xE5 Config(Func/Range/Trig/Flags)
    {0xE9, 2, hostmsg_e9, 0}    // Msg 0xE9 Error
};

static struct hostmsgproc_st *hostmsgproc;

#define ISACKERR(X)         ((X) & 0x10)
#define ISHOST(X)           ((X) & 0x20)          // Datum is from host
#define ISCARD(X)           (!(ISHOST(X)))        // Datum is from card
#define ISCTRL(X)           ((X) & 0x40)          // Datum is control
#define ISVALUE(X)          (!(ISCTRL(X)))        // Datum is value
#define ISHOSTCTRLEND(X)    ((X) == 0xE0)         // Datum is host control end(footer)
#define ISHOSTCTRLSTART(X)  (ISHOST(X) && ISCTRL(X) && !(ISHOSTCTRLEND(X))) // Datum is host control start(header)
#define ISHOSTVALUE(X)      (ISHOST(X) && ISVALUE(X))

static SemaphoreHandle_t feedmutex;

static void fluke_invoketx()
{
    if(xSemaphoreTake(feedmutex, 0) == pdTRUE){
        if(txlen && rxslot == false && txslot == false){
            // Invoke when host stop sending host msg, mostly occur if ext trig is selected.
            //xSemaphoreTake(txmutex, portMAX_DELAY);
            assert(xSemaphoreTake(txmutex, pdMS_TO_TICKS(5000)));
            txslot = true;
            fluke_putc(txdata[0]);
        }
        xSemaphoreGive(feedmutex);
    }
    // Otherwise, will be invoked at ISHOSTCTRLEND of fluke_feed.
}

static int unknown_hostmsg_count = 0;

static void fluke_feed(char c)
{
    rxlast[rxcount%sizeof(rxlast)] = c;
    rxcount++;
    if (c == 0xFF || c == 0xEC){
        register_card();
        return;
    }

    //xSemaphoreTake(feedmutex, portMAX_DELAY);
    assert(xSemaphoreTake(feedmutex, pdMS_TO_TICKS(5000)));
    if(txslot){
        // Transmit card message
        // printf("txlen=%d, txindex=%d\n", txlen, txindex);
        if(c != txdata[txindex]){
            // Inconsistent ACK
            ESP_LOGI(TAG, "Ack not match T=%02x/R=%02x %s", txdata[txindex], c, ISACKERR(c) ? "Ack err ?" : "");
            if(ISACKERR(c)){
                fluke_putc(txdata[txindex]);
            }
            goto end;
        }
        txindex++;
        if(txindex == txlen){
            // Card message finished, clear txbuff for next card msg
            txslot = false;
            txindex = 0;
            txlen = 0;
            xSemaphoreGive(txmutex);
        } else {
            // Card message tx is in-progress
            fluke_putc(txdata[txindex]);
        }
    
    } else if(ISHOST(c)) {
        // Datum is from host
        if(ISHOSTCTRLSTART(c)){
            // Host message start
            rxslot = true;
            hostmsgproc = NULL;
            rxindex = 0;
            for(int i = 0; i < ARRAY_LENGTH(hostmsgprocs); i++){
                if (hostmsgprocs[i].msgid == c){
                    hostmsgproc = &hostmsgprocs[i];
                    break;
                }
            }
            if (hostmsgproc == NULL){
                ESP_LOGW(TAG, "Host msg %02x unknown", c);
                unknown_hostmsg_count++;
            }
            fluke_putc(c);  // Writeback as ack
        } else if(ISHOSTCTRLEND(c)){
            // Host message end
            if(hostmsgproc){
                if(rxindex < hostmsgproc->datalen){
                    // Value too short
                    ESP_LOGW(TAG, "Host msg %02x value too short", hostmsgproc->msgid);
                } else {
                    // Ok
                    hostmsgproc->proc();
                    hostmsgproc->count++;
                }
                fluke_putc(c);  // Writeback as ack
                rxslot = false;
                // Invoke card message tx (if pending) when host message ends
                //xSemaphoreTake(txmutex, portMAX_DELAY);
                assert(xSemaphoreTake(txmutex, pdMS_TO_TICKS(5000)));
                if(txlen){
                    fluke_putc(txdata[0]);
                    txslot = true;
                } else {
                    xSemaphoreGive(txmutex);
                }
            }
        } else {
            // Host value
            if(hostmsgproc){
                if(rxindex < hostmsgproc->datalen){
                    rxdata[rxindex++] = c;
                } else {
                    // Value too long
                    ESP_LOGW(TAG, "Host msg %02x value too long", hostmsgproc->msgid);
                    hostmsgproc = NULL;
                }
            }
            fluke_putc(c);  // Writeback as ack
        }
    } else {
        ESP_LOGW(TAG, "Unknown datum %02x", c);
        fluke_putc(c);
    }
end:
    xSemaphoreGive(feedmutex);
}

#define BUF_SIZE (256)
static void fluke_task(void *arg)
{
    uart_config_t uart_config = {
        .baud_rate  = UART_BAUD_RATE,
        .data_bits  = UART_DATA_8_BITS,
        .parity     = UART_PARITY_DISABLE,
        .stop_bits  = UART_STOP_BITS_2,
        .flow_ctrl  = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_DEFAULT
    };
  
    // Required to acheve 100sp/s rate
    int intr_alloc_flags = ESP_INTR_FLAG_IRAM;

    QueueHandle_t uart_queue;

    ESP_ERROR_CHECK(uart_driver_install(UART_PORT_NUM, BUF_SIZE * 2, BUF_SIZE * 2, 3, &uart_queue, intr_alloc_flags));
    ESP_ERROR_CHECK(uart_param_config(UART_PORT_NUM, &uart_config));
    ESP_ERROR_CHECK(uart_set_pin(UART_PORT_NUM, UART_TXD, UART_RXD, UART_RTS, UART_CTS));
    // Required to acheve 100sp/s rate
    ESP_ERROR_CHECK(uart_enable_rx_intr(UART_PORT_NUM));
    ESP_ERROR_CHECK(uart_set_rx_full_threshold(UART_PORT_NUM, 1));

    uint8_t *readbuf = (uint8_t*) malloc(BUF_SIZE);
    uart_event_t event;
    while(1){
        if(xQueueReceive(uart_queue, (void *)&event, (TickType_t)portMAX_DELAY)){
            switch (event.type){
            case UART_DATA:
                int len = uart_read_bytes(UART_PORT_NUM, readbuf, event.size, portMAX_DELAY);
                for (int i = 0; i < len; i++){
#ifdef DUMP
                    ESP_LOGI(TAG, "Read:  %02x", readbuf[i]);
#endif
                    fluke_feed(readbuf[i]);
                }
                break;
            case UART_FIFO_OVF:
                ESP_LOGI(TAG, "UART_FIFO_OVF");
                uart_flush_input(UART_PORT_NUM);
                xQueueReset(uart_queue);
                break;
            case UART_BUFFER_FULL:
                ESP_LOGI(TAG, "UART_BUFFER_FULL");
                uart_flush_input(UART_PORT_NUM);
                xQueueReset(uart_queue);
                break;
            case UART_BREAK:
                ESP_LOGI(TAG, "UART_BREAK");
                uart_flush_input(UART_PORT_NUM);
                xQueueReset(uart_queue);
                break;
            case UART_PARITY_ERR:
                ESP_LOGI(TAG, "UART_PARITY_ERR");
                break;
            case UART_FRAME_ERR:
                ESP_LOGI(TAG, "UART_FRAME_ERR");
                break;
            case UART_PATTERN_DET:
                ESP_LOGI(TAG, "UART_PATTERN_DET");
                uart_flush_input(UART_PORT_NUM);
                xQueueReset(uart_queue);
                break;
            default:
                ESP_LOGI(TAG, "uart event type: %d", event.type);
                break;
            }
        }
    }
}

////////////////////////////////////////////////
// Public functions

// Init must run at first stage of startup, otherwise fluke does not recognize card.
// see esp-idf document to improve startup time.
// https://docs.espressif.com/projects/esp-techpedia/en/latest/esp-friends/advanced-development/performance/reduce-boot-time.html
esp_err_t fluke_init(int queue_size, QueueHandle_t* queue)
{
    ESP_LOGI(TAG, "fluke_setup");
    rxqueue = xQueueCreate(queue_size, sizeof(fluke_event_t));
    if(rxqueue == NULL){
        ESP_LOGE(TAG, "xQueueCreate failed");
        return ESP_FAIL;
    }
    *queue = rxqueue;

    txmutex = xSemaphoreCreateBinary();
    if(txmutex == NULL){
        ESP_LOGE(TAG, "xSemaphoreCreateBinary failed");
        return ESP_FAIL;
    }
    xSemaphoreGive(txmutex);
  
    feedmutex = xSemaphoreCreateBinary();
    if(feedmutex == NULL){
        ESP_LOGE(TAG, "xSemaphoreCreateBinary failed");
        return ESP_FAIL;
    }
    xSemaphoreGive(feedmutex);

    BaseType_t ret = xTaskCreate(fluke_task, "fluke_task", TASK_STACK_SIZE, NULL, TASK_PRIO, NULL);
    if(ret != pdPASS){
        ESP_LOGE(TAG, "xTaskCreate failed");
        return ESP_FAIL;
    }
    return ESP_OK;
}

// Set model
void fluke_setmodel(bool is8840a_)
{
    is8840a = is8840a_;
}

// Set Func/Range/Speed/Trigger
void fluke_setfrst(fluke_func_t func, fluke_range_t range, fluke_speed_t speed, fluke_trig_t trig)
{
    if(!registered) return;
    func = func < FUNC_OVER ? func : FUNC_RETAIN;
    range = range < RANGE_OVER ? range : RANGE_RETAIN;
    speed = speed < SPEED_OVER ? speed : SPEED_RETAIN;
    trig = trig < TRIG_OVER ? trig : TRIG_RETAIN;
    ESP_LOGI(TAG, "fluke_setfrst func=%d, range=%d, speed=%d, trig=%d", func, range, speed, trig);
    xSemaphoreTake(txmutex, portMAX_DELAY);
    // Local control is locked when in GENUINE behavior, we discard it
    //cardmsg_45(5);  // 0x1 REMOTE | 0x4 LISTEN
    //cardmsg_45(1);  // 0x1 REMOTE
    cardmsg_cb(func, range, speed, trig);
    xSemaphoreGive(txmutex);
    fluke_invoketx();
}

// Tell fluke to report current config, fluke will respond msg 0xE5
void fluke_tellconfig(void)
{
    if(!registered) return;
    ESP_LOGI(TAG, "fluke_tellconfig");
    xSemaphoreTake(txmutex, portMAX_DELAY);
    //cardmsg_45(5);
    //cardmsg_45(1);
    cardmsg_49();
    xSemaphoreGive(txmutex);
    fluke_invoketx();
}

// Single trigger
void fluke_trig(void)
{
    if(!registered) return;
    ESP_LOGI(TAG, "fluke_trig");
    xSemaphoreTake(txmutex, portMAX_DELAY);
    //cardmsg_45(5);
    cardmsg_c1();
    //cardmsg_45(1);
    xSemaphoreGive(txmutex);
    fluke_invoketx();
}

// Offset ON/OFF
void fluke_offset(bool on)
{
    if(!registered) return;
    ESP_LOGI(TAG, "fluke_offset %s", on ? "ON":"OFF");
    xSemaphoreTake(txmutex, portMAX_DELAY);
    //cardmsg_45(5);
    //cardmsg_45(1);
    cardmsg_c4(on ? 1 : 0);
    xSemaphoreGive(txmutex);
    fluke_invoketx();
}

// Go to local (Allow panel control)
void fluke_gotolocal()
{
    if(!registered) return;
    ESP_LOGI(TAG, "fluke_gotolocal");
    xSemaphoreTake(txmutex, portMAX_DELAY);
    //cardmsg_45(5);
    //cardmsg_45(0);
    annunciator &= ~ANNUN_REMOTE;
    cardmsg_45(annunciator);
    xSemaphoreGive(txmutex);
    fluke_invoketx();
}

// Start selftest
void fluke_seleftest()
{
    if(!registered) return;
    ESP_LOGI(TAG, "fluke_seleftest");
    xSemaphoreTake(txmutex, portMAX_DELAY);
    //cardmsg_45(5);
    //cardmsg_45(1);
    cardmsg_43(0xC, 1, 0, 1);
    xSemaphoreGive(txmutex);
    fluke_invoketx();
}

// Set init-state, further investigation needed
void fluke_initstate(void)
{
    if(!registered) return;
    ESP_LOGI(TAG, "fluke_initstate");
    xSemaphoreTake(txmutex, portMAX_DELAY);
    //cardmsg_45(5);
    cardmsg_cb(1, 1, 1, 1); // DCV, AUTO, SLOW, INT
    cardmsg_c4(0);          // Offset off
    cardmsg_43(8, 0, 1, 0); // Disp on
    //cardmsg_45(1);
    xSemaphoreGive(txmutex);
    fluke_invoketx();
}

// Only numeric part is off, almost useless ...
void fluke_display(bool on)
{
    if(!registered) return;
    ESP_LOGI(TAG, "fluke_display %s", on ? "on":"off");
    xSemaphoreTake(txmutex, portMAX_DELAY);
    //cardmsg_45(5);
    //cardmsg_45(1);
    if(on){
        cardmsg_43(8, 0, 0, 1);
    } else {
        cardmsg_43(8, 1, 0, 1);
    }
    xSemaphoreGive(txmutex);
    fluke_invoketx();
}

// Get lsb of func/range
// range uses set-value (Note: fluke reports -1 from set-value), investigation needed
// ESP32 has float (not double) fpu, float preferred
const fluke_auxinfo_t *fluke_auxinfo(fluke_func_t func, fluke_range_t range)
{
    static const fluke_auxinfo_t invalid = {0.0, 0, "-", "-", "-"};
    static const fluke_auxinfo_t table[6][7] = {
        // range=2                  range=3                    range=4                  range=5                   range=6                     range=7                     range=8
        {{1E-7,7,"DCV","V","20mV"},{1E-6,6,"DCV","V","200mV"},{1E-5,5,"DCV","V","2V"}, {1E-4,4,"DCV","V","20V"}, {1E-3,3,"DCV","V","200V"},  {1E-2,2,"DCV","V","1000V"},  invalid                },  // func=1(DCV), unit V
        { invalid,                 {1E-6,6,"ACV","V","200mV"},{1E-5,5,"ACV","V","2V"}, {1E-4,4,"ACV","V","20V"}, {1E-3,3,"ACV","V","200V"},  {1E-2,2,"ACV","V","750V"},   invalid                },  // func=2(ACV), unit V
        { invalid,                 {1E-3,3,"R2W","R","200R"}, {1E-2,2,"R2W","R","2kR"},{1E-1,1,"R2W","R","20kR"},{1E0, 0,"R2W","R","200kR"}, {1E1, 0,"R2W","R","2000kR"},{1E2,0,"R2W","R","20MR"}},  // func=3(R2W), unit R
        {{1E-4,4,"R4W","R","20R"}, {1E-3,3,"R4W","R","200R"}, {1E-2,2,"R4W","R","2kR"},{1E-1,1,"R4W","R","20kR"},{1E0, 0,"R4W","R","200kR"}, {1E1, 0,"R4W","R","2000kR"},{1E2,0,"R4W","R","20MR"}},  // func=4(R2W), unit R
        { invalid,                  invalid,                   invalid,                 invalid,                 {1E-6,6,"DCA","A", "200mA"},{1E-5,5,"DCA","A", "2000mA"},invalid                },  // func=5(DCmA), unit A
        { invalid,                  invalid,                   invalid,                 invalid,                  invalid,                   {1E-5,5,"ACA","A", "2000mA"},invalid                }   // func=6(ACmA), unit A
    };
    if(func < FUNC_DCV || func > FUNC_ACMA) return &invalid;
    if(range < RANGE_20MV || range > RANGE_20MR) return &invalid;
    return &table[func -1][range -2];
}

// Annunciator
// Set REMOTE disable panel control
void fluke_annun(fluke_annun_t which, bool on)
{
    if(on){
        annunciator |= which;
    } else {
        annunciator &= ~which;
    }
    if(!registered) return;
    xSemaphoreTake(txmutex, portMAX_DELAY);
    cardmsg_45(annunciator);
    xSemaphoreGive(txmutex);
    fluke_invoketx();
}

// Dump last 16 bytes (for debug)
void fluke_dumplast(FILE *fp)
{
    if(fp == NULL) fp = stdout;
    fprintf(fp, "Dump rxlast: ");
    for(int i=rxcount; i<rxcount + sizeof(rxlast); i++){
        fprintf(fp, "%02x ", rxlast[i%sizeof(rxlast)]);
    }
    fprintf(fp, " rxcount=%d\n", rxcount);
    fprintf(fp, "Dump txlast: ");
    for(int i=txcount; i<txcount + sizeof(txlast); i++){
        fprintf(fp, "%02x ", txlast[i%sizeof(txlast)]);
    }
    fprintf(fp, " txcount=%d\n", txcount);
}

// Print message counter (for debug)
void fluke_msgcount(FILE *fp)
{
    if(fp == NULL) fp = stdout;
    for(int i=0; i<ARRAY_LENGTH(hostmsgprocs); i++){
        fprintf(fp, "Msg %02x Count=%d\n", hostmsgprocs[i].msgid, hostmsgprocs[i].count);
    }
    fprintf(fp, "Unknown msg Count=%d\n", unknown_hostmsg_count);
}
