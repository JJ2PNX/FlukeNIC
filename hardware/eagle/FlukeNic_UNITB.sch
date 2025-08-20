<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="no" active="no"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A3L-LOC">
<wire x1="288.29" y1="3.81" x2="342.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="342.265" y1="3.81" x2="373.38" y2="3.81" width="0.1016" layer="94"/>
<wire x1="373.38" y1="3.81" x2="383.54" y2="3.81" width="0.1016" layer="94"/>
<wire x1="383.54" y1="3.81" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="383.54" y1="8.89" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="383.54" y1="13.97" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="383.54" y1="19.05" x2="383.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="288.29" y1="3.81" x2="288.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="288.29" y1="24.13" x2="342.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="342.265" y1="24.13" x2="383.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="373.38" y1="3.81" x2="373.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="373.38" y1="8.89" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="373.38" y1="8.89" x2="342.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="342.265" y1="8.89" x2="342.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="342.265" y1="8.89" x2="342.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="342.265" y1="13.97" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="342.265" y1="13.97" x2="342.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="342.265" y1="19.05" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="342.265" y1="19.05" x2="342.265" y2="24.13" width="0.1016" layer="94"/>
<text x="344.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="344.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="357.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="343.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="387.35" y2="260.35" columns="8" rows="5" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A3L-LOC" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A3, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A3L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ESP32">
<packages>
<package name="ESP32-WROOM">
<smd name="IO12" x="0" y="1.5" dx="3" dy="0.9" layer="1"/>
<smd name="IO0" x="18" y="1.5" dx="3" dy="0.9" layer="1"/>
<smd name="GND2" x="3.285" y="0" dx="3" dy="0.9" layer="1" rot="R90"/>
<smd name="IO13" x="4.555" y="0" dx="3" dy="0.9" layer="1" rot="R90"/>
<smd name="SD2" x="5.825" y="0" dx="3" dy="0.9" layer="1" rot="R90"/>
<smd name="SD3" x="7.095" y="0" dx="3" dy="0.9" layer="1" rot="R90"/>
<smd name="CMD" x="8.365" y="0" dx="3" dy="0.9" layer="1" rot="R90"/>
<smd name="CLK" x="9.635" y="0" dx="3" dy="0.9" layer="1" rot="R90"/>
<smd name="SD0" x="10.905" y="0" dx="3" dy="0.9" layer="1" rot="R90"/>
<smd name="SD1" x="12.175" y="0" dx="3" dy="0.9" layer="1" rot="R90"/>
<smd name="IO15" x="13.445" y="0" dx="3" dy="0.9" layer="1" rot="R90"/>
<smd name="IO2" x="14.715" y="0" dx="3" dy="0.9" layer="1" rot="R90"/>
<smd name="IO14" x="0" y="2.77" dx="3" dy="0.9" layer="1"/>
<smd name="IO27" x="0" y="4.04" dx="3" dy="0.9" layer="1"/>
<smd name="IO26" x="0" y="5.31" dx="3" dy="0.9" layer="1"/>
<smd name="IO25" x="0" y="6.58" dx="3" dy="0.9" layer="1"/>
<smd name="IO33" x="0" y="7.85" dx="3" dy="0.9" layer="1"/>
<smd name="IO32" x="0" y="9.12" dx="3" dy="0.9" layer="1"/>
<smd name="IO35" x="0" y="10.39" dx="3" dy="0.9" layer="1"/>
<smd name="IO34" x="0" y="11.66" dx="3" dy="0.9" layer="1"/>
<smd name="SENSOR_VN" x="0" y="12.93" dx="3" dy="0.9" layer="1"/>
<smd name="SENSOR_VP" x="0" y="14.2" dx="3" dy="0.9" layer="1"/>
<smd name="EN" x="0" y="15.47" dx="3" dy="0.9" layer="1"/>
<smd name="3V3" x="0" y="16.74" dx="3" dy="0.9" layer="1"/>
<smd name="GND1" x="0" y="18.01" dx="3" dy="0.9" layer="1"/>
<smd name="IO4" x="18" y="2.77" dx="3" dy="0.9" layer="1"/>
<smd name="IO16" x="18" y="4.04" dx="3" dy="0.9" layer="1"/>
<smd name="IO17" x="18" y="5.31" dx="3" dy="0.9" layer="1"/>
<smd name="IO5" x="18" y="6.58" dx="3" dy="0.9" layer="1"/>
<smd name="IO18" x="18" y="7.85" dx="3" dy="0.9" layer="1"/>
<smd name="IO19" x="18" y="9.12" dx="3" dy="0.9" layer="1"/>
<smd name="NC" x="18" y="10.39" dx="3" dy="0.9" layer="1"/>
<smd name="IO21" x="18" y="11.66" dx="3" dy="0.9" layer="1"/>
<smd name="RX" x="18" y="12.93" dx="3" dy="0.9" layer="1"/>
<smd name="TX" x="18" y="14.2" dx="3" dy="0.9" layer="1"/>
<smd name="IO22" x="18" y="15.47" dx="3" dy="0.9" layer="1"/>
<smd name="IO23" x="18" y="16.74" dx="3" dy="0.9" layer="1"/>
<smd name="GND3" x="18" y="18.01" dx="3" dy="0.9" layer="1"/>
<wire x1="0" y1="0" x2="18" y2="0" width="0.127" layer="21"/>
<wire x1="18" y1="0" x2="18" y2="19.2" width="0.127" layer="21"/>
<wire x1="18" y1="19.2" x2="18" y2="25.5" width="0.127" layer="21"/>
<wire x1="18" y1="25.5" x2="0" y2="25.5" width="0.127" layer="21"/>
<wire x1="0" y1="25.5" x2="0" y2="19.2" width="0.127" layer="21"/>
<wire x1="0" y1="19.2" x2="0" y2="0" width="0.127" layer="21"/>
<wire x1="0" y1="19.2" x2="18" y2="19.2" width="0.127" layer="21"/>
<smd name="GND4" x="8" y="10.5" dx="5" dy="5" layer="1"/>
<text x="9" y="18" size="1.0668" layer="21" align="center">ESP32-WROOM-32</text>
<wire x1="16.51" y1="20.0025" x2="16.51" y2="24.13" width="0.8128" layer="21"/>
<wire x1="16.51" y1="24.13" x2="13.97" y2="24.13" width="0.8128" layer="21"/>
<wire x1="13.97" y1="24.13" x2="13.97" y2="20.0025" width="0.8128" layer="21"/>
<wire x1="13.97" y1="24.13" x2="11.43" y2="24.13" width="0.8128" layer="21"/>
<wire x1="11.43" y1="24.13" x2="11.43" y2="21.59" width="0.8128" layer="21"/>
<wire x1="11.43" y1="21.59" x2="8.89" y2="21.59" width="0.8128" layer="21"/>
<wire x1="8.89" y1="21.59" x2="8.89" y2="24.13" width="0.8128" layer="21"/>
<wire x1="8.89" y1="24.13" x2="6.35" y2="24.13" width="0.8128" layer="21"/>
<wire x1="6.35" y1="24.13" x2="6.35" y2="21.59" width="0.8128" layer="21"/>
<wire x1="6.35" y1="21.59" x2="3.81" y2="21.59" width="0.8128" layer="21"/>
<wire x1="3.81" y1="21.59" x2="3.81" y2="24.13" width="0.8128" layer="21"/>
<wire x1="3.81" y1="24.13" x2="1.27" y2="24.13" width="0.8128" layer="21"/>
<wire x1="1.27" y1="24.13" x2="1.27" y2="20.701" width="0.8128" layer="21"/>
<rectangle x1="-0.5" y1="19" x2="18.5" y2="26" layer="42"/>
<rectangle x1="-0.5" y1="19" x2="18.5" y2="26" layer="41"/>
</package>
</packages>
<symbols>
<symbol name="ESP32_WROOM">
<pin name="GND4" x="0" y="2.54" visible="pin" length="short"/>
<pin name="GPIO11" x="0" y="5.08" visible="pin" length="short"/>
<pin name="GPIO10" x="0" y="7.62" visible="pin" length="short"/>
<pin name="GPIO9" x="0" y="10.16" visible="pin" length="short"/>
<pin name="GPIO13" x="0" y="12.7" visible="pin" length="short"/>
<pin name="GND1" x="0" y="15.24" visible="pin" length="short"/>
<pin name="GPIO12" x="0" y="17.78" visible="pin" length="short"/>
<pin name="GPIO14" x="0" y="20.32" visible="pin" length="short"/>
<pin name="GPIO27" x="0" y="22.86" visible="pin" length="short"/>
<pin name="GPIO26" x="0" y="25.4" visible="pin" length="short"/>
<pin name="GPIO25" x="0" y="27.94" visible="pin" length="short"/>
<pin name="GPIO33" x="0" y="30.48" visible="pin" length="short"/>
<pin name="GPIO32" x="0" y="33.02" visible="pin" length="short"/>
<pin name="GPIO35" x="0" y="35.56" visible="pin" length="short"/>
<pin name="GPIO34" x="0" y="38.1" visible="pin" length="short"/>
<pin name="GPIO39" x="0" y="40.64" visible="pin" length="short"/>
<pin name="GPIO36" x="0" y="43.18" visible="pin" length="short"/>
<pin name="EN" x="0" y="45.72" visible="pin" length="short"/>
<pin name="3.3V" x="0" y="48.26" visible="pin" length="short"/>
<pin name="GPIO6" x="30.48" y="2.54" visible="pin" length="short" rot="R180"/>
<pin name="GPIO7" x="30.48" y="5.08" visible="pin" length="short" rot="R180"/>
<pin name="GPIO8" x="30.48" y="7.62" visible="pin" length="short" rot="R180"/>
<pin name="GPIO15" x="30.48" y="10.16" visible="pin" length="short" rot="R180"/>
<pin name="GPIO2" x="30.48" y="12.7" visible="pin" length="short" rot="R180"/>
<pin name="GPIO0" x="30.48" y="15.24" visible="pin" length="short" rot="R180"/>
<pin name="GPIO4" x="30.48" y="17.78" visible="pin" length="short" rot="R180"/>
<pin name="GPIO16" x="30.48" y="20.32" visible="pin" length="short" rot="R180"/>
<pin name="GPIO17" x="30.48" y="22.86" visible="pin" length="short" rot="R180"/>
<pin name="GPIO5" x="30.48" y="25.4" visible="pin" length="short" rot="R180"/>
<pin name="GPIO18" x="30.48" y="27.94" visible="pin" length="short" rot="R180"/>
<pin name="GPIO19" x="30.48" y="30.48" visible="pin" length="short" rot="R180"/>
<pin name="GND3" x="30.48" y="33.02" visible="pin" length="short" rot="R180"/>
<pin name="GPIO21" x="30.48" y="35.56" visible="pin" length="short" rot="R180"/>
<pin name="RX" x="30.48" y="38.1" visible="pin" length="short" rot="R180"/>
<pin name="TX" x="30.48" y="40.64" visible="pin" length="short" rot="R180"/>
<pin name="GPIO22" x="30.48" y="43.18" visible="pin" length="short" rot="R180"/>
<pin name="GPIO23" x="30.48" y="45.72" visible="pin" length="short" rot="R180"/>
<pin name="GND2" x="30.48" y="48.26" visible="pin" length="short" rot="R180"/>
<wire x1="2.54" y1="0" x2="2.54" y2="50.8" width="0.254" layer="94"/>
<wire x1="2.54" y1="50.8" x2="27.94" y2="50.8" width="0.254" layer="94"/>
<wire x1="27.94" y1="50.8" x2="27.94" y2="0" width="0.254" layer="94"/>
<wire x1="27.94" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<text x="3.81" y="-2.54" size="1.778" layer="94">ESP32</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32-WROOM">
<gates>
<gate name="G$1" symbol="ESP32_WROOM" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="ESP32-WROOM">
<connects>
<connect gate="G$1" pin="3.3V" pad="3V3"/>
<connect gate="G$1" pin="EN" pad="EN"/>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="GND2" pad="GND2"/>
<connect gate="G$1" pin="GND3" pad="GND3"/>
<connect gate="G$1" pin="GND4" pad="GND4"/>
<connect gate="G$1" pin="GPIO0" pad="IO0"/>
<connect gate="G$1" pin="GPIO10" pad="SD3"/>
<connect gate="G$1" pin="GPIO11" pad="CMD"/>
<connect gate="G$1" pin="GPIO12" pad="IO12"/>
<connect gate="G$1" pin="GPIO13" pad="IO13"/>
<connect gate="G$1" pin="GPIO14" pad="IO14"/>
<connect gate="G$1" pin="GPIO15" pad="IO15"/>
<connect gate="G$1" pin="GPIO16" pad="IO16"/>
<connect gate="G$1" pin="GPIO17" pad="IO17"/>
<connect gate="G$1" pin="GPIO18" pad="IO18"/>
<connect gate="G$1" pin="GPIO19" pad="IO19"/>
<connect gate="G$1" pin="GPIO2" pad="IO2"/>
<connect gate="G$1" pin="GPIO21" pad="IO21"/>
<connect gate="G$1" pin="GPIO22" pad="IO22"/>
<connect gate="G$1" pin="GPIO23" pad="IO23"/>
<connect gate="G$1" pin="GPIO25" pad="IO25"/>
<connect gate="G$1" pin="GPIO26" pad="IO26"/>
<connect gate="G$1" pin="GPIO27" pad="IO27"/>
<connect gate="G$1" pin="GPIO32" pad="IO32"/>
<connect gate="G$1" pin="GPIO33" pad="IO33"/>
<connect gate="G$1" pin="GPIO34" pad="IO34"/>
<connect gate="G$1" pin="GPIO35" pad="IO35"/>
<connect gate="G$1" pin="GPIO36" pad="SENSOR_VP"/>
<connect gate="G$1" pin="GPIO39" pad="SENSOR_VN"/>
<connect gate="G$1" pin="GPIO4" pad="IO4"/>
<connect gate="G$1" pin="GPIO5" pad="IO5"/>
<connect gate="G$1" pin="GPIO6" pad="CLK"/>
<connect gate="G$1" pin="GPIO7" pad="SD0"/>
<connect gate="G$1" pin="GPIO8" pad="SD1"/>
<connect gate="G$1" pin="GPIO9" pad="SD2"/>
<connect gate="G$1" pin="RX" pad="RX"/>
<connect gate="G$1" pin="TX" pad="TX"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="FlukeNic">
<packages>
<package name="R_0.125W_2">
<wire x1="-3.5" y1="1" x2="3.5" y2="1" width="0.254" layer="21"/>
<wire x1="3.5" y1="1" x2="3.5" y2="-1" width="0.254" layer="21"/>
<wire x1="3.5" y1="-1" x2="-3.5" y2="-1" width="0.254" layer="21"/>
<wire x1="-3.5" y1="-1" x2="-3.5" y2="1" width="0.254" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1"/>
<pad name="2" x="2.54" y="0" drill="1"/>
<text x="-2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R_0.25W_5">
<wire x1="-7.366" y1="1.27" x2="7.366" y2="1.27" width="0.254" layer="21"/>
<wire x1="7.366" y1="1.27" x2="7.366" y2="-1.27" width="0.254" layer="21"/>
<wire x1="7.366" y1="-1.27" x2="-7.366" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-7.366" y1="-1.27" x2="-7.366" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1"/>
<pad name="2" x="6.35" y="0" drill="1"/>
<text x="-6.35" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="0" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R_0.5W_5">
<wire x1="-7.366" y1="1.778" x2="7.366" y2="1.778" width="0.254" layer="21"/>
<wire x1="7.366" y1="1.778" x2="7.366" y2="-1.778" width="0.254" layer="21"/>
<wire x1="7.366" y1="-1.778" x2="-7.366" y2="-1.778" width="0.254" layer="21"/>
<wire x1="-7.366" y1="-1.778" x2="-7.366" y2="1.778" width="0.254" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1.1"/>
<pad name="2" x="6.35" y="0" drill="1.1"/>
<text x="-6.35" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="0" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R_0.125W_1">
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.254" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.254" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1"/>
<pad name="2" x="1.27" y="0" drill="1"/>
<text x="-2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R_0.125W_4">
<wire x1="-6.04" y1="1" x2="6.04" y2="1" width="0.254" layer="21"/>
<wire x1="6.04" y1="1" x2="6.04" y2="-1" width="0.254" layer="21"/>
<wire x1="6.04" y1="-1" x2="-6.04" y2="-1" width="0.254" layer="21"/>
<wire x1="-6.04" y1="-1" x2="-6.04" y2="1" width="0.254" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1"/>
<pad name="2" x="5.08" y="0" drill="1"/>
<text x="-2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R_0.25W_4">
<wire x1="-6.096" y1="1.27" x2="6.096" y2="1.27" width="0.254" layer="21"/>
<wire x1="6.096" y1="1.27" x2="6.096" y2="-1.27" width="0.254" layer="21"/>
<wire x1="6.096" y1="-1.27" x2="-6.096" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-6.096" y1="-1.27" x2="-6.096" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1"/>
<pad name="2" x="5.08" y="0" drill="1"/>
<text x="-6.35" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="0" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R_3W_7">
<wire x1="-7.5" y1="3" x2="-4.5" y2="3" width="0.254" layer="21"/>
<wire x1="4.5" y1="3" x2="7.5" y2="3" width="0.254" layer="21"/>
<wire x1="-7.5" y1="3" x2="-7.5" y2="-3" width="0.254" layer="21"/>
<wire x1="-4.5" y1="2.5" x2="4.5" y2="2.5" width="0.254" layer="21"/>
<wire x1="-7.5" y1="-3" x2="-4.5" y2="-3" width="0.254" layer="21"/>
<wire x1="-4.5" y1="3" x2="-4.5" y2="2.5" width="0.254" layer="21"/>
<wire x1="-4.5" y1="2.5" x2="-4.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-4.5" y1="-2.5" x2="-4.5" y2="-3" width="0.254" layer="21"/>
<wire x1="4.5" y1="3" x2="4.5" y2="2.5" width="0.254" layer="21"/>
<wire x1="4.5" y1="2.5" x2="4.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="4.5" y1="-2.5" x2="4.5" y2="-3" width="0.254" layer="21"/>
<wire x1="4.5" y1="-3" x2="7.5" y2="-3" width="0.254" layer="21"/>
<wire x1="7.5" y1="3" x2="7.5" y2="-3" width="0.254" layer="21"/>
<wire x1="-4.5" y1="-2.5" x2="4.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-7.62" y1="0" x2="-8.89" y2="0" width="0.254" layer="27"/>
<wire x1="7.62" y1="0" x2="8.89" y2="0" width="0.254" layer="27"/>
<pad name="2" x="8.89" y="0" drill="1.3"/>
<pad name="1" x="-8.89" y="0" drill="1.3"/>
<text x="-3.81" y="0" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R_3W_7_STACK">
<wire x1="-7.5" y1="3" x2="-4.5" y2="3" width="0.254" layer="21" style="shortdash"/>
<wire x1="4.5" y1="3" x2="7.5" y2="3" width="0.254" layer="21" style="shortdash"/>
<wire x1="-7.5" y1="3" x2="-7.5" y2="-3" width="0.254" layer="21" style="shortdash"/>
<wire x1="-4.5" y1="2.5" x2="4.5" y2="2.5" width="0.254" layer="21" style="shortdash"/>
<wire x1="-7.5" y1="-3" x2="-4.5" y2="-3" width="0.254" layer="21" style="shortdash"/>
<wire x1="-4.5" y1="3" x2="-4.5" y2="2.5" width="0.254" layer="21"/>
<wire x1="-4.5" y1="-2.5" x2="-4.5" y2="-3" width="0.254" layer="21"/>
<wire x1="4.5" y1="3" x2="4.5" y2="2.5" width="0.254" layer="21"/>
<wire x1="4.5" y1="-2.5" x2="4.5" y2="-3" width="0.254" layer="21"/>
<wire x1="4.5" y1="-3" x2="7.5" y2="-3" width="0.254" layer="21" style="shortdash"/>
<wire x1="7.5" y1="3" x2="7.5" y2="-3" width="0.254" layer="21" style="shortdash"/>
<wire x1="-4.5" y1="-2.5" x2="4.5" y2="-2.5" width="0.254" layer="21" style="shortdash"/>
<wire x1="-7.62" y1="0" x2="-8.89" y2="0" width="0.254" layer="27"/>
<wire x1="7.62" y1="0" x2="8.89" y2="0" width="0.254" layer="27"/>
<circle x="-8.89" y="0" radius="1.1359" width="0.254" layer="21"/>
<circle x="8.89" y="0" radius="1.1359" width="0.254" layer="21"/>
<pad name="2" x="8.89" y="0" drill="1.3"/>
<pad name="1" x="-8.89" y="0" drill="1.3"/>
<text x="-3.81" y="0" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R6332">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R2012">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R3216">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="DM3AT-SF-PEJM5">
<smd name="1" x="0" y="0.6" dx="0.7" dy="1.2" layer="1"/>
<smd name="2" x="-1.1" y="0.6" dx="0.7" dy="1.2" layer="1"/>
<smd name="3" x="-2.2" y="0.6" dx="0.7" dy="1.2" layer="1"/>
<smd name="4" x="-3.3" y="0.6" dx="0.7" dy="1.2" layer="1"/>
<smd name="5" x="-4.4" y="0.6" dx="0.7" dy="1.2" layer="1"/>
<smd name="6" x="-5.5" y="0.6" dx="0.7" dy="1.2" layer="1"/>
<smd name="7" x="-6.6" y="0.6" dx="0.7" dy="1.2" layer="1"/>
<smd name="8" x="-7.7" y="0.6" dx="0.7" dy="1.2" layer="1"/>
<smd name="SWB" x="-8.65" y="0.6" dx="0.7" dy="1.2" layer="1"/>
<smd name="S1" x="1.55" y="0.6" dx="1" dy="1.2" layer="1"/>
<smd name="S2" x="-9.6" y="-3.7" dx="1" dy="1.2" layer="1"/>
<smd name="SWA" x="-9.6" y="-9.9" dx="1" dy="0.8" layer="1"/>
<smd name="S3" x="-9.6" y="-14" dx="1" dy="2.8" layer="1"/>
<smd name="S4" x="3.9" y="-14.5" dx="1.3" dy="1.9" layer="1"/>
<rectangle x1="-10" y1="-3.1" x2="-9.25" y2="0.15" layer="41"/>
<rectangle x1="-10" y1="-7.9" x2="-9.25" y2="-4.3" layer="41"/>
<rectangle x1="-8.2" y1="-6" x2="0.5" y2="-4.4" layer="41"/>
<rectangle x1="-8.9" y1="-13.3" x2="-8.2" y2="-5.7" layer="41"/>
<rectangle x1="0.15" y1="-15.45" x2="2.7" y2="-14.1" layer="41"/>
<wire x1="-9.7" y1="-15.95" x2="-8.7" y2="-15.95" width="0" layer="51"/>
<wire x1="-8.7" y1="-15.95" x2="2.3" y2="-15.95" width="0" layer="51"/>
<wire x1="2.3" y1="-15.95" x2="4.15" y2="-15.95" width="0" layer="51"/>
<wire x1="-9.7" y1="1.2" x2="4.15" y2="1.2" width="0" layer="51"/>
<wire x1="4.15" y1="1.2" x2="4.15" y2="-15.95" width="0" layer="51"/>
<wire x1="-9.7" y1="1.2" x2="-9.7" y2="-15.95" width="0" layer="51"/>
<wire x1="-8.4" y1="-16.75" x2="2" y2="-16.75" width="0" layer="51"/>
<wire x1="-8.4" y1="-17.55" x2="2" y2="-17.55" width="0" layer="51"/>
<wire x1="2.3" y1="-15.95" x2="2.3" y2="-16.45" width="0" layer="51"/>
<wire x1="2.3" y1="-16.45" x2="2.3" y2="-17.25" width="0" layer="51"/>
<wire x1="-8.7" y1="-15.95" x2="-8.7" y2="-16.45" width="0" layer="51"/>
<wire x1="-8.7" y1="-16.45" x2="-8.7" y2="-17.25" width="0" layer="51"/>
<wire x1="-8.7" y1="-16.45" x2="-8.4" y2="-16.75" width="0" layer="51" curve="90"/>
<wire x1="2.3" y1="-16.45" x2="2" y2="-16.75" width="0" layer="51" curve="-90"/>
<wire x1="-8.7" y1="-17.25" x2="-8.4" y2="-17.55" width="0" layer="51" curve="90"/>
<wire x1="2.3" y1="-17.25" x2="2" y2="-17.55" width="0" layer="51" curve="-90"/>
<wire x1="-10.5" y1="1.6" x2="-10.5" y2="-15.8" width="0.254" layer="21"/>
<wire x1="-10.5" y1="1.6" x2="5" y2="1.6" width="0.254" layer="21"/>
<wire x1="5" y1="1.6" x2="5" y2="-15.8" width="0.254" layer="21"/>
<text x="-5" y="-3" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="5077CR-16-SMC2-BK-TR">
<smd name="A7" x="0.25" y="0.01" dx="0.3" dy="1.14" layer="1"/>
<smd name="A6" x="-0.25" y="0.01" dx="0.3" dy="1.14" layer="1"/>
<smd name="B6" x="0.75" y="0.01" dx="0.3" dy="1.14" layer="1"/>
<smd name="A8" x="1.25" y="0.01" dx="0.3" dy="1.14" layer="1"/>
<smd name="B5" x="1.75" y="0.01" dx="0.3" dy="1.14" layer="1"/>
<smd name="B7" x="-0.75" y="0.01" dx="0.3" dy="1.14" layer="1"/>
<smd name="A5" x="-1.25" y="0.01" dx="0.3" dy="1.14" layer="1"/>
<smd name="B8" x="-1.75" y="0.01" dx="0.3" dy="1.14" layer="1"/>
<wire x1="0.25" y1="-0.8" x2="0.25" y2="1.5" width="0" layer="51"/>
<wire x1="-0.25" y1="-0.8" x2="-0.25" y2="1.5" width="0" layer="51"/>
<wire x1="-0.75" y1="-0.8" x2="-0.75" y2="1.5" width="0" layer="51"/>
<wire x1="-1.25" y1="-0.8" x2="-1.25" y2="1.5" width="0" layer="51"/>
<wire x1="-1.75" y1="-0.8" x2="-1.75" y2="1.5" width="0" layer="51"/>
<wire x1="0.75" y1="-0.8" x2="0.75" y2="1.5" width="0" layer="51"/>
<wire x1="1.25" y1="-0.8" x2="1.25" y2="1.5" width="0" layer="51"/>
<wire x1="1.75" y1="-0.8" x2="1.75" y2="1.5" width="0" layer="51"/>
<wire x1="2.4" y1="1.8" x2="2.4" y2="-0.8" width="0" layer="51"/>
<wire x1="-2.4" y1="1.75" x2="-2.4" y2="-0.85" width="0" layer="51"/>
<wire x1="3.2" y1="2.15" x2="3.2" y2="-0.85" width="0" layer="51"/>
<wire x1="-3.2" y1="2.15" x2="-3.2" y2="-0.8" width="0" layer="51"/>
<smd name="B4A9" x="2.4" y="0.01" dx="0.6" dy="1.14" layer="1"/>
<smd name="B1A12" x="3.2" y="0.03" dx="0.6" dy="1.1" layer="1"/>
<smd name="A4B9" x="-2.4" y="0.01" dx="0.6" dy="1.14" layer="1"/>
<smd name="A1B12" x="-3.2" y="0.03" dx="0.6" dy="1.1" layer="1"/>
<wire x1="4.32" y1="2.34" x2="4.32" y2="-7.42" width="0" layer="51"/>
<wire x1="-4.32" y1="2.28" x2="-4.32" y2="-7.24" width="0" layer="51"/>
<wire x1="4.62" y1="1.6" x2="4.62" y2="-7.42" width="0" layer="51"/>
<wire x1="4.02" y1="1.6" x2="4.02" y2="-7.42" width="0" layer="51"/>
<wire x1="-4.02" y1="2.26" x2="-4.02" y2="-7.24" width="0" layer="51"/>
<wire x1="-4.62" y1="2.26" x2="-4.62" y2="-7.24" width="0" layer="51"/>
<wire x1="-4.84" y1="-4.74" x2="5.62" y2="-4.74" width="0" layer="51"/>
<wire x1="-4.84" y1="-4.04" x2="5.6" y2="-4.04" width="0" layer="51"/>
<wire x1="-4.84" y1="-5.44" x2="5.62" y2="-5.44" width="0" layer="51"/>
<wire x1="-4.7" y1="0.29" x2="4.91" y2="0.29" width="0" layer="51"/>
<wire x1="-4.69" y1="-1.41" x2="4.74" y2="-1.41" width="0" layer="51"/>
<wire x1="2.89" y1="-0.71" x2="2.89" y2="-3.12" width="0" layer="51"/>
<wire x1="-2.89" y1="-0.67" x2="-2.89" y2="-3.62" width="0" layer="51"/>
<wire x1="3.18" y1="-1.06" x2="-3.08" y2="-1.06" width="0" layer="51"/>
<hole x="-2.89" y="-1.06" drill="0.65"/>
<hole x="2.89" y="-1.06" drill="0.65"/>
<wire x1="-4.32" y1="-0.03" x2="-4.32" y2="-1.09" width="0.65" layer="46"/>
<wire x1="-4.32" y1="-4.35" x2="-4.32" y2="-5.13" width="0.65" layer="46"/>
<wire x1="4.32" y1="-0.03" x2="4.32" y2="-1.09" width="0.65" layer="46"/>
<wire x1="4.32" y1="-4.35" x2="4.32" y2="-5.13" width="0.65" layer="46"/>
<wire x1="5.26" y1="-7.34" x2="-6.47" y2="-7.34" width="0" layer="51"/>
<wire x1="-6.47" y1="-7.34" x2="-6.47" y2="-7.19" width="0" layer="51"/>
<wire x1="-5.2" y1="1" x2="-5.2" y2="-7.2" width="0.254" layer="21"/>
<wire x1="5.2" y1="1" x2="5.2" y2="-7.2" width="0.254" layer="21"/>
<wire x1="-5.2" y1="1" x2="5.2" y2="1" width="0.254" layer="21"/>
<text x="-2.7" y="-3.8" size="1.27" layer="25">&gt;NAME</text>
<wire x1="4.66" y1="0.58" x2="-5.4" y2="0.58" width="0" layer="51"/>
<wire x1="4.9" y1="-0.56" x2="-4.7" y2="-0.56" width="0" layer="51"/>
<wire x1="4.65" y1="1.6" x2="4.65" y2="-7.42" width="0" layer="51"/>
<wire x1="3.99" y1="-7.42" x2="3.99" y2="1.6" width="0" layer="51"/>
<wire x1="-3.99" y1="2.26" x2="-3.99" y2="-7.24" width="0" layer="51"/>
<wire x1="-4.65" y1="-7.24" x2="-4.65" y2="2.26" width="0" layer="51"/>
<pad name="S1" x="4.32" y="-0.56" drill="0.55" shape="long" rot="R90"/>
<pad name="S2" x="4.32" y="-4.74" drill="0.55" shape="long" rot="R90"/>
<pad name="S3" x="-4.32" y="-4.74" drill="0.55" shape="long" rot="R90"/>
<pad name="S4" x="-4.32" y="-0.56" drill="0.55" shape="long" rot="R90"/>
</package>
<package name="ESSOP10">
<smd name="8" x="2.75" y="0" dx="1.2" dy="0.5" layer="1"/>
<smd name="9" x="2.75" y="1" dx="1.2" dy="0.5" layer="1"/>
<smd name="10" x="2.75" y="2" dx="1.2" dy="0.5" layer="1"/>
<smd name="7" x="2.75" y="-1" dx="1.2" dy="0.5" layer="1"/>
<smd name="6" x="2.75" y="-2" dx="1.2" dy="0.5" layer="1"/>
<smd name="5" x="-2.75" y="-2" dx="1.2" dy="0.5" layer="1"/>
<smd name="4" x="-2.75" y="-1" dx="1.2" dy="0.5" layer="1"/>
<smd name="3" x="-2.75" y="0" dx="1.2" dy="0.5" layer="1"/>
<smd name="2" x="-2.75" y="1" dx="1.2" dy="0.5" layer="1"/>
<smd name="1" x="-2.75" y="2" dx="1.2" dy="0.5" layer="1"/>
<wire x1="-1.65" y1="2.45" x2="-1.65" y2="-2.45" width="0.2032" layer="21"/>
<wire x1="-1.65" y1="-2.45" x2="1.65" y2="-2.45" width="0.2032" layer="21"/>
<wire x1="1.65" y1="-2.45" x2="1.65" y2="2.45" width="0.2032" layer="21"/>
<wire x1="1.65" y1="2.45" x2="-1.65" y2="2.45" width="0.2032" layer="21"/>
<circle x="-0.95" y="1.75" radius="0.25" width="0.2032" layer="21"/>
<text x="-2.5" y="4.75" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.5" y="3.25" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<smd name="0" x="0" y="0" dx="3.4" dy="2.5" layer="1" rot="R90"/>
</package>
<package name="SOP20">
<description>&lt;b&gt;SMALL OUTLINE PACKAGE&lt;/b&gt;</description>
<wire x1="-6.9" y1="4.9" x2="6.9" y2="4.9" width="0.1998" layer="39"/>
<wire x1="6.9" y1="4.9" x2="6.9" y2="-4.9" width="0.1998" layer="39"/>
<wire x1="-6.9" y1="-4.9" x2="-6.9" y2="4.9" width="0.1998" layer="39"/>
<wire x1="6.88" y1="3.01" x2="6.88" y2="-3.01" width="0.2032" layer="51"/>
<wire x1="6.88" y1="-3.01" x2="-6.88" y2="-3.01" width="0.2032" layer="51"/>
<wire x1="-6.88" y1="-3.01" x2="-6.88" y2="3.01" width="0.2032" layer="51"/>
<wire x1="-6.88" y1="3.01" x2="6.88" y2="3.01" width="0.2032" layer="51"/>
<wire x1="6.9" y1="-4.9" x2="-6.9" y2="-4.9" width="0.1998" layer="39"/>
<smd name="1" x="-5.715" y="-3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="2" x="-4.445" y="-3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="3" x="-3.175" y="-3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="4" x="-1.905" y="-3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="5" x="-0.635" y="-3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="6" x="0.635" y="-3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="7" x="1.905" y="-3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="8" x="3.175" y="-3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="9" x="4.445" y="-3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="10" x="5.715" y="-3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="11" x="5.715" y="3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="12" x="4.445" y="3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="13" x="3.175" y="3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="14" x="1.905" y="3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="15" x="0.635" y="3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="16" x="-0.635" y="3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="17" x="-1.905" y="3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="18" x="-3.175" y="3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="19" x="-4.445" y="3.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="20" x="-5.715" y="3.6" dx="0.6" dy="2.2" layer="1"/>
<text x="-5.715" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.715" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<text x="-5.08" y="-2.54" size="1.27" layer="21" rot="R90">1</text>
<rectangle x1="-5.9649" y1="-4.4399" x2="-5.4651" y2="-3.11" layer="51"/>
<rectangle x1="-4.6949" y1="-4.4399" x2="-4.1951" y2="-3.11" layer="51"/>
<rectangle x1="-3.4249" y1="-4.4399" x2="-2.9251" y2="-3.11" layer="51"/>
<rectangle x1="-2.1549" y1="-4.4399" x2="-1.6551" y2="-3.11" layer="51"/>
<rectangle x1="-0.8849" y1="-4.4399" x2="-0.3851" y2="-3.11" layer="51"/>
<rectangle x1="0.3851" y1="-4.4399" x2="0.8849" y2="-3.11" layer="51"/>
<rectangle x1="1.6551" y1="-4.4399" x2="2.1549" y2="-3.11" layer="51"/>
<rectangle x1="2.9251" y1="-4.4399" x2="3.4249" y2="-3.11" layer="51"/>
<rectangle x1="4.1951" y1="-4.4399" x2="4.6949" y2="-3.11" layer="51"/>
<rectangle x1="5.4651" y1="-4.4399" x2="5.9649" y2="-3.11" layer="51"/>
<rectangle x1="5.4651" y1="3.11" x2="5.9649" y2="4.4399" layer="51"/>
<rectangle x1="4.1951" y1="3.11" x2="4.6949" y2="4.4399" layer="51"/>
<rectangle x1="2.9251" y1="3.11" x2="3.4249" y2="4.4399" layer="51"/>
<rectangle x1="1.6551" y1="3.11" x2="2.1549" y2="4.4399" layer="51"/>
<rectangle x1="0.3851" y1="3.11" x2="0.8849" y2="4.4399" layer="51"/>
<rectangle x1="-0.8849" y1="3.11" x2="-0.3851" y2="4.4399" layer="51"/>
<rectangle x1="-2.1549" y1="3.11" x2="-1.6551" y2="4.4399" layer="51"/>
<rectangle x1="-3.4249" y1="3.11" x2="-2.9251" y2="4.4399" layer="51"/>
<rectangle x1="-4.6949" y1="3.11" x2="-4.1951" y2="4.4399" layer="51"/>
<rectangle x1="-5.9649" y1="3.11" x2="-5.4651" y2="4.4399" layer="51"/>
</package>
<package name="CAP_DIP_1">
<description>Capacitor 100mil pitch</description>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1"/>
<pad name="2" x="1.27" y="0" drill="1"/>
<text x="-2.54" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CAP_DIP_4">
<description>Capacitor 400mil pitch</description>
<wire x1="-3.81" y1="0" x2="-0.508" y2="0" width="0.254" layer="21"/>
<wire x1="0.508" y1="0" x2="3.81" y2="0" width="0.254" layer="21"/>
<wire x1="-0.508" y1="1.016" x2="-0.508" y2="0" width="0.254" layer="21"/>
<wire x1="-0.508" y1="0" x2="-0.508" y2="-1.016" width="0.254" layer="21"/>
<wire x1="0.508" y1="1.016" x2="0.508" y2="0" width="0.254" layer="21"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-1.016" width="0.254" layer="21"/>
<wire x1="-6.35" y1="2.54" x2="6.35" y2="2.54" width="0.254" layer="21"/>
<wire x1="6.35" y1="2.54" x2="6.35" y2="-2.54" width="0.254" layer="21"/>
<wire x1="6.35" y1="-2.54" x2="-6.35" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-6.35" y1="-2.54" x2="-6.35" y2="2.54" width="0.254" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="1"/>
<pad name="2" x="5.08" y="0" drill="1"/>
<text x="-5.08" y="5.08" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.08" y="3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CAP_DIP_2_TCK_2">
<description>Capacitor 200mil pitch thickness 200 mil</description>
<wire x1="-3.81" y1="2.54" x2="3.81" y2="2.54" width="0.254" layer="21"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="-2.54" width="0.254" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="-3.81" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-2.54" x2="-3.81" y2="2.54" width="0.254" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1"/>
<pad name="2" x="2.54" y="0" drill="1"/>
<text x="-3.81" y="5.08" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CAP_31X17">
<description>Silkey cap</description>
<wire x1="-15.5" y1="8.5" x2="15.5" y2="8.5" width="0.254" layer="21"/>
<wire x1="15.5" y1="8.5" x2="15.5" y2="-8.5" width="0.254" layer="21"/>
<wire x1="15.5" y1="-8.5" x2="-15.5" y2="-8.5" width="0.254" layer="21"/>
<wire x1="-15.5" y1="-8.5" x2="-15.5" y2="8.5" width="0.254" layer="21"/>
<wire x1="-12" y1="0" x2="-1" y2="0" width="0.254" layer="21"/>
<wire x1="12" y1="0" x2="1" y2="0" width="0.254" layer="21"/>
<wire x1="-1" y1="2" x2="-1" y2="0" width="0.254" layer="21"/>
<wire x1="-1" y1="0" x2="-1" y2="-2" width="0.254" layer="21"/>
<wire x1="1" y1="2" x2="1" y2="0" width="0.254" layer="21"/>
<wire x1="1" y1="0" x2="1" y2="-2" width="0.254" layer="21"/>
<pad name="1" x="-13.97" y="0" drill="1.5"/>
<pad name="2" x="13.97" y="0" drill="1.5"/>
<text x="-14.5" y="9" size="1.27" layer="25">&gt;NAME</text>
<text x="-8" y="9" size="1.27" layer="25">&gt;VALUE</text>
</package>
<package name="CAP_22X8">
<wire x1="-11" y1="-4" x2="11" y2="-4" width="0.254" layer="21"/>
<wire x1="11" y1="4" x2="-11" y2="4" width="0.254" layer="21"/>
<wire x1="-7.603" y1="0" x2="-1" y2="0" width="0.254" layer="21"/>
<wire x1="1" y1="0" x2="7.603" y2="0" width="0.254" layer="21"/>
<wire x1="-1" y1="1.5" x2="-1" y2="0" width="0.254" layer="21"/>
<wire x1="-1" y1="0" x2="-1" y2="-1.5" width="0.254" layer="21"/>
<wire x1="1" y1="1.5" x2="1" y2="0" width="0.254" layer="21"/>
<wire x1="1" y1="0" x2="1" y2="-1.5" width="0.254" layer="21"/>
<wire x1="-11" y1="4" x2="-11" y2="1.5" width="0.254" layer="21"/>
<wire x1="-11" y1="-1.5" x2="-11" y2="-4" width="0.254" layer="21"/>
<wire x1="11" y1="4" x2="11" y2="1.5" width="0.254" layer="21"/>
<wire x1="11" y1="-1.5" x2="11" y2="-4" width="0.254" layer="21"/>
<pad name="1" x="-10.16" y="0" drill="1.5"/>
<pad name="2" x="10.16" y="0" drill="1.5"/>
<text x="-10" y="4.5" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.5" y="4.5" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CAP_17X7">
<description>Capacitor 17x7 mm size.</description>
<wire x1="-8.5" y1="-3.5" x2="8.5" y2="-3.5" width="0.254" layer="21"/>
<wire x1="8.5" y1="3.5" x2="-8.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-6" y1="0" x2="-1" y2="0" width="0.254" layer="21"/>
<wire x1="6" y1="0" x2="1" y2="0" width="0.254" layer="21"/>
<wire x1="-1" y1="1.5" x2="-1" y2="-1.5" width="0.254" layer="21"/>
<wire x1="1" y1="1.5" x2="1" y2="-1.5" width="0.254" layer="21"/>
<wire x1="-8.5" y1="3.5" x2="-8.5" y2="1.5" width="0.254" layer="21"/>
<wire x1="-8.5" y1="-1.5" x2="-8.5" y2="-3.5" width="0.254" layer="21"/>
<wire x1="8.5" y1="1.5" x2="8.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="8.5" y1="-1.5" x2="8.5" y2="-3.5" width="0.254" layer="21"/>
<pad name="1" x="-7.62" y="0" drill="1.5"/>
<pad name="2" x="7.62" y="0" drill="1.5"/>
<text x="-8" y="4" size="1.27" layer="25">&gt;NAME</text>
<text x="-2" y="4" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CAP_DIP_2_9X3">
<wire x1="-4.5" y1="1.5" x2="4.5" y2="1.5" width="0.254" layer="21"/>
<wire x1="4.5" y1="1.5" x2="4.5" y2="-1.5" width="0.254" layer="21"/>
<wire x1="4.5" y1="-1.5" x2="-4.5" y2="-1.5" width="0.254" layer="21"/>
<wire x1="-4.5" y1="-1.5" x2="-4.5" y2="1.5" width="0.254" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1"/>
<pad name="2" x="2.54" y="0" drill="1"/>
<text x="-3.81" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C1608">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="CAP_19X6">
<description>Capacitor 17x7 mm size 40mil(1.04mm) lead diameter. Suitable for SOSHIN dipped mica capacitor 6800 pF.</description>
<wire x1="-4.222" y1="0" x2="-1" y2="0" width="0.254" layer="21"/>
<wire x1="4.222" y1="0" x2="1" y2="0" width="0.254" layer="21"/>
<wire x1="-1" y1="1.5" x2="-1" y2="0" width="0.254" layer="21"/>
<wire x1="-1" y1="0" x2="-1" y2="-1.5" width="0.254" layer="21"/>
<wire x1="1" y1="1.5" x2="1" y2="0" width="0.254" layer="21"/>
<wire x1="1" y1="0" x2="1" y2="-1.5" width="0.254" layer="21"/>
<wire x1="-9.4" y1="3" x2="9.4" y2="3" width="0.254" layer="21"/>
<wire x1="9.4" y1="3" x2="9.4" y2="-3" width="0.254" layer="21"/>
<wire x1="9.4" y1="-3" x2="-9.4" y2="-3" width="0.254" layer="21"/>
<wire x1="-9.4" y1="-3" x2="-9.4" y2="3" width="0.254" layer="21"/>
<pad name="1" x="-5.588" y="0" drill="1.5"/>
<pad name="2" x="5.588" y="0" drill="1.5"/>
<text x="-8" y="3.492" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.984" y="3.492" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CAP_10X4">
<description>Capacitor 10x4 mm size 26mil(0.67mm) lead diameter.</description>
<wire x1="-5" y1="2" x2="5" y2="2" width="0.254" layer="21"/>
<wire x1="5" y1="2" x2="5" y2="-2" width="0.254" layer="21"/>
<wire x1="5" y1="-2" x2="-5" y2="-2" width="0.254" layer="21"/>
<wire x1="-5" y1="-2" x2="-5" y2="2" width="0.254" layer="21"/>
<pad name="1" x="-2.794" y="0" drill="1.1"/>
<pad name="2" x="2.794" y="0" drill="1.1"/>
<text x="-4.444" y="2.73" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.54" y="-3.874" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C2012">
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
</package>
<package name="SC59">
<description>&lt;b&gt;ROHM : SMT3 ; EIAJ : SC-59&lt;/b&gt;</description>
<wire x1="1.4224" y1="0.8604" x2="1.4224" y2="-0.8604" width="0.127" layer="51"/>
<wire x1="1.4224" y1="-0.8604" x2="-1.4224" y2="-0.8604" width="0.127" layer="51"/>
<wire x1="-1.4224" y1="-0.8604" x2="-1.4224" y2="0.8604" width="0.127" layer="51"/>
<wire x1="-1.4224" y1="0.8604" x2="1.4224" y2="0.8604" width="0.127" layer="51"/>
<smd name="C" x="0" y="1.2" dx="1" dy="1.4" layer="1"/>
<smd name="E" x="0.95" y="-1.2" dx="1" dy="1.4" layer="1"/>
<smd name="B" x="-0.95" y="-1.2" dx="1" dy="1.4" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="0.9112" x2="0.2286" y2="1.4954" layer="51"/>
<rectangle x1="0.7112" y1="-1.4954" x2="1.1684" y2="-0.9112" layer="51"/>
<rectangle x1="-1.1684" y1="-1.4954" x2="-0.7112" y2="-0.9112" layer="51"/>
</package>
<package name="LED2125">
<smd name="A" x="0" y="1.125" dx="1.3" dy="1.15" layer="1"/>
<smd name="K" x="0" y="-1.125" dx="1.3" dy="1.15" layer="1"/>
<wire x1="-0.9" y1="1.7" x2="-0.9" y2="1.9" width="0.127" layer="21"/>
<wire x1="-0.9" y1="1.9" x2="0.9" y2="1.9" width="0.127" layer="21"/>
<wire x1="0.9" y1="1.9" x2="0.9" y2="1.7" width="0.127" layer="21"/>
<wire x1="-0.9" y1="-1.7" x2="-0.9" y2="-1.9" width="0.127" layer="21"/>
<wire x1="-0.9" y1="-1.9" x2="0.9" y2="-1.9" width="0.127" layer="21"/>
<wire x1="0.9" y1="-1.9" x2="0.9" y2="-1.7" width="0.127" layer="21"/>
<wire x1="1" y1="0.3" x2="1.8" y2="0.3" width="0.127" layer="21"/>
<wire x1="1.8" y1="0.3" x2="1.4" y2="-0.3" width="0.127" layer="21"/>
<wire x1="1.4" y1="-0.3" x2="1" y2="0.3" width="0.127" layer="21"/>
<wire x1="1" y1="-0.4" x2="1.8" y2="-0.4" width="0.127" layer="21"/>
<wire x1="1.4" y1="0.6" x2="1.4" y2="-0.7" width="0.127" layer="21"/>
<text x="-2.6" y="2.7" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="LED_3MM_VIRT_2">
<wire x1="-1.1" y1="-1.8" x2="1.1" y2="-1.8" width="0.127" layer="21"/>
<wire x1="-1.1" y1="-1.8" x2="1.1" y2="-1.8" width="0.127" layer="21" curve="-297.140869"/>
<circle x="0" y="0" radius="1.8" width="0.127" layer="51"/>
<pad name="A" x="-1.27" y="0" drill="1" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="1"/>
<text x="-3.81" y="2.54" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.445" y="-3.81" size="1.778" layer="27">&gt;VALUE</text>
</package>
<package name="LED_5MM_VIRT">
<circle x="0" y="0" radius="2.5" width="0.254" layer="21"/>
<pad name="A" x="-1.27" y="0" drill="0.8" shape="octagon"/>
<pad name="K" x="1.27" y="0" drill="0.8"/>
<text x="-3.81" y="2.54" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.445" y="-3.81" size="1.778" layer="27">&gt;VALUE</text>
</package>
<package name="SO14">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.064" y1="1.9558" x2="-4.064" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.9558" x2="4.445" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.445" y1="1.5748" x2="-4.064" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.064" y1="1.9558" x2="4.445" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.445" y1="-1.5748" x2="-4.064" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.064" y1="-1.9558" x2="4.064" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.5748" x2="4.445" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.5748" x2="-4.445" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.508" x2="-4.445" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-0.508" x2="-4.445" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.508" x2="-4.445" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-4.445" y1="-1.6002" x2="4.445" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-3.81" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-3.81" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-2.54" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.27" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-2.54" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="-1.27" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="0" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="0" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="1.27" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="2.54" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="1.27" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="2.54" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.81" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="3.81" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-3.556" y="-0.508" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.699" y="-1.778" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.254" y1="1.9558" x2="0.254" y2="3.0988" layer="51"/>
<rectangle x1="-4.064" y1="-3.0988" x2="-3.556" y2="-1.9558" layer="51"/>
<rectangle x1="-2.794" y1="-3.0988" x2="-2.286" y2="-1.9558" layer="51"/>
<rectangle x1="-1.524" y1="-3.0734" x2="-1.016" y2="-1.9304" layer="51"/>
<rectangle x1="-0.254" y1="-3.0988" x2="0.254" y2="-1.9558" layer="51"/>
<rectangle x1="-1.524" y1="1.9558" x2="-1.016" y2="3.0988" layer="51"/>
<rectangle x1="-2.794" y1="1.9558" x2="-2.286" y2="3.0988" layer="51"/>
<rectangle x1="-4.064" y1="1.9558" x2="-3.556" y2="3.0988" layer="51"/>
<rectangle x1="1.016" y1="1.9558" x2="1.524" y2="3.0988" layer="51"/>
<rectangle x1="2.286" y1="1.9558" x2="2.794" y2="3.0988" layer="51"/>
<rectangle x1="3.556" y1="1.9558" x2="4.064" y2="3.0988" layer="51"/>
<rectangle x1="1.016" y1="-3.0988" x2="1.524" y2="-1.9558" layer="51"/>
<rectangle x1="2.286" y1="-3.0988" x2="2.794" y2="-1.9558" layer="51"/>
<rectangle x1="3.556" y1="-3.0988" x2="4.064" y2="-1.9558" layer="51"/>
</package>
<package name="LCC20">
<description>&lt;b&gt;Leadless Chip Carrier&lt;/b&gt;&lt;p&gt; Ceramic Package</description>
<wire x1="-0.4001" y1="4.4" x2="-0.87" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="4.4" x2="-4.4" y2="3.3" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="4.3985" x2="0.4001" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.3985" x2="-0.8699" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="2.14" x2="-4.3985" y2="2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="-2.9401" y1="4.4" x2="-3.3" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.4" x2="0.4001" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.3985" x2="1.67" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="3.3" x2="-4.4" y2="2.9401" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="2.14" x2="-4.4" y2="1.6701" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="0.87" x2="-4.3985" y2="1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-0.4001" x2="-4.3985" y2="0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-1.6701" x2="-4.3985" y2="-0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="0.87" x2="-4.4" y2="0.4001" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-0.4001" x2="-4.4" y2="-0.87" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-2.9401" x2="-4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-4.4" y2="-4.4099" width="0.2032" layer="51"/>
<wire x1="2.14" y1="4.3985" x2="2.94" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="2.14" y1="4.4" x2="1.6701" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="4.4" x2="2.9401" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.4001" y1="-4.4" x2="0.87" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="-4.3985" x2="0.4001" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="0.87" y1="-4.3985" x2="1.67" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="2.9401" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.87" y1="-4.4" x2="-0.4001" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-1.6701" y1="-4.3985" x2="-0.8699" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.9401" y1="-4.3985" x2="-2.1399" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.14" y1="-4.4" x2="-1.6701" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-2.9401" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="0.4001" x2="4.4" y2="0.87" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="0.4001" x2="4.3985" y2="-0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="1.6701" x2="4.3985" y2="0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="2.9401" x2="4.4" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-0.87" x2="4.4" y2="-0.4001" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="-0.87" x2="4.3985" y2="-1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="-2.14" x2="4.3985" y2="-2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="-2.14" x2="4.4" y2="-1.6701" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-4.4" x2="4.4" y2="-2.9401" width="0.2032" layer="51"/>
<wire x1="-2.9401" y1="4.3985" x2="-2.1399" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.4" x2="-2.14" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="-2.9401" x2="-4.3985" y2="-2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="-1.6701" x2="-4.4" y2="-2.14" width="0.2032" layer="51"/>
<wire x1="1.6701" y1="-4.4" x2="2.14" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="2.14" y1="-4.3985" x2="2.94" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="4.3985" y1="2.9401" x2="4.3985" y2="2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="1.6701" x2="4.4" y2="2.14" width="0.2032" layer="51"/>
<smd name="2" x="-1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="1" x="0" y="3.8001" dx="0.8" dy="3.4" layer="1"/>
<smd name="3" x="-2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="4" x="-4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="5" x="-4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="6" x="-4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="7" x="-4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="8" x="-4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="9" x="-2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="10" x="-1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="11" x="0" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="12" x="1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="13" x="2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="14" x="4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="15" x="4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="16" x="4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="17" x="4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="18" x="4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="19" x="2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="20" x="1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<text x="-3.4971" y="5.811" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.9751" y="-7.6871" size="1.778" layer="27">&gt;VALUE</text>
</package>
<package name="TSSOP14">
<description>&lt;b&gt;Thin Shrink Small Outline Plastic 14&lt;/b&gt;&lt;p&gt;
MAX3223-MAX3243.pdf</description>
<wire x1="-2.5146" y1="-2.2828" x2="2.5146" y2="-2.2828" width="0.1524" layer="21"/>
<wire x1="2.5146" y1="2.2828" x2="2.5146" y2="-2.2828" width="0.1524" layer="21"/>
<wire x1="2.5146" y1="2.2828" x2="-2.5146" y2="2.2828" width="0.1524" layer="21"/>
<wire x1="-2.5146" y1="-2.2828" x2="-2.5146" y2="2.2828" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-2.0542" x2="2.286" y2="-2.0542" width="0.0508" layer="21"/>
<wire x1="2.286" y1="2.0542" x2="2.286" y2="-2.0542" width="0.0508" layer="21"/>
<wire x1="2.286" y1="2.0542" x2="-2.286" y2="2.0542" width="0.0508" layer="21"/>
<wire x1="-2.286" y1="-2.0542" x2="-2.286" y2="2.0542" width="0.0508" layer="21"/>
<circle x="-1.6256" y="-1.2192" radius="0.4572" width="0.1524" layer="21"/>
<smd name="1" x="-1.95" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="2" x="-1.3" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="3" x="-0.65" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="4" x="0" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="5" x="0.65" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="6" x="1.3" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="7" x="1.95" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="8" x="1.95" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="9" x="1.3" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="10" x="0.65" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="11" x="0" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="12" x="-0.65" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="13" x="-1.3" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="14" x="-1.95" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<text x="-2.8956" y="-2.0828" size="1.016" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="3.8862" y="-2.0828" size="1.016" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.0516" y1="-3.121" x2="-1.8484" y2="-2.2828" layer="51"/>
<rectangle x1="-1.4016" y1="-3.121" x2="-1.1984" y2="-2.2828" layer="51"/>
<rectangle x1="-0.7516" y1="-3.121" x2="-0.5484" y2="-2.2828" layer="51"/>
<rectangle x1="-0.1016" y1="-3.121" x2="0.1016" y2="-2.2828" layer="51"/>
<rectangle x1="0.5484" y1="-3.121" x2="0.7516" y2="-2.2828" layer="51"/>
<rectangle x1="1.1984" y1="-3.121" x2="1.4016" y2="-2.2828" layer="51"/>
<rectangle x1="1.8484" y1="-3.121" x2="2.0516" y2="-2.2828" layer="51"/>
<rectangle x1="1.8484" y1="2.2828" x2="2.0516" y2="3.121" layer="51"/>
<rectangle x1="1.1984" y1="2.2828" x2="1.4016" y2="3.121" layer="51"/>
<rectangle x1="0.5484" y1="2.2828" x2="0.7516" y2="3.121" layer="51"/>
<rectangle x1="-0.1016" y1="2.2828" x2="0.1016" y2="3.121" layer="51"/>
<rectangle x1="-0.7516" y1="2.2828" x2="-0.5484" y2="3.121" layer="51"/>
<rectangle x1="-1.4016" y1="2.2828" x2="-1.1984" y2="3.121" layer="51"/>
<rectangle x1="-2.0516" y1="2.2828" x2="-1.8484" y2="3.121" layer="51"/>
</package>
<package name="CON_HDR_SIP5">
<wire x1="-6.35" y1="1.27" x2="6.35" y2="1.27" width="0.254" layer="21"/>
<wire x1="6.35" y1="1.27" x2="6.35" y2="-1.27" width="0.254" layer="21"/>
<wire x1="6.35" y1="-1.27" x2="-6.35" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-6.35" y1="-1.27" x2="-6.35" y2="1.27" width="0.254" layer="21"/>
<pad name="5" x="5.08" y="0" drill="1"/>
<pad name="4" x="2.54" y="0" drill="1"/>
<pad name="3" x="0" y="0" drill="1"/>
<pad name="2" x="-2.54" y="0" drill="1"/>
<pad name="1" x="-5.08" y="0" drill="1"/>
<text x="-6.35" y="1.27" size="1.27" layer="21">&gt;NAME</text>
</package>
<package name="CON_HDR_SIP3">
<wire x1="-3.81" y1="1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<pad name="3" x="2.54" y="0" drill="1"/>
<pad name="2" x="0" y="0" drill="1"/>
<pad name="1" x="-2.54" y="0" drill="1"/>
<text x="-3.81" y="1.27" size="1.27" layer="21">&gt;NAME</text>
</package>
<package name="CON_HDR_SIP6">
<wire x1="-7.62" y1="1.27" x2="7.62" y2="1.27" width="0.254" layer="21"/>
<wire x1="7.62" y1="1.27" x2="7.62" y2="-1.27" width="0.254" layer="21"/>
<wire x1="7.62" y1="-1.27" x2="-7.62" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-7.62" y1="-1.27" x2="-7.62" y2="1.27" width="0.254" layer="21"/>
<pad name="5" x="3.81" y="0" drill="1"/>
<pad name="4" x="1.27" y="0" drill="1"/>
<pad name="3" x="-1.27" y="0" drill="1"/>
<pad name="2" x="-3.81" y="0" drill="1"/>
<pad name="1" x="-6.35" y="0" drill="1"/>
<text x="-7.62" y="1.27" size="1.27" layer="21">&gt;NAME</text>
<pad name="6" x="6.35" y="0" drill="1"/>
</package>
<package name="DIODE_4">
<wire x1="-3.81" y1="0" x2="0.762" y2="0" width="0.254" layer="21"/>
<wire x1="0.762" y1="0" x2="4.064" y2="0" width="0.254" layer="21"/>
<wire x1="-0.508" y1="1.016" x2="-0.508" y2="-1.016" width="0.254" layer="21"/>
<wire x1="-0.508" y1="-1.016" x2="0.762" y2="0" width="0.254" layer="21"/>
<wire x1="0.762" y1="0" x2="-0.508" y2="1.016" width="0.254" layer="21"/>
<wire x1="0.762" y1="1.016" x2="0.762" y2="0" width="0.254" layer="21"/>
<wire x1="0.762" y1="0" x2="0.762" y2="-1.016" width="0.254" layer="21"/>
<wire x1="-6.35" y1="1.27" x2="-6.35" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-6.35" y1="-1.27" x2="6.35" y2="-1.27" width="0.254" layer="21"/>
<wire x1="6.35" y1="-1.27" x2="6.35" y2="1.27" width="0.254" layer="21"/>
<wire x1="6.35" y1="1.27" x2="-6.35" y2="1.27" width="0.254" layer="21"/>
<pad name="A" x="-5.08" y="0" drill="1"/>
<pad name="K" x="5.08" y="0" drill="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SS26_DIODE">
<wire x1="-2.2" y1="-1.4" x2="2.2" y2="-1.4" width="0.127" layer="51"/>
<wire x1="2.2" y1="-1.4" x2="2.2" y2="1.4" width="0.127" layer="51"/>
<wire x1="2.2" y1="1.4" x2="-2.2" y2="1.4" width="0.127" layer="51"/>
<wire x1="-2.2" y1="1.4" x2="-2.2" y2="-1.4" width="0.127" layer="51"/>
<smd name="A" x="-2.2" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="K" x="2.2" y="0" dx="1.8" dy="1.8" layer="1"/>
<polygon width="0.127" layer="51">
<vertex x="1.8" y="1.4"/>
<vertex x="1.4" y="1.4"/>
<vertex x="1.4" y="-1.4"/>
<vertex x="1.8" y="-1.4"/>
</polygon>
<wire x1="-1.2" y1="0" x2="0.4" y2="0" width="0.127" layer="51"/>
<wire x1="0.4" y1="0" x2="1" y2="0" width="0.127" layer="51"/>
<wire x1="0.4" y1="0.6" x2="0.4" y2="0" width="0.127" layer="51"/>
<wire x1="0.4" y1="0" x2="0.4" y2="-0.6" width="0.127" layer="51"/>
<wire x1="0.4" y1="0" x2="-0.6" y2="0.6" width="0.127" layer="51"/>
<wire x1="-0.6" y1="-0.6" x2="0.4" y2="0" width="0.127" layer="51"/>
<wire x1="-0.6" y1="-0.6" x2="-0.6" y2="0.6" width="0.127" layer="51"/>
<wire x1="-3.4" y1="1.4" x2="3.4" y2="1.4" width="0.127" layer="39"/>
<wire x1="3.4" y1="1.4" x2="3.4" y2="-1.4" width="0.127" layer="39"/>
<wire x1="3.4" y1="-1.4" x2="-3.4" y2="-1.4" width="0.127" layer="39"/>
<wire x1="-3.4" y1="-1.4" x2="-3.4" y2="1.4" width="0.127" layer="39"/>
</package>
<package name="SOD123">
<description>LT-Spice library generated with :&lt;br&gt;
ltspice.ulp&lt;br&gt;
from: E:/Programme/LTC/LTspiceIV/lib/sym/diode*.asy&lt;br&gt;
at 10.10.2012 08:39:56</description>
<wire x1="-1.1" y1="0.7" x2="1.1" y2="0.7" width="0.254" layer="51"/>
<wire x1="1.1" y1="0.7" x2="1.1" y2="-0.7" width="0.254" layer="51"/>
<wire x1="1.1" y1="-0.7" x2="-1.1" y2="-0.7" width="0.254" layer="51"/>
<wire x1="-1.1" y1="-0.7" x2="-1.1" y2="0.7" width="0.254" layer="51"/>
<smd name="C" x="-1.9" y="0" dx="1.4" dy="1.4" layer="1"/>
<smd name="A" x="1.9" y="0" dx="1.4" dy="1.4" layer="1"/>
<text x="-1.1" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.1" y="-2.3" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.95" y1="-0.45" x2="-1.2" y2="0.4" layer="51"/>
<rectangle x1="1.2" y1="-0.45" x2="1.95" y2="0.4" layer="51"/>
<rectangle x1="-1.05" y1="-0.65" x2="-0.15" y2="0.7" layer="51"/>
</package>
<package name="SOD323">
<description>&lt;b&gt;Small Outline Diode&lt;/b&gt;</description>
<wire x1="-0.8" y1="0.575" x2="0.8" y2="0.575" width="0.2032" layer="51"/>
<wire x1="0.8" y1="0.575" x2="0.8" y2="-0.575" width="0.2032" layer="51"/>
<wire x1="0.8" y1="-0.575" x2="-0.8" y2="-0.575" width="0.2032" layer="51"/>
<wire x1="-0.8" y1="-0.575" x2="-0.8" y2="0.575" width="0.2032" layer="51"/>
<smd name="1" x="-1.1" y="0" dx="1" dy="0.6" layer="1"/>
<smd name="2" x="1.1" y="0" dx="1" dy="0.6" layer="1"/>
<text x="-0.9" y="0.78" size="1.016" layer="25">&gt;NAME</text>
<text x="-0.9" y="-1.805" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="-1.35" y1="-0.2" x2="-0.9" y2="0.2" layer="51"/>
<rectangle x1="0.9" y1="-0.2" x2="1.35" y2="0.2" layer="51"/>
<rectangle x1="-0.75" y1="-0.575" x2="-0.375" y2="0.575" layer="51"/>
</package>
<package name="R_0.125W_3">
<wire x1="-4.77" y1="1" x2="4.77" y2="1" width="0.254" layer="21"/>
<wire x1="4.77" y1="1" x2="4.77" y2="-1" width="0.254" layer="21"/>
<wire x1="4.77" y1="-1" x2="-4.77" y2="-1" width="0.254" layer="21"/>
<wire x1="-4.77" y1="-1" x2="-4.77" y2="1" width="0.254" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8"/>
<pad name="2" x="3.81" y="0" drill="0.8"/>
<text x="-2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CAP_DIP_2">
<description>Capacitor 200mil pitch</description>
<wire x1="-3.81" y1="1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="0.8"/>
<pad name="2" x="2.54" y="0" drill="0.8"/>
<text x="-3.81" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="DIL14">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="8.89" y1="2.921" x2="-8.89" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="8.89" y1="2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="2.921" x2="-8.89" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="-8.89" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.016" x2="-8.89" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8" rot="R90"/>
<text x="-9.271" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-6.731" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="DIODE_2">
<wire x1="-1.27" y1="0" x2="0.762" y2="0" width="0.254" layer="21"/>
<wire x1="0.762" y1="0" x2="1.524" y2="0" width="0.254" layer="21"/>
<wire x1="-0.508" y1="1.016" x2="-0.508" y2="-1.016" width="0.254" layer="21"/>
<wire x1="-0.508" y1="-1.016" x2="0.762" y2="0" width="0.254" layer="21"/>
<wire x1="0.762" y1="0" x2="-0.508" y2="1.016" width="0.254" layer="21"/>
<wire x1="0.762" y1="1.016" x2="0.762" y2="-1.016" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<pad name="A" x="-2.54" y="0" drill="0.8"/>
<pad name="K" x="2.54" y="0" drill="0.8"/>
<text x="-3.81" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SO20">
<description>&lt;b&gt;SMALL OUTLINE INTEGRATED CIRCUIT&lt;/b&gt;&lt;p&gt;
wide body 7.5 mm/JEDEC MS-013AC</description>
<wire x1="6.46" y1="-3.7" x2="-6.46" y2="-3.7" width="0.2032" layer="51"/>
<wire x1="-6.46" y1="-3.7" x2="-6.46" y2="-3.2" width="0.2032" layer="51"/>
<wire x1="-6.46" y1="-3.2" x2="-6.46" y2="3.7" width="0.2032" layer="51"/>
<wire x1="-6.46" y1="3.7" x2="6.46" y2="3.7" width="0.2032" layer="51"/>
<wire x1="6.46" y1="3.7" x2="6.46" y2="-3.2" width="0.2032" layer="51"/>
<wire x1="6.46" y1="-3.2" x2="6.46" y2="-3.7" width="0.2032" layer="51"/>
<smd name="2" x="-4.445" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="13" x="3.175" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="1" x="-5.715" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="3" x="-3.175" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="4" x="-1.905" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="14" x="1.905" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="12" x="4.445" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="11" x="5.715" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="6" x="0.635" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="9" x="4.445" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="5" x="-0.635" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="7" x="1.905" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="10" x="5.715" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="8" x="3.175" y="-4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="15" x="0.635" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="16" x="-0.635" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="17" x="-1.905" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="18" x="-3.175" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="19" x="-4.445" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="20" x="-5.715" y="4.6" dx="0.6" dy="2.2" layer="1"/>
<text x="-5.715" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.715" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-5.9601" y1="-5.32" x2="-5.4699" y2="-3.8001" layer="51"/>
<rectangle x1="-4.6901" y1="-5.32" x2="-4.1999" y2="-3.8001" layer="51"/>
<rectangle x1="-3.4201" y1="-5.32" x2="-2.9299" y2="-3.8001" layer="51"/>
<rectangle x1="-2.1501" y1="-5.32" x2="-1.6599" y2="-3.8001" layer="51"/>
<rectangle x1="-0.8801" y1="-5.32" x2="-0.3899" y2="-3.8001" layer="51"/>
<rectangle x1="0.3899" y1="-5.32" x2="0.8801" y2="-3.8001" layer="51"/>
<rectangle x1="1.6599" y1="-5.32" x2="2.1501" y2="-3.8001" layer="51"/>
<rectangle x1="2.9299" y1="-5.32" x2="3.4201" y2="-3.8001" layer="51"/>
<rectangle x1="4.1999" y1="-5.32" x2="4.6901" y2="-3.8001" layer="51"/>
<rectangle x1="5.4699" y1="-5.32" x2="5.9601" y2="-3.8001" layer="51"/>
<rectangle x1="5.4699" y1="3.8001" x2="5.9601" y2="5.32" layer="51"/>
<rectangle x1="4.1999" y1="3.8001" x2="4.6901" y2="5.32" layer="51"/>
<rectangle x1="2.9299" y1="3.8001" x2="3.4201" y2="5.32" layer="51"/>
<rectangle x1="1.6599" y1="3.8001" x2="2.1501" y2="5.32" layer="51"/>
<rectangle x1="0.3899" y1="3.8001" x2="0.8801" y2="5.32" layer="51"/>
<rectangle x1="-0.8801" y1="3.8001" x2="-0.3899" y2="5.32" layer="51"/>
<rectangle x1="-2.1501" y1="3.8001" x2="-1.6599" y2="5.32" layer="51"/>
<rectangle x1="-3.4201" y1="3.8001" x2="-2.9299" y2="5.32" layer="51"/>
<rectangle x1="-4.6901" y1="3.8001" x2="-4.1999" y2="5.32" layer="51"/>
<rectangle x1="-5.9601" y1="3.8001" x2="-5.4699" y2="5.32" layer="51"/>
</package>
<package name="DIODE_3">
<wire x1="-2.54" y1="0" x2="0.762" y2="0" width="0.254" layer="21"/>
<wire x1="0.762" y1="0" x2="2.794" y2="0" width="0.254" layer="21"/>
<wire x1="-0.508" y1="1.016" x2="-0.508" y2="-1.016" width="0.254" layer="21"/>
<wire x1="-0.508" y1="-1.016" x2="0.762" y2="0" width="0.254" layer="21"/>
<wire x1="0.762" y1="0" x2="-0.508" y2="1.016" width="0.254" layer="21"/>
<wire x1="0.762" y1="1.016" x2="0.762" y2="0" width="0.254" layer="21"/>
<wire x1="0.762" y1="0" x2="0.762" y2="-1.016" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-5.08" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.27" x2="-5.08" y2="1.27" width="0.254" layer="21"/>
<pad name="A" x="-3.81" y="0" drill="1"/>
<pad name="K" x="3.81" y="0" drill="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="R">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.2032" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.2032" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.2032" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.2032" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.2032" layer="94"/>
<text x="-2.54" y="1.27" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="GND">
<wire x1="-1.524" y1="-1.524" x2="-1.016" y2="0" width="0.254" layer="94"/>
<wire x1="-0.508" y1="-1.524" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="1.016" y1="0" x2="0.508" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-1.524" y1="0" x2="1.524" y2="0" width="0.254" layer="94"/>
<text x="-1.27" y="-2.54" size="0.8128" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC50">
<wire x1="-2.032" y1="2.54" x2="2.032" y2="2.54" width="0.1524" layer="94"/>
<text x="-1.27" y="3.81" size="1.27" layer="96">&gt;VALUE</text>
<pin name="VCC50" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
<wire x1="-1.016" y1="1.524" x2="1.016" y2="1.524" width="0.1524" layer="94"/>
<wire x1="1.016" y1="1.524" x2="1.016" y2="3.556" width="0.1524" layer="94"/>
<wire x1="1.016" y1="3.556" x2="-1.016" y2="3.556" width="0.1524" layer="94"/>
<wire x1="-1.016" y1="3.556" x2="-1.016" y2="1.524" width="0.1524" layer="94"/>
</symbol>
<symbol name="DM3AT-SF-PEJM5">
<pin name="DAT2" x="-15.24" y="10.16" length="short"/>
<pin name="CD/DAT3" x="-15.24" y="7.62" length="short"/>
<pin name="CMD" x="-15.24" y="5.08" length="short"/>
<pin name="VDD" x="-15.24" y="2.54" length="short" direction="pwr"/>
<pin name="CLK" x="-15.24" y="0" length="short" direction="in"/>
<pin name="VSS" x="-15.24" y="-2.54" length="short" direction="pwr"/>
<pin name="DAT0" x="-15.24" y="-5.08" length="short"/>
<pin name="DAT1" x="-15.24" y="-7.62" length="short"/>
<pin name="SWB" x="-15.24" y="-10.16" length="short" direction="pas"/>
<pin name="SWA" x="-2.54" y="-15.24" length="short" direction="pas" rot="R90"/>
<pin name="S1" x="2.54" y="-15.24" length="short" direction="pwr" rot="R90"/>
<pin name="S2" x="5.08" y="-15.24" length="short" direction="pwr" rot="R90"/>
<pin name="S3" x="7.62" y="-15.24" length="short" direction="pwr" rot="R90"/>
<pin name="S4" x="10.16" y="-15.24" length="short" direction="pwr" rot="R90"/>
<wire x1="-12.7" y1="12.7" x2="-12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-12.7" x2="12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="-12.7" x2="12.7" y2="12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="12.7" x2="-12.7" y2="12.7" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="0" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="5077CR-16-SMC2-BK-TR">
<pin name="A1B12" x="-22.86" y="15.24" length="short"/>
<pin name="A4B9" x="-22.86" y="12.7" length="short"/>
<pin name="B8" x="-22.86" y="10.16" length="short"/>
<pin name="A5" x="-22.86" y="7.62" length="short"/>
<pin name="B7" x="-22.86" y="5.08" length="short"/>
<pin name="A6" x="-22.86" y="2.54" length="short"/>
<pin name="A7" x="-22.86" y="0" length="short"/>
<pin name="B6" x="-22.86" y="-2.54" length="short"/>
<pin name="A8" x="-22.86" y="-5.08" length="short"/>
<pin name="B5" x="-22.86" y="-7.62" length="short"/>
<pin name="B4A9" x="-22.86" y="-10.16" length="short"/>
<pin name="B1A12" x="-22.86" y="-12.7" length="short"/>
<pin name="S1" x="-7.62" y="-17.78" length="short" rot="R90"/>
<pin name="S2" x="-5.08" y="-17.78" length="short" rot="R90"/>
<pin name="S3" x="-2.54" y="-17.78" length="short" rot="R90"/>
<pin name="S4" x="0" y="-17.78" length="short" rot="R90"/>
<wire x1="-20.32" y1="17.78" x2="-20.32" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-15.24" x2="7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-20.32" y1="17.78" x2="7.62" y2="17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="7.62" y2="17.78" width="0.254" layer="94"/>
<text x="-5.08" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="2.54" size="1.778" layer="95">&gt;VALUE</text>
</symbol>
<symbol name="CH340K">
<pin name="UD+" x="-12.7" y="5.08" length="short"/>
<pin name="UD-" x="-12.7" y="2.54" length="short"/>
<pin name="GND" x="0" y="-10.16" length="short" direction="pwr" rot="R90"/>
<pin name="DTR#" x="15.24" y="0" length="short" direction="out" rot="R180"/>
<pin name="CTS#" x="15.24" y="-5.08" length="short" direction="in" rot="R180"/>
<pin name="RTS#" x="15.24" y="-2.54" length="short" direction="out" rot="R180"/>
<pin name="VCC" x="0" y="12.7" length="short" direction="pwr" rot="R270"/>
<pin name="TXD" x="15.24" y="7.62" length="short" direction="out" rot="R180"/>
<pin name="RXD" x="15.24" y="5.08" length="short" direction="in" rot="R180"/>
<pin name="V3" x="2.54" y="12.7" length="short" direction="pwr" rot="R270"/>
<wire x1="12.7" y1="10.16" x2="12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="-7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="-10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="10.16" x2="12.7" y2="10.16" width="0.254" layer="94"/>
<text x="5.08" y="15.24" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="12.7" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND0" x="-2.54" y="-10.16" length="short" direction="pwr" rot="R90"/>
</symbol>
<symbol name="PCF2129">
<pin name="CLKOUT" x="12.7" y="-2.54" length="short" direction="out" rot="R180"/>
<pin name="VDD" x="-2.54" y="17.78" length="short" direction="pwr" rot="R270"/>
<pin name="VBAT" x="0" y="17.78" length="short" direction="pwr" rot="R270"/>
<pin name="VSS" x="0" y="-15.24" length="short" direction="pwr" rot="R90"/>
<pin name="BBS" x="2.54" y="17.78" length="short" direction="sup" rot="R270"/>
<pin name="SDA_/CE" x="-12.7" y="5.08" length="short"/>
<pin name="SDO" x="-12.7" y="-2.54" length="short" direction="out"/>
<pin name="SDI" x="-12.7" y="0" length="short" direction="in"/>
<pin name="SCL" x="-12.7" y="2.54" length="short" direction="in"/>
<pin name="IFS" x="12.7" y="5.08" length="short" direction="in" rot="R180"/>
<pin name="/TS" x="12.7" y="0" length="short" direction="in" rot="R180"/>
<pin name="/INT" x="12.7" y="2.54" length="short" direction="out" rot="R180"/>
<wire x1="-10.16" y1="15.24" x2="-10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-12.7" x2="10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="15.24" x2="-10.16" y2="15.24" width="0.254" layer="94"/>
<text x="5.08" y="20.32" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="17.78" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="VCC33">
<wire x1="-2.032" y1="0" x2="2.032" y2="0" width="0.1524" layer="94"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="94"/>
<text x="-1.27" y="1.27" size="1.27" layer="96">&gt;VALUE</text>
<pin name="VCC33" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="CAP">
<wire x1="-0.762" y1="-1.778" x2="-0.762" y2="0" width="0.254" layer="94"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="1.778" width="0.254" layer="94"/>
<wire x1="0.762" y1="-1.778" x2="0.762" y2="0" width="0.254" layer="94"/>
<wire x1="0.762" y1="0" x2="0.762" y2="1.778" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-0.762" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="0.762" y2="0" width="0.1524" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.778" layer="95">&gt;VALUE</text>
<pin name="1" x="-2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1"/>
<pin name="2" x="2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="NPN">
<wire x1="2.54" y1="2.54" x2="0.508" y2="1.524" width="0.1524" layer="94"/>
<wire x1="1.778" y1="-1.524" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="1.27" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.778" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="1.54" y1="-2.04" x2="0.308" y2="-1.424" width="0.1524" layer="94"/>
<wire x1="1.524" y1="-2.413" x2="2.286" y2="-2.413" width="0.254" layer="94"/>
<wire x1="2.286" y1="-2.413" x2="1.778" y2="-1.778" width="0.254" layer="94"/>
<wire x1="1.778" y1="-1.778" x2="1.524" y2="-2.286" width="0.254" layer="94"/>
<wire x1="1.524" y1="-2.286" x2="1.905" y2="-2.286" width="0.254" layer="94"/>
<wire x1="1.905" y1="-2.286" x2="1.778" y2="-2.032" width="0.254" layer="94"/>
<text x="-10.16" y="7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="5.08" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-2.54" x2="0.508" y2="2.54" layer="94"/>
<pin name="B" x="-2.54" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="E" x="2.54" y="-5.08" visible="off" length="short" direction="pas" swaplevel="3" rot="R90"/>
<pin name="C" x="2.54" y="5.08" visible="off" length="short" direction="pas" swaplevel="2" rot="R270"/>
</symbol>
<symbol name="LED">
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.905" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.397" y1="1.905" x2="1.397" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="1.905" x2="0.635" y2="3.175" width="0.254" layer="94"/>
<wire x1="0.635" y1="3.175" x2="-0.635" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.635" y1="2.54" x2="0" y2="3.81" width="0.254" layer="94"/>
<text x="-3.175" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="K" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="7414">
<wire x1="-5.08" y1="5.08" x2="5.08" y2="0" width="0.4064" layer="94"/>
<wire x1="5.08" y1="0" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-0.762" y1="-1.27" x2="-1.778" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-1.27" x2="-3.048" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-1.27" x2="-0.762" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="-1.27" x2="0.127" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="-3.937" y1="1.27" x2="-3.048" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-3.048" y1="1.27" x2="-1.778" y2="1.27" width="0.1524" layer="94"/>
<text x="1.27" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="1.27" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I" x="-10.16" y="0" visible="pad" length="middle" direction="in"/>
<pin name="O" x="10.16" y="0" visible="pad" length="middle" direction="out" function="dot" rot="R180"/>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-7.62" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="5.08" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-10.16" visible="pad" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="10.16" visible="pad" direction="pwr" rot="R270"/>
</symbol>
<symbol name="CON_5P">
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="-7.62" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="7.62" x2="-2.54" y2="7.62" width="0.254" layer="94"/>
<text x="-5.08" y="10.16" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="7.62" size="1.778" layer="95">&gt;VALUE</text>
<pin name="1" x="-5.08" y="5.08" visible="pad" length="short" direction="pas"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="3" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
<pin name="4" x="-5.08" y="-2.54" visible="pad" length="short" direction="pas"/>
<pin name="5" x="-5.08" y="-5.08" visible="pad" length="short" direction="pas"/>
</symbol>
<symbol name="CON_3P">
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<text x="-5.08" y="7.62" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="5.08" size="1.778" layer="95">&gt;VALUE</text>
<pin name="1" x="-5.08" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
<pin name="3" x="-5.08" y="-2.54" visible="pad" length="short" direction="pas"/>
</symbol>
<symbol name="CON_6P">
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-10.16" x2="2.54" y2="-10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="-10.16" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="7.62" x2="-2.54" y2="7.62" width="0.254" layer="94"/>
<text x="-5.08" y="10.16" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="7.62" size="1.778" layer="95">&gt;VALUE</text>
<pin name="1" x="-5.08" y="5.08" visible="pad" length="short" direction="pas"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="3" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
<pin name="4" x="-5.08" y="-2.54" visible="pad" length="short" direction="pas"/>
<pin name="5" x="-5.08" y="-5.08" visible="pad" length="short" direction="pas"/>
<pin name="6" x="-5.08" y="-7.62" visible="pad" length="short" direction="pas"/>
</symbol>
<symbol name="DIODE">
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.905" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.397" y1="1.905" x2="1.397" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.3114" y="2.6416" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.5654" y="-4.4958" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="K" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" prefix="R" uservalue="yes">
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="0.125W_2P" package="R_0.125W_2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0.25W_5P" package="R_0.25W_5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0.5W_5P" package="R_0.5W_5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0.125W_1P" package="R_0.125W_1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0.125W_3P" package="R_0.125W_3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0.125W_4P" package="R_0.125W_4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0.25W_4P" package="R_0.25W_4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3W_7" package="R_3W_7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3W_7_STACK" package="R_3W_7_STACK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD6332" package="R6332">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD2012" package="R2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD3216" package="R3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND">
<gates>
<gate name="G$1" symbol="GND" x="0" y="2.54"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC50">
<gates>
<gate name="G$1" symbol="VCC50" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DM3AT-SF-PEJM5" prefix="CN">
<gates>
<gate name="G$1" symbol="DM3AT-SF-PEJM5" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DM3AT-SF-PEJM5">
<connects>
<connect gate="G$1" pin="CD/DAT3" pad="2"/>
<connect gate="G$1" pin="CLK" pad="5"/>
<connect gate="G$1" pin="CMD" pad="3"/>
<connect gate="G$1" pin="DAT0" pad="7"/>
<connect gate="G$1" pin="DAT1" pad="8"/>
<connect gate="G$1" pin="DAT2" pad="1"/>
<connect gate="G$1" pin="S1" pad="S1"/>
<connect gate="G$1" pin="S2" pad="S2"/>
<connect gate="G$1" pin="S3" pad="S3"/>
<connect gate="G$1" pin="S4" pad="S4"/>
<connect gate="G$1" pin="SWA" pad="SWA"/>
<connect gate="G$1" pin="SWB" pad="SWB"/>
<connect gate="G$1" pin="VDD" pad="4"/>
<connect gate="G$1" pin="VSS" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="5077CR-16-SMC2-BK-TR" prefix="CN">
<gates>
<gate name="G$1" symbol="5077CR-16-SMC2-BK-TR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="5077CR-16-SMC2-BK-TR">
<connects>
<connect gate="G$1" pin="A1B12" pad="A1B12"/>
<connect gate="G$1" pin="A4B9" pad="A4B9"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="A8" pad="A8"/>
<connect gate="G$1" pin="B1A12" pad="B1A12"/>
<connect gate="G$1" pin="B4A9" pad="B4A9"/>
<connect gate="G$1" pin="B5" pad="B5"/>
<connect gate="G$1" pin="B6" pad="B6"/>
<connect gate="G$1" pin="B7" pad="B7"/>
<connect gate="G$1" pin="B8" pad="B8"/>
<connect gate="G$1" pin="S1" pad="S1"/>
<connect gate="G$1" pin="S2" pad="S2"/>
<connect gate="G$1" pin="S3" pad="S3"/>
<connect gate="G$1" pin="S4" pad="S4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CH340K" prefix="U">
<gates>
<gate name="G$1" symbol="CH340K" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ESSOP10">
<connects>
<connect gate="G$1" pin="CTS#" pad="5"/>
<connect gate="G$1" pin="DTR#" pad="4"/>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="GND0" pad="0"/>
<connect gate="G$1" pin="RTS#" pad="6"/>
<connect gate="G$1" pin="RXD" pad="9"/>
<connect gate="G$1" pin="TXD" pad="8"/>
<connect gate="G$1" pin="UD+" pad="1"/>
<connect gate="G$1" pin="UD-" pad="2"/>
<connect gate="G$1" pin="V3" pad="10"/>
<connect gate="G$1" pin="VCC" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PCF2129" prefix="U">
<gates>
<gate name="G$1" symbol="PCF2129" x="0" y="0"/>
</gates>
<devices>
<device name="AT" package="SOP20">
<connects>
<connect gate="G$1" pin="/INT" pad="17"/>
<connect gate="G$1" pin="/TS" pad="6"/>
<connect gate="G$1" pin="BBS" pad="18"/>
<connect gate="G$1" pin="CLKOUT" pad="7"/>
<connect gate="G$1" pin="IFS" pad="5"/>
<connect gate="G$1" pin="SCL" pad="1"/>
<connect gate="G$1" pin="SDA_/CE" pad="4"/>
<connect gate="G$1" pin="SDI" pad="2"/>
<connect gate="G$1" pin="SDO" pad="3"/>
<connect gate="G$1" pin="VBAT" pad="19"/>
<connect gate="G$1" pin="VDD" pad="20"/>
<connect gate="G$1" pin="VSS" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="" package="SO20">
<connects>
<connect gate="G$1" pin="/INT" pad="17"/>
<connect gate="G$1" pin="/TS" pad="6"/>
<connect gate="G$1" pin="BBS" pad="18"/>
<connect gate="G$1" pin="CLKOUT" pad="7"/>
<connect gate="G$1" pin="IFS" pad="5"/>
<connect gate="G$1" pin="SCL" pad="1"/>
<connect gate="G$1" pin="SDA_/CE" pad="4"/>
<connect gate="G$1" pin="SDI" pad="2"/>
<connect gate="G$1" pin="SDO" pad="3"/>
<connect gate="G$1" pin="VBAT" pad="19"/>
<connect gate="G$1" pin="VDD" pad="20"/>
<connect gate="G$1" pin="VSS" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC33">
<gates>
<gate name="G$1" symbol="VCC33" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP" prefix="C" uservalue="yes">
<description>Non polar capacitor</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="DIP_2" package="CAP_DIP_2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="DIP_1" package="CAP_DIP_1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="DIP_4" package="CAP_DIP_4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="DIP_2_TCK_2" package="CAP_DIP_2_TCK_2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="31X17" package="CAP_31X17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="22X8" package="CAP_22X8">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="17X7" package="CAP_17X7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="DIP_2_9X3" package="CAP_DIP_2_9X3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SM1608" package="C1608">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="19X6" package="CAP_19X6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10X4" package="CAP_10X4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SM2012" package="C2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="2SC2712" prefix="Q">
<gates>
<gate name="G$1" symbol="NPN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SC59">
<connects>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="E" pad="E"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED" prefix="LED">
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="3MM_VIRT" package="LED_3MM_VIRT_2">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5MM_VIRT" package="LED_5MM_VIRT">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2125" package="LED2125">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="74*14" prefix="U">
<description>Hex schmitt trigger &lt;b&gt;INVERTER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="7414" x="0" y="2.54" swaplevel="1"/>
<gate name="B" symbol="7414" x="0" y="-10.16" swaplevel="1"/>
<gate name="C" symbol="7414" x="0" y="-22.86" swaplevel="1"/>
<gate name="D" symbol="7414" x="30.48" y="2.54" swaplevel="1"/>
<gate name="E" symbol="7414" x="30.48" y="-10.16" swaplevel="1"/>
<gate name="F" symbol="7414" x="30.48" y="-22.86" swaplevel="1"/>
<gate name="P" symbol="PWRN" x="-17.78" y="-12.7" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="A" pin="I" pad="13"/>
<connect gate="A" pin="O" pad="12"/>
<connect gate="B" pin="I" pad="11"/>
<connect gate="B" pin="O" pad="10"/>
<connect gate="C" pin="I" pad="9"/>
<connect gate="C" pin="O" pad="8"/>
<connect gate="D" pin="I" pad="1"/>
<connect gate="D" pin="O" pad="2"/>
<connect gate="E" pin="I" pad="3"/>
<connect gate="E" pin="O" pad="4"/>
<connect gate="F" pin="I" pad="5"/>
<connect gate="F" pin="O" pad="6"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name=""/>
<technology name="LS"/>
</technologies>
</device>
<device name="D" package="SO14">
<connects>
<connect gate="A" pin="I" pad="13"/>
<connect gate="A" pin="O" pad="12"/>
<connect gate="B" pin="I" pad="11"/>
<connect gate="B" pin="O" pad="10"/>
<connect gate="C" pin="I" pad="9"/>
<connect gate="C" pin="O" pad="8"/>
<connect gate="D" pin="I" pad="1"/>
<connect gate="D" pin="O" pad="2"/>
<connect gate="E" pin="I" pad="3"/>
<connect gate="E" pin="O" pad="4"/>
<connect gate="F" pin="I" pad="5"/>
<connect gate="F" pin="O" pad="6"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name=""/>
<technology name="LS"/>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="I" pad="2"/>
<connect gate="A" pin="O" pad="3"/>
<connect gate="B" pin="I" pad="4"/>
<connect gate="B" pin="O" pad="6"/>
<connect gate="C" pin="I" pad="8"/>
<connect gate="C" pin="O" pad="9"/>
<connect gate="D" pin="I" pad="13"/>
<connect gate="D" pin="O" pad="12"/>
<connect gate="E" pin="I" pad="16"/>
<connect gate="E" pin="O" pad="14"/>
<connect gate="F" pin="I" pad="19"/>
<connect gate="F" pin="O" pad="18"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name=""/>
<technology name="LS"/>
</technologies>
</device>
<device name="TSSOP14" package="TSSOP14">
<connects>
<connect gate="A" pin="I" pad="13"/>
<connect gate="A" pin="O" pad="12"/>
<connect gate="B" pin="I" pad="11"/>
<connect gate="B" pin="O" pad="10"/>
<connect gate="C" pin="I" pad="9"/>
<connect gate="C" pin="O" pad="8"/>
<connect gate="D" pin="I" pad="1"/>
<connect gate="D" pin="O" pad="2"/>
<connect gate="E" pin="I" pad="3"/>
<connect gate="E" pin="O" pad="4"/>
<connect gate="F" pin="I" pad="5"/>
<connect gate="F" pin="O" pad="6"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name=""/>
<technology name="LCX"/>
<technology name="VHCT"/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CON_5P" prefix="CN">
<gates>
<gate name="G$1" symbol="CON_5P" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CON_HDR_SIP5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CON_3P" prefix="CN">
<gates>
<gate name="G$1" symbol="CON_3P" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CON_HDR_SIP3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CON_6P" prefix="CN">
<gates>
<gate name="G$1" symbol="CON_6P" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CON_HDR_SIP6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DIODE" prefix="D" uservalue="yes">
<gates>
<gate name="G$1" symbol="DIODE" x="0" y="0"/>
</gates>
<devices>
<device name="GENERIC_2" package="DIODE_2">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="GENERIC_4" package="DIODE_4">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="GENERIC_3" package="DIODE_3">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SS26" package="SS26_DIODE">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SOD123" package="SOD123">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SOD323" package="SOD323">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="K" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" deviceset="A3L-LOC" device=""/>
<part name="U2" library="ESP32" deviceset="ESP32-WROOM" device=""/>
<part name="CN4" library="FlukeNic" deviceset="DM3AT-SF-PEJM5" device=""/>
<part name="CN1" library="FlukeNic" deviceset="5077CR-16-SMC2-BK-TR" device=""/>
<part name="U1" library="FlukeNic" deviceset="CH340K" device=""/>
<part name="U3" library="FlukeNic" deviceset="PCF2129" device="" value="PCF2129"/>
<part name="U$13" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$14" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$15" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="U$16" library="FlukeNic" deviceset="VCC50" device=""/>
<part name="R12" library="FlukeNic" deviceset="R" device="SMD2012" value="470"/>
<part name="R13" library="FlukeNic" deviceset="R" device="SMD2012" value="470"/>
<part name="C8" library="FlukeNic" deviceset="CAP" device="SM2012" value="0.01"/>
<part name="C9" library="FlukeNic" deviceset="CAP" device="SM2012" value="0.01"/>
<part name="U$21" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="U$22" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$24" library="FlukeNic" deviceset="GND" device=""/>
<part name="R15" library="FlukeNic" deviceset="R" device="SMD2012" value="3.3k"/>
<part name="R16" library="FlukeNic" deviceset="R" device="SMD2012" value="3.3k"/>
<part name="U$26" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="R2" library="FlukeNic" deviceset="R" device="SMD2012" value="5.1k"/>
<part name="R3" library="FlukeNic" deviceset="R" device="SMD2012" value="5.1k"/>
<part name="U$27" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$28" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$29" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$30" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$31" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$32" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="C1" library="FlukeNic" deviceset="CAP" device="SM2012" value="0.1"/>
<part name="U$40" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$43" library="FlukeNic" deviceset="VCC50" device=""/>
<part name="U$45" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$46" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$47" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="R1" library="FlukeNic" deviceset="R" device="SMD2012" value="10k"/>
<part name="R4" library="FlukeNic" deviceset="R" device="SMD2012" value="10k"/>
<part name="U$48" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$49" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$50" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="C2" library="FlukeNic" deviceset="CAP" device="SM2012" value="0.1"/>
<part name="C3" library="FlukeNic" deviceset="CAP" device="SM2012" value="0.1"/>
<part name="C4" library="FlukeNic" deviceset="CAP" device="SM2012" value="0.1"/>
<part name="C5" library="FlukeNic" deviceset="CAP" device="SM2012" value="0.1"/>
<part name="U$51" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$52" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$53" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$54" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$55" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="U$56" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="U$57" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="U$58" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="Q1" library="FlukeNic" deviceset="2SC2712" device=""/>
<part name="Q2" library="FlukeNic" deviceset="2SC2712" device=""/>
<part name="R6" library="FlukeNic" deviceset="R" device="SMD2012" value="10k"/>
<part name="R7" library="FlukeNic" deviceset="R" device="SMD2012" value="10k"/>
<part name="R8" library="FlukeNic" deviceset="R" device="SMD2012" value="10k"/>
<part name="R11" library="FlukeNic" deviceset="R" device="SMD2012" value="470"/>
<part name="U$59" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="LED1" library="FlukeNic" deviceset="LED" device="2125" value="PG1112H-TR"/>
<part name="U$60" library="FlukeNic" deviceset="GND" device=""/>
<part name="U5" library="FlukeNic" deviceset="74*14" device="TSSOP14" technology="LCX"/>
<part name="U4" library="FlukeNic" deviceset="74*14" device="TSSOP14" technology="VHCT" value="74ACT14TSSOP14"/>
<part name="C6" library="FlukeNic" deviceset="CAP" device="SM2012" value="0.1"/>
<part name="U$35" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$36" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="CN2" library="FlukeNic" deviceset="CON_5P" device=""/>
<part name="U$2" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$3" library="FlukeNic" deviceset="GND" device=""/>
<part name="CN3" library="FlukeNic" deviceset="CON_3P" device=""/>
<part name="U$4" library="FlukeNic" deviceset="GND" device=""/>
<part name="CN5" library="FlukeNic" deviceset="CON_6P" device=""/>
<part name="R9" library="FlukeNic" deviceset="R" device="SMD2012" value="10k"/>
<part name="R10" library="FlukeNic" deviceset="R" device="SMD2012" value="10k"/>
<part name="U$6" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$7" library="FlukeNic" deviceset="GND" device=""/>
<part name="D1" library="FlukeNic" deviceset="DIODE" device="SOD323" value="1SS355"/>
<part name="D2" library="FlukeNic" deviceset="DIODE" device="SOD323" value="1SS355"/>
<part name="D3" library="FlukeNic" deviceset="DIODE" device="SOD323" value="1SS355"/>
<part name="D4" library="FlukeNic" deviceset="DIODE" device="SOD323" value="1SS355"/>
<part name="R17" library="FlukeNic" deviceset="R" device="SMD2012" value="1k"/>
<part name="R14" library="FlukeNic" deviceset="R" device="SMD2012" value="10k"/>
<part name="U$5" library="FlukeNic" deviceset="VCC50" device=""/>
<part name="U$8" library="FlukeNic" deviceset="GND" device=""/>
<part name="R18" library="FlukeNic" deviceset="R" device="SMD2012" value="1k"/>
<part name="U$9" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$10" library="FlukeNic" deviceset="VCC50" device=""/>
<part name="U$1" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="U$11" library="FlukeNic" deviceset="GND" device=""/>
<part name="R5" library="FlukeNic" deviceset="R" device="SMD2012" value="10k"/>
<part name="C7" library="FlukeNic" deviceset="CAP" device="SM2012" value="0.1"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="226.06" y="175.26" size="1.778" layer="94">GPIO 6-11 not used</text>
<text x="226.06" y="177.8" size="1.778" layer="94">GPIO 34-37 read only</text>
<text x="195.58" y="238.76" size="1.778" layer="94">USB-C</text>
<text x="332.74" y="149.86" size="1.778" layer="94">Micro SD</text>
<text x="248.92" y="50.8" size="1.778" layer="94">RTC</text>
<text x="299.72" y="198.12" size="1.778" layer="94">Serial</text>
<text x="66.04" y="35.56" size="1.778" layer="94">74ACT04 5V Logic with 3V input accceptable</text>
<text x="66.04" y="30.48" size="1.778" layer="94">74LCX04 3V Logic with 5V input torelant</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="U2" gate="G$1" x="218.44" y="119.38"/>
<instance part="CN4" gate="G$1" x="340.36" y="134.62"/>
<instance part="CN1" gate="G$1" x="205.74" y="218.44" rot="MR0"/>
<instance part="U1" gate="G$1" x="279.4" y="215.9"/>
<instance part="U3" gate="G$1" x="243.84" y="76.2"/>
<instance part="U$13" gate="G$1" x="96.52" y="157.48"/>
<instance part="U$14" gate="G$1" x="124.46" y="157.48"/>
<instance part="U$15" gate="G$1" x="124.46" y="182.88"/>
<instance part="U$16" gate="G$1" x="96.52" y="180.34"/>
<instance part="R12" gate="G$1" x="106.68" y="116.84"/>
<instance part="R13" gate="G$1" x="106.68" y="109.22"/>
<instance part="C8" gate="G$1" x="96.52" y="116.84"/>
<instance part="C9" gate="G$1" x="96.52" y="109.22"/>
<instance part="U$21" gate="G$1" x="241.3" y="101.6"/>
<instance part="U$22" gate="G$1" x="243.84" y="58.42"/>
<instance part="U$24" gate="G$1" x="228.6" y="58.42"/>
<instance part="R15" gate="G$1" x="220.98" y="88.9" rot="R90"/>
<instance part="R16" gate="G$1" x="226.06" y="88.9" rot="R90"/>
<instance part="U$26" gate="G$1" x="220.98" y="101.6"/>
<instance part="R2" gate="G$1" x="246.38" y="203.2" smashed="yes" rot="R90">
<attribute name="NAME" x="245.11" y="200.66" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="243.205" y="210.82" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="R3" gate="G$1" x="251.46" y="203.2" smashed="yes" rot="R90">
<attribute name="NAME" x="250.19" y="200.66" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="248.285" y="210.82" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="U$27" gate="G$1" x="213.36" y="193.04"/>
<instance part="U$28" gate="G$1" x="233.68" y="193.04"/>
<instance part="U$29" gate="G$1" x="246.38" y="193.04"/>
<instance part="U$30" gate="G$1" x="251.46" y="193.04"/>
<instance part="U$31" gate="G$1" x="279.4" y="200.66"/>
<instance part="U$32" gate="G$1" x="279.4" y="233.68"/>
<instance part="C1" gate="G$1" x="106.68" y="162.56" rot="R90"/>
<instance part="U$40" gate="G$1" x="106.68" y="157.48"/>
<instance part="U$43" gate="G$1" x="106.68" y="165.1"/>
<instance part="U$45" gate="G$1" x="215.9" y="114.3"/>
<instance part="U$46" gate="G$1" x="251.46" y="114.3"/>
<instance part="U$47" gate="G$1" x="215.9" y="175.26"/>
<instance part="R1" gate="G$1" x="325.12" y="215.9"/>
<instance part="R4" gate="G$1" x="325.12" y="203.2"/>
<instance part="U$48" gate="G$1" x="322.58" y="114.3"/>
<instance part="U$49" gate="G$1" x="342.9" y="114.3"/>
<instance part="U$50" gate="G$1" x="322.58" y="162.56"/>
<instance part="C2" gate="G$1" x="134.62" y="162.56" rot="R90"/>
<instance part="C3" gate="G$1" x="144.78" y="162.56" rot="R90"/>
<instance part="C4" gate="G$1" x="154.94" y="162.56" rot="R90"/>
<instance part="C5" gate="G$1" x="165.1" y="162.56" rot="R90"/>
<instance part="U$51" gate="G$1" x="134.62" y="157.48"/>
<instance part="U$52" gate="G$1" x="144.78" y="157.48"/>
<instance part="U$53" gate="G$1" x="154.94" y="157.48"/>
<instance part="U$54" gate="G$1" x="165.1" y="157.48"/>
<instance part="U$55" gate="G$1" x="134.62" y="167.64"/>
<instance part="U$56" gate="G$1" x="144.78" y="167.64"/>
<instance part="U$57" gate="G$1" x="154.94" y="167.64"/>
<instance part="U$58" gate="G$1" x="165.1" y="167.64"/>
<instance part="Q1" gate="G$1" x="337.82" y="215.9"/>
<instance part="Q2" gate="G$1" x="337.82" y="203.2" rot="MR180"/>
<instance part="R6" gate="G$1" x="297.18" y="152.4" smashed="yes" rot="R90">
<attribute name="NAME" x="295.91" y="149.86" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="300.355" y="167.64" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R7" gate="G$1" x="302.26" y="152.4" smashed="yes" rot="R90">
<attribute name="NAME" x="300.99" y="149.86" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="302.895" y="167.64" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R8" gate="G$1" x="307.34" y="152.4" smashed="yes" rot="R90">
<attribute name="NAME" x="306.07" y="149.86" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="305.435" y="167.64" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R11" gate="G$1" x="203.2" y="147.32" rot="R90"/>
<instance part="U$59" gate="G$1" x="297.18" y="162.56"/>
<instance part="LED1" gate="G$1" x="203.2" y="139.7" rot="R270"/>
<instance part="U$60" gate="G$1" x="203.2" y="134.62"/>
<instance part="U5" gate="B" x="124.46" y="132.08"/>
<instance part="U5" gate="C" x="149.86" y="132.08"/>
<instance part="U5" gate="E" x="149.86" y="83.82"/>
<instance part="U5" gate="D" x="149.86" y="55.88" rot="R180"/>
<instance part="U5" gate="F" x="157.48" y="33.02"/>
<instance part="U5" gate="A" x="157.48" y="20.32"/>
<instance part="U4" gate="C" x="124.46" y="116.84" rot="R180"/>
<instance part="U4" gate="B" x="149.86" y="109.22" rot="R180"/>
<instance part="U4" gate="A" x="124.46" y="55.88" rot="R180"/>
<instance part="U4" gate="F" x="182.88" y="33.02"/>
<instance part="U5" gate="P" x="124.46" y="170.18"/>
<instance part="U4" gate="P" x="96.52" y="170.18"/>
<instance part="U4" gate="E" x="182.88" y="20.32"/>
<instance part="U4" gate="D" x="124.46" y="83.82"/>
<instance part="C6" gate="G$1" x="175.26" y="162.56" rot="R90"/>
<instance part="U$35" gate="G$1" x="175.26" y="157.48"/>
<instance part="U$36" gate="G$1" x="175.26" y="167.64"/>
<instance part="CN2" gate="G$1" x="35.56" y="193.04" rot="MR0"/>
<instance part="U$2" gate="G$1" x="55.88" y="182.88"/>
<instance part="U$3" gate="G$1" x="55.88" y="93.98"/>
<instance part="CN3" gate="G$1" x="35.56" y="157.48" rot="MR0"/>
<instance part="U$4" gate="G$1" x="45.72" y="149.86"/>
<instance part="CN5" gate="G$1" x="35.56" y="106.68" rot="MR0"/>
<instance part="R9" gate="G$1" x="312.42" y="152.4" smashed="yes" rot="R90">
<attribute name="NAME" x="311.15" y="149.86" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="307.975" y="167.64" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="R10" gate="G$1" x="317.5" y="152.4" smashed="yes" rot="R90">
<attribute name="NAME" x="316.23" y="149.86" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="310.515" y="167.64" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="U$6" gate="G$1" x="144.78" y="15.24"/>
<instance part="U$7" gate="G$1" x="170.18" y="15.24"/>
<instance part="D1" gate="G$1" x="104.14" y="88.9" rot="R90"/>
<instance part="D2" gate="G$1" x="104.14" y="78.74" rot="R90"/>
<instance part="D3" gate="G$1" x="104.14" y="60.96" rot="R90"/>
<instance part="D4" gate="G$1" x="104.14" y="50.8" rot="R90"/>
<instance part="R17" gate="G$1" x="96.52" y="83.82"/>
<instance part="R14" gate="G$1" x="111.76" y="88.9" rot="R90"/>
<instance part="U$5" gate="G$1" x="111.76" y="93.98"/>
<instance part="U$8" gate="G$1" x="104.14" y="73.66"/>
<instance part="R18" gate="G$1" x="96.52" y="55.88"/>
<instance part="U$9" gate="G$1" x="104.14" y="45.72"/>
<instance part="U$10" gate="G$1" x="104.14" y="63.5"/>
<instance part="U$1" gate="G$1" x="203.2" y="177.8"/>
<instance part="U$11" gate="G$1" x="203.2" y="157.48"/>
<instance part="R5" gate="G$1" x="203.2" y="170.18" rot="R90"/>
<instance part="C7" gate="G$1" x="203.2" y="162.56" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="SDI"/>
<wire x1="231.14" y1="76.2" x2="228.6" y2="76.2" width="0.1524" layer="91"/>
<wire x1="228.6" y1="76.2" x2="228.6" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$24" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="VSS"/>
<pinref part="U$22" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="CN1" gate="G$1" pin="B1A12"/>
<wire x1="228.6" y1="205.74" x2="233.68" y2="205.74" width="0.1524" layer="91"/>
<pinref part="CN1" gate="G$1" pin="A1B12"/>
<wire x1="228.6" y1="233.68" x2="233.68" y2="233.68" width="0.1524" layer="91"/>
<wire x1="233.68" y1="233.68" x2="233.68" y2="205.74" width="0.1524" layer="91"/>
<junction x="233.68" y="205.74"/>
<pinref part="U$28" gate="G$1" pin="GND"/>
<wire x1="233.68" y1="195.58" x2="233.68" y2="205.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$30" gate="G$1" pin="GND"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="251.46" y1="195.58" x2="251.46" y2="198.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="U$29" gate="G$1" pin="GND"/>
<wire x1="246.38" y1="198.12" x2="246.38" y2="195.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$31" gate="G$1" pin="GND"/>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="279.4" y1="203.2" x2="279.4" y2="205.74" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="GND0"/>
<wire x1="276.86" y1="205.74" x2="276.86" y2="203.2" width="0.1524" layer="91"/>
<wire x1="276.86" y1="203.2" x2="279.4" y2="203.2" width="0.1524" layer="91"/>
<junction x="279.4" y="203.2"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="1"/>
<pinref part="U$40" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GND4"/>
<pinref part="U$45" gate="G$1" pin="GND"/>
<wire x1="218.44" y1="121.92" x2="215.9" y2="121.92" width="0.1524" layer="91"/>
<wire x1="215.9" y1="121.92" x2="215.9" y2="116.84" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="GND1"/>
<wire x1="218.44" y1="134.62" x2="215.9" y2="134.62" width="0.1524" layer="91"/>
<wire x1="215.9" y1="134.62" x2="215.9" y2="121.92" width="0.1524" layer="91"/>
<junction x="215.9" y="121.92"/>
<pinref part="U2" gate="G$1" pin="GPIO34"/>
<wire x1="218.44" y1="157.48" x2="215.9" y2="157.48" width="0.1524" layer="91"/>
<wire x1="215.9" y1="157.48" x2="215.9" y2="154.94" width="0.1524" layer="91"/>
<junction x="215.9" y="134.62"/>
<pinref part="U2" gate="G$1" pin="GPIO35"/>
<wire x1="215.9" y1="154.94" x2="215.9" y2="134.62" width="0.1524" layer="91"/>
<wire x1="218.44" y1="154.94" x2="215.9" y2="154.94" width="0.1524" layer="91"/>
<junction x="215.9" y="154.94"/>
<pinref part="U2" gate="G$1" pin="GPIO36"/>
<wire x1="218.44" y1="162.56" x2="215.9" y2="162.56" width="0.1524" layer="91"/>
<wire x1="215.9" y1="162.56" x2="215.9" y2="160.02" width="0.1524" layer="91"/>
<junction x="215.9" y="157.48"/>
<pinref part="U2" gate="G$1" pin="GPIO39"/>
<wire x1="215.9" y1="160.02" x2="215.9" y2="157.48" width="0.1524" layer="91"/>
<wire x1="218.44" y1="160.02" x2="215.9" y2="160.02" width="0.1524" layer="91"/>
<junction x="215.9" y="160.02"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GND2"/>
<pinref part="U$46" gate="G$1" pin="GND"/>
<wire x1="248.92" y1="167.64" x2="251.46" y2="167.64" width="0.1524" layer="91"/>
<wire x1="251.46" y1="167.64" x2="251.46" y2="152.4" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="GND3"/>
<wire x1="251.46" y1="152.4" x2="251.46" y2="116.84" width="0.1524" layer="91"/>
<wire x1="248.92" y1="152.4" x2="251.46" y2="152.4" width="0.1524" layer="91"/>
<junction x="251.46" y="152.4"/>
</segment>
<segment>
<pinref part="CN4" gate="G$1" pin="VSS"/>
<wire x1="325.12" y1="132.08" x2="322.58" y2="132.08" width="0.1524" layer="91"/>
<wire x1="322.58" y1="132.08" x2="322.58" y2="116.84" width="0.1524" layer="91"/>
<pinref part="U$48" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="U$49" gate="G$1" pin="GND"/>
<pinref part="CN4" gate="G$1" pin="S1"/>
<wire x1="342.9" y1="116.84" x2="342.9" y2="119.38" width="0.1524" layer="91"/>
<pinref part="CN4" gate="G$1" pin="S4"/>
<wire x1="342.9" y1="116.84" x2="345.44" y2="116.84" width="0.1524" layer="91"/>
<wire x1="345.44" y1="116.84" x2="347.98" y2="116.84" width="0.1524" layer="91"/>
<wire x1="347.98" y1="116.84" x2="350.52" y2="116.84" width="0.1524" layer="91"/>
<wire x1="350.52" y1="116.84" x2="350.52" y2="119.38" width="0.1524" layer="91"/>
<junction x="342.9" y="116.84"/>
<pinref part="CN4" gate="G$1" pin="S3"/>
<wire x1="347.98" y1="119.38" x2="347.98" y2="116.84" width="0.1524" layer="91"/>
<junction x="347.98" y="116.84"/>
<pinref part="CN4" gate="G$1" pin="S2"/>
<wire x1="345.44" y1="116.84" x2="345.44" y2="119.38" width="0.1524" layer="91"/>
<junction x="345.44" y="116.84"/>
<pinref part="CN4" gate="G$1" pin="SWA"/>
<wire x1="337.82" y1="119.38" x2="337.82" y2="116.84" width="0.1524" layer="91"/>
<wire x1="337.82" y1="116.84" x2="342.9" y2="116.84" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="U$51" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="1"/>
<pinref part="U$52" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="1"/>
<pinref part="U$53" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="1"/>
<pinref part="U$54" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="LED1" gate="G$1" pin="K"/>
<pinref part="U$60" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="U5" gate="P" pin="GND"/>
<pinref part="U$14" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="U4" gate="P" pin="GND"/>
<pinref part="U$13" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="1"/>
<pinref part="U$35" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="40.64" y1="198.12" x2="55.88" y2="198.12" width="0.1524" layer="91"/>
<label x="43.18" y="198.12" size="1.778" layer="95"/>
<pinref part="CN2" gate="G$1" pin="1"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="55.88" y1="185.42" x2="55.88" y2="198.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="40.64" y1="111.76" x2="55.88" y2="111.76" width="0.1524" layer="91"/>
<wire x1="55.88" y1="111.76" x2="55.88" y2="96.52" width="0.1524" layer="91"/>
<label x="43.18" y="111.76" size="1.778" layer="95"/>
<pinref part="CN5" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="CN3" gate="G$1" pin="3"/>
<pinref part="U$4" gate="G$1" pin="GND"/>
<wire x1="40.64" y1="154.94" x2="45.72" y2="154.94" width="0.1524" layer="91"/>
<wire x1="45.72" y1="154.94" x2="45.72" y2="152.4" width="0.1524" layer="91"/>
<pinref part="CN3" gate="G$1" pin="2"/>
<wire x1="40.64" y1="157.48" x2="45.72" y2="157.48" width="0.1524" layer="91"/>
<wire x1="45.72" y1="157.48" x2="45.72" y2="154.94" width="0.1524" layer="91"/>
<junction x="45.72" y="154.94"/>
<pinref part="CN3" gate="G$1" pin="1"/>
<wire x1="40.64" y1="160.02" x2="45.72" y2="160.02" width="0.1524" layer="91"/>
<wire x1="45.72" y1="160.02" x2="45.72" y2="157.48" width="0.1524" layer="91"/>
<junction x="45.72" y="157.48"/>
</segment>
<segment>
<pinref part="U5" gate="F" pin="I"/>
<pinref part="U$6" gate="G$1" pin="GND"/>
<wire x1="147.32" y1="33.02" x2="144.78" y2="33.02" width="0.1524" layer="91"/>
<wire x1="144.78" y1="33.02" x2="144.78" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U5" gate="A" pin="I"/>
<wire x1="144.78" y1="20.32" x2="144.78" y2="17.78" width="0.1524" layer="91"/>
<wire x1="147.32" y1="20.32" x2="144.78" y2="20.32" width="0.1524" layer="91"/>
<junction x="144.78" y="20.32"/>
</segment>
<segment>
<pinref part="U4" gate="F" pin="I"/>
<pinref part="U$7" gate="G$1" pin="GND"/>
<wire x1="172.72" y1="33.02" x2="170.18" y2="33.02" width="0.1524" layer="91"/>
<wire x1="170.18" y1="33.02" x2="170.18" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U4" gate="E" pin="I"/>
<wire x1="170.18" y1="20.32" x2="170.18" y2="17.78" width="0.1524" layer="91"/>
<wire x1="172.72" y1="20.32" x2="170.18" y2="20.32" width="0.1524" layer="91"/>
<junction x="170.18" y="20.32"/>
</segment>
<segment>
<pinref part="D2" gate="G$1" pin="A"/>
<pinref part="U$8" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="D4" gate="G$1" pin="A"/>
<pinref part="U$9" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="GND"/>
<pinref part="C7" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="U$27" gate="G$1" pin="GND"/>
<pinref part="CN1" gate="G$1" pin="S1"/>
<wire x1="213.36" y1="195.58" x2="213.36" y2="198.12" width="0.1524" layer="91"/>
<pinref part="CN1" gate="G$1" pin="S4"/>
<wire x1="213.36" y1="198.12" x2="213.36" y2="200.66" width="0.1524" layer="91"/>
<wire x1="205.74" y1="200.66" x2="205.74" y2="198.12" width="0.1524" layer="91"/>
<wire x1="205.74" y1="198.12" x2="208.28" y2="198.12" width="0.1524" layer="91"/>
<junction x="213.36" y="198.12"/>
<pinref part="CN1" gate="G$1" pin="S2"/>
<wire x1="208.28" y1="198.12" x2="210.82" y2="198.12" width="0.1524" layer="91"/>
<wire x1="210.82" y1="198.12" x2="213.36" y2="198.12" width="0.1524" layer="91"/>
<wire x1="210.82" y1="200.66" x2="210.82" y2="198.12" width="0.1524" layer="91"/>
<junction x="210.82" y="198.12"/>
<pinref part="CN1" gate="G$1" pin="S3"/>
<wire x1="208.28" y1="200.66" x2="208.28" y2="198.12" width="0.1524" layer="91"/>
<junction x="208.28" y="198.12"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="139.7" y1="109.22" x2="137.16" y2="109.22" width="0.1524" layer="91"/>
<wire x1="137.16" y1="109.22" x2="111.76" y2="109.22" width="0.1524" layer="91"/>
<wire x1="134.62" y1="116.84" x2="137.16" y2="116.84" width="0.1524" layer="91"/>
<wire x1="137.16" y1="116.84" x2="137.16" y2="109.22" width="0.1524" layer="91"/>
<junction x="137.16" y="109.22"/>
<pinref part="R13" gate="G$1" pin="2"/>
<pinref part="U4" gate="C" pin="I"/>
<pinref part="U4" gate="B" pin="O"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="111.76" y1="116.84" x2="114.3" y2="116.84" width="0.1524" layer="91"/>
<pinref part="R12" gate="G$1" pin="2"/>
<pinref part="U4" gate="C" pin="O"/>
</segment>
</net>
<net name="VCC50" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<pinref part="U$43" gate="G$1" pin="VCC50"/>
</segment>
<segment>
<pinref part="U4" gate="P" pin="VCC"/>
<pinref part="U$16" gate="G$1" pin="VCC50"/>
</segment>
<segment>
<wire x1="40.64" y1="187.96" x2="58.42" y2="187.96" width="0.1524" layer="91"/>
<label x="43.18" y="187.96" size="1.778" layer="95"/>
<pinref part="CN2" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="R14" gate="G$1" pin="2"/>
<pinref part="U$5" gate="G$1" pin="VCC50"/>
<pinref part="D1" gate="G$1" pin="K"/>
<wire x1="111.76" y1="93.98" x2="104.14" y2="93.98" width="0.1524" layer="91"/>
<wire x1="104.14" y1="93.98" x2="104.14" y2="91.44" width="0.1524" layer="91"/>
<junction x="111.76" y="93.98"/>
</segment>
<segment>
<pinref part="D3" gate="G$1" pin="K"/>
<pinref part="U$10" gate="G$1" pin="VCC50"/>
</segment>
</net>
<net name="VCC33" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="VDD"/>
<pinref part="U$21" gate="G$1" pin="VCC33"/>
<wire x1="241.3" y1="93.98" x2="241.3" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R15" gate="G$1" pin="2"/>
<pinref part="U$26" gate="G$1" pin="VCC33"/>
<wire x1="220.98" y1="93.98" x2="220.98" y2="96.52" width="0.1524" layer="91"/>
<wire x1="220.98" y1="96.52" x2="220.98" y2="99.06" width="0.1524" layer="91"/>
<wire x1="220.98" y1="96.52" x2="226.06" y2="96.52" width="0.1524" layer="91"/>
<junction x="220.98" y="96.52"/>
<pinref part="R16" gate="G$1" pin="2"/>
<wire x1="226.06" y1="96.52" x2="226.06" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$32" gate="G$1" pin="VCC33"/>
<pinref part="U1" gate="G$1" pin="VCC"/>
<wire x1="279.4" y1="231.14" x2="279.4" y2="228.6" width="0.1524" layer="91"/>
<wire x1="279.4" y1="231.14" x2="281.94" y2="231.14" width="0.1524" layer="91"/>
<junction x="279.4" y="231.14"/>
<pinref part="U1" gate="G$1" pin="V3"/>
<wire x1="281.94" y1="231.14" x2="281.94" y2="228.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$47" gate="G$1" pin="VCC33"/>
<wire x1="215.9" y1="172.72" x2="215.9" y2="167.64" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="3.3V"/>
<wire x1="215.9" y1="167.64" x2="218.44" y2="167.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="CN4" gate="G$1" pin="VDD"/>
<wire x1="325.12" y1="137.16" x2="322.58" y2="137.16" width="0.1524" layer="91"/>
<wire x1="322.58" y1="137.16" x2="322.58" y2="160.02" width="0.1524" layer="91"/>
<pinref part="U$50" gate="G$1" pin="VCC33"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="U$58" gate="G$1" pin="VCC33"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="2"/>
<pinref part="U$57" gate="G$1" pin="VCC33"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="U$56" gate="G$1" pin="VCC33"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="U$55" gate="G$1" pin="VCC33"/>
</segment>
<segment>
<pinref part="R6" gate="G$1" pin="2"/>
<pinref part="U$59" gate="G$1" pin="VCC33"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="297.18" y1="157.48" x2="302.26" y2="157.48" width="0.1524" layer="91"/>
<junction x="297.18" y="157.48"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="302.26" y1="157.48" x2="307.34" y2="157.48" width="0.1524" layer="91"/>
<junction x="302.26" y="157.48"/>
<wire x1="297.18" y1="157.48" x2="297.18" y2="160.02" width="0.1524" layer="91"/>
<pinref part="R10" gate="G$1" pin="2"/>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="317.5" y1="157.48" x2="312.42" y2="157.48" width="0.1524" layer="91"/>
<wire x1="312.42" y1="157.48" x2="307.34" y2="157.48" width="0.1524" layer="91"/>
<junction x="312.42" y="157.48"/>
<junction x="307.34" y="157.48"/>
</segment>
<segment>
<pinref part="U5" gate="P" pin="VCC"/>
<pinref part="U$15" gate="G$1" pin="VCC33"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="2"/>
<pinref part="U$36" gate="G$1" pin="VCC33"/>
</segment>
<segment>
<wire x1="40.64" y1="190.5" x2="58.42" y2="190.5" width="0.1524" layer="91"/>
<label x="43.18" y="190.5" size="1.778" layer="95"/>
<pinref part="CN2" gate="G$1" pin="4"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="VCC33"/>
<pinref part="R5" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="R12" gate="G$1" pin="1"/>
<pinref part="C8" gate="G$1" pin="2"/>
<wire x1="101.6" y1="116.84" x2="99.06" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="R13" gate="G$1" pin="1"/>
<pinref part="C9" gate="G$1" pin="2"/>
<wire x1="101.6" y1="109.22" x2="99.06" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="SCL"/>
<wire x1="231.14" y1="78.74" x2="226.06" y2="78.74" width="0.1524" layer="91"/>
<pinref part="R16" gate="G$1" pin="1"/>
<wire x1="226.06" y1="78.74" x2="208.28" y2="78.74" width="0.1524" layer="91"/>
<wire x1="226.06" y1="83.82" x2="226.06" y2="78.74" width="0.1524" layer="91"/>
<junction x="226.06" y="78.74"/>
<label x="210.82" y="78.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GPIO22"/>
<wire x1="248.92" y1="162.56" x2="266.7" y2="162.56" width="0.1524" layer="91"/>
<label x="256.54" y="162.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="BBS" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="BBS"/>
<wire x1="246.38" y1="93.98" x2="246.38" y2="96.52" width="0.1524" layer="91"/>
<wire x1="246.38" y1="96.52" x2="259.08" y2="96.52" width="0.1524" layer="91"/>
<wire x1="259.08" y1="96.52" x2="259.08" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="IFS"/>
<wire x1="259.08" y1="81.28" x2="256.54" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VBAT" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="VBAT"/>
<wire x1="243.84" y1="93.98" x2="243.84" y2="99.06" width="0.1524" layer="91"/>
<wire x1="243.84" y1="99.06" x2="264.16" y2="99.06" width="0.1524" layer="91"/>
<label x="256.54" y="99.06" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="40.64" y1="195.58" x2="58.42" y2="195.58" width="0.1524" layer="91"/>
<label x="43.18" y="195.58" size="1.778" layer="95"/>
<pinref part="CN2" gate="G$1" pin="2"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="SDA_/CE"/>
<wire x1="231.14" y1="81.28" x2="220.98" y2="81.28" width="0.1524" layer="91"/>
<pinref part="R15" gate="G$1" pin="1"/>
<wire x1="220.98" y1="81.28" x2="208.28" y2="81.28" width="0.1524" layer="91"/>
<wire x1="220.98" y1="83.82" x2="220.98" y2="81.28" width="0.1524" layer="91"/>
<junction x="220.98" y="81.28"/>
<label x="210.82" y="81.28" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GPIO21"/>
<wire x1="248.92" y1="154.94" x2="266.7" y2="154.94" width="0.1524" layer="91"/>
<label x="256.54" y="154.94" size="1.778" layer="95"/>
</segment>
</net>
<net name="UD+" class="0">
<segment>
<pinref part="CN1" gate="G$1" pin="A6"/>
<pinref part="U1" gate="G$1" pin="UD+"/>
<wire x1="228.6" y1="220.98" x2="238.76" y2="220.98" width="0.1524" layer="91"/>
<pinref part="CN1" gate="G$1" pin="B6"/>
<wire x1="238.76" y1="220.98" x2="266.7" y2="220.98" width="0.1524" layer="91"/>
<wire x1="228.6" y1="215.9" x2="238.76" y2="215.9" width="0.1524" layer="91"/>
<wire x1="238.76" y1="215.9" x2="238.76" y2="220.98" width="0.1524" layer="91"/>
<junction x="238.76" y="220.98"/>
</segment>
</net>
<net name="UD-" class="0">
<segment>
<pinref part="CN1" gate="G$1" pin="A7"/>
<pinref part="U1" gate="G$1" pin="UD-"/>
<wire x1="228.6" y1="218.44" x2="236.22" y2="218.44" width="0.1524" layer="91"/>
<pinref part="CN1" gate="G$1" pin="B7"/>
<wire x1="236.22" y1="218.44" x2="266.7" y2="218.44" width="0.1524" layer="91"/>
<wire x1="228.6" y1="223.52" x2="236.22" y2="223.52" width="0.1524" layer="91"/>
<wire x1="236.22" y1="223.52" x2="236.22" y2="218.44" width="0.1524" layer="91"/>
<junction x="236.22" y="218.44"/>
</segment>
</net>
<net name="USB5V" class="0">
<segment>
<pinref part="CN1" gate="G$1" pin="A4B9"/>
<wire x1="228.6" y1="231.14" x2="241.3" y2="231.14" width="0.1524" layer="91"/>
<wire x1="241.3" y1="231.14" x2="241.3" y2="241.3" width="0.1524" layer="91"/>
<pinref part="CN1" gate="G$1" pin="B4A9"/>
<wire x1="228.6" y1="208.28" x2="241.3" y2="208.28" width="0.1524" layer="91"/>
<wire x1="241.3" y1="208.28" x2="241.3" y2="231.14" width="0.1524" layer="91"/>
<junction x="241.3" y="231.14"/>
<wire x1="218.44" y1="241.3" x2="241.3" y2="241.3" width="0.1524" layer="91"/>
<label x="220.98" y="241.3" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="40.64" y1="193.04" x2="58.42" y2="193.04" width="0.1524" layer="91"/>
<label x="43.18" y="193.04" size="1.778" layer="95"/>
<pinref part="CN2" gate="G$1" pin="3"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="CN1" gate="G$1" pin="B5"/>
<wire x1="228.6" y1="210.82" x2="246.38" y2="210.82" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="246.38" y1="210.82" x2="246.38" y2="208.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="CN1" gate="G$1" pin="A5"/>
<wire x1="228.6" y1="226.06" x2="251.46" y2="226.06" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="251.46" y1="208.28" x2="251.46" y2="226.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U0RX" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="RX"/>
<wire x1="248.92" y1="157.48" x2="266.7" y2="157.48" width="0.1524" layer="91"/>
<label x="256.54" y="157.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="TXD"/>
<wire x1="307.34" y1="223.52" x2="294.64" y2="223.52" width="0.1524" layer="91"/>
<label x="299.72" y="223.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="U0TX" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="TX"/>
<wire x1="266.7" y1="160.02" x2="248.92" y2="160.02" width="0.1524" layer="91"/>
<label x="256.54" y="160.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="RXD"/>
<wire x1="294.64" y1="220.98" x2="307.34" y2="220.98" width="0.1524" layer="91"/>
<label x="299.72" y="220.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="GPIO23"/>
<wire x1="248.92" y1="165.1" x2="266.7" y2="165.1" width="0.1524" layer="91"/>
<label x="256.54" y="165.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CN4" gate="G$1" pin="CMD"/>
<wire x1="325.12" y1="139.7" x2="302.26" y2="139.7" width="0.1524" layer="91"/>
<label x="284.48" y="139.7" size="1.778" layer="95"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="302.26" y1="139.7" x2="284.48" y2="139.7" width="0.1524" layer="91"/>
<wire x1="302.26" y1="147.32" x2="302.26" y2="139.7" width="0.1524" layer="91"/>
<junction x="302.26" y="139.7"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="GPIO19"/>
<wire x1="248.92" y1="149.86" x2="266.7" y2="149.86" width="0.1524" layer="91"/>
<label x="256.54" y="149.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CN4" gate="G$1" pin="DAT0"/>
<wire x1="325.12" y1="129.54" x2="307.34" y2="129.54" width="0.1524" layer="91"/>
<label x="284.48" y="129.54" size="1.778" layer="95"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="307.34" y1="129.54" x2="284.48" y2="129.54" width="0.1524" layer="91"/>
<wire x1="307.34" y1="147.32" x2="307.34" y2="129.54" width="0.1524" layer="91"/>
<junction x="307.34" y="129.54"/>
</segment>
</net>
<net name="SPICLK" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="GPIO18"/>
<wire x1="248.92" y1="147.32" x2="266.7" y2="147.32" width="0.1524" layer="91"/>
<label x="256.54" y="147.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CN4" gate="G$1" pin="CLK"/>
<wire x1="325.12" y1="134.62" x2="284.48" y2="134.62" width="0.1524" layer="91"/>
<label x="284.48" y="134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="SPICS" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="GPIO5"/>
<wire x1="248.92" y1="144.78" x2="266.7" y2="144.78" width="0.1524" layer="91"/>
<label x="256.54" y="144.78" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CN4" gate="G$1" pin="CD/DAT3"/>
<wire x1="325.12" y1="142.24" x2="297.18" y2="142.24" width="0.1524" layer="91"/>
<label x="284.48" y="142.24" size="1.778" layer="95"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="297.18" y1="142.24" x2="284.48" y2="142.24" width="0.1524" layer="91"/>
<wire x1="297.18" y1="147.32" x2="297.18" y2="142.24" width="0.1524" layer="91"/>
<junction x="297.18" y="142.24"/>
</segment>
</net>
<net name="U2RX" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="GPIO16"/>
<wire x1="248.92" y1="139.7" x2="266.7" y2="139.7" width="0.1524" layer="91"/>
<label x="256.54" y="139.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U5" gate="C" pin="O"/>
<wire x1="160.02" y1="132.08" x2="177.8" y2="132.08" width="0.1524" layer="91"/>
<label x="167.64" y="132.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="U2TX" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="GPIO17"/>
<wire x1="266.7" y1="142.24" x2="248.92" y2="142.24" width="0.1524" layer="91"/>
<label x="256.54" y="142.24" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U4" gate="B" pin="I"/>
<wire x1="160.02" y1="109.22" x2="177.8" y2="109.22" width="0.1524" layer="91"/>
<label x="167.64" y="109.22" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="330.2" y1="215.9" x2="335.28" y2="215.9" width="0.1524" layer="91"/>
<pinref part="Q1" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="335.28" y1="203.2" x2="330.2" y2="203.2" width="0.1524" layer="91"/>
<pinref part="Q2" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="320.04" y1="215.9" x2="317.5" y2="215.9" width="0.1524" layer="91"/>
<wire x1="317.5" y1="215.9" x2="317.5" y2="208.28" width="0.1524" layer="91"/>
<junction x="317.5" y="215.9"/>
<wire x1="317.5" y1="208.28" x2="340.36" y2="208.28" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="DTR#"/>
<wire x1="294.64" y1="215.9" x2="317.5" y2="215.9" width="0.1524" layer="91"/>
<pinref part="Q2" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="320.04" y1="203.2" x2="312.42" y2="203.2" width="0.1524" layer="91"/>
<wire x1="320.04" y1="203.2" x2="320.04" y2="210.82" width="0.1524" layer="91"/>
<junction x="320.04" y="203.2"/>
<wire x1="320.04" y1="210.82" x2="340.36" y2="210.82" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="RTS#"/>
<wire x1="294.64" y1="213.36" x2="312.42" y2="213.36" width="0.1524" layer="91"/>
<wire x1="312.42" y1="213.36" x2="312.42" y2="203.2" width="0.1524" layer="91"/>
<pinref part="Q1" gate="G$1" pin="E"/>
</segment>
</net>
<net name="EN" class="0">
<segment>
<wire x1="340.36" y1="220.98" x2="350.52" y2="220.98" width="0.1524" layer="91"/>
<label x="342.9" y="220.98" size="1.778" layer="95"/>
<pinref part="Q1" gate="G$1" pin="C"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="EN"/>
<wire x1="218.44" y1="165.1" x2="203.2" y2="165.1" width="0.1524" layer="91"/>
<label x="195.58" y="165.1" size="1.778" layer="95"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="203.2" y1="165.1" x2="195.58" y2="165.1" width="0.1524" layer="91"/>
<junction x="203.2" y="165.1"/>
<pinref part="C7" gate="G$1" pin="2"/>
</segment>
</net>
<net name="BOOT" class="0">
<segment>
<wire x1="350.52" y1="198.12" x2="340.36" y2="198.12" width="0.1524" layer="91"/>
<label x="342.9" y="198.12" size="1.778" layer="95"/>
<pinref part="Q2" gate="G$1" pin="C"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GPIO0"/>
<wire x1="248.92" y1="134.62" x2="266.7" y2="134.62" width="0.1524" layer="91"/>
<label x="256.54" y="134.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="LED1" gate="G$1" pin="A"/>
<pinref part="R11" gate="G$1" pin="1"/>
</segment>
</net>
<net name="STATUS" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="GPIO32"/>
<pinref part="R11" gate="G$1" pin="2"/>
<wire x1="218.44" y1="152.4" x2="203.2" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CARD" class="0">
<segment>
<pinref part="CN4" gate="G$1" pin="SWB"/>
<wire x1="325.12" y1="124.46" x2="284.48" y2="124.46" width="0.1524" layer="91"/>
<label x="284.48" y="124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GPIO33"/>
<wire x1="218.44" y1="149.86" x2="205.74" y2="149.86" width="0.1524" layer="91"/>
<label x="205.74" y="149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U5" gate="B" pin="O"/>
<pinref part="U5" gate="C" pin="I"/>
<wire x1="134.62" y1="132.08" x2="139.7" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX" class="0">
<segment>
<pinref part="U5" gate="B" pin="I"/>
<wire x1="114.3" y1="132.08" x2="78.74" y2="132.08" width="0.1524" layer="91"/>
<label x="81.28" y="132.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CN5" gate="G$1" pin="4"/>
<wire x1="40.64" y1="104.14" x2="58.42" y2="104.14" width="0.1524" layer="91"/>
<label x="43.18" y="104.14" size="1.778" layer="95"/>
</segment>
</net>
<net name="TXP" class="0">
<segment>
<pinref part="C8" gate="G$1" pin="1"/>
<wire x1="93.98" y1="116.84" x2="78.74" y2="116.84" width="0.1524" layer="91"/>
<label x="81.28" y="116.84" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="40.64" y1="109.22" x2="58.42" y2="109.22" width="0.1524" layer="91"/>
<label x="43.18" y="109.22" size="1.778" layer="95"/>
<pinref part="CN5" gate="G$1" pin="2"/>
</segment>
</net>
<net name="TXN" class="0">
<segment>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="93.98" y1="109.22" x2="78.74" y2="109.22" width="0.1524" layer="91"/>
<label x="81.28" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="40.64" y1="106.68" x2="58.42" y2="106.68" width="0.1524" layer="91"/>
<label x="43.18" y="106.68" size="1.778" layer="95"/>
<pinref part="CN5" gate="G$1" pin="3"/>
</segment>
</net>
<net name="EVIN" class="0">
<segment>
<wire x1="91.44" y1="83.82" x2="78.74" y2="83.82" width="0.1524" layer="91"/>
<label x="81.28" y="83.82" size="1.778" layer="95"/>
<pinref part="R17" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="40.64" y1="99.06" x2="58.42" y2="99.06" width="0.1524" layer="91"/>
<label x="43.18" y="99.06" size="1.778" layer="95"/>
<pinref part="CN5" gate="G$1" pin="6"/>
</segment>
</net>
<net name="EVOUT" class="0">
<segment>
<wire x1="91.44" y1="55.88" x2="78.74" y2="55.88" width="0.1524" layer="91"/>
<label x="81.28" y="55.88" size="1.778" layer="95"/>
<pinref part="R18" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="40.64" y1="101.6" x2="58.42" y2="101.6" width="0.1524" layer="91"/>
<label x="43.18" y="101.6" size="1.778" layer="95"/>
<pinref part="CN5" gate="G$1" pin="5"/>
</segment>
</net>
<net name="_EVIN" class="0">
<segment>
<wire x1="160.02" y1="83.82" x2="177.8" y2="83.82" width="0.1524" layer="91"/>
<label x="167.64" y="83.82" size="1.778" layer="95"/>
<pinref part="U5" gate="E" pin="O"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GPIO4"/>
<wire x1="248.92" y1="137.16" x2="266.7" y2="137.16" width="0.1524" layer="91"/>
<label x="256.54" y="137.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="_EVOUT" class="0">
<segment>
<wire x1="177.8" y1="55.88" x2="160.02" y2="55.88" width="0.1524" layer="91"/>
<label x="167.64" y="55.88" size="1.778" layer="95"/>
<pinref part="U5" gate="D" pin="I"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GPIO2"/>
<wire x1="248.92" y1="132.08" x2="266.7" y2="132.08" width="0.1524" layer="91"/>
<label x="256.54" y="132.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U5" gate="D" pin="O"/>
<pinref part="U4" gate="A" pin="I"/>
<wire x1="139.7" y1="55.88" x2="134.62" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U4" gate="D" pin="O"/>
<pinref part="U5" gate="E" pin="I"/>
<wire x1="134.62" y1="83.82" x2="139.7" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DAT2" class="0">
<segment>
<pinref part="CN4" gate="G$1" pin="DAT2"/>
<wire x1="325.12" y1="144.78" x2="317.5" y2="144.78" width="0.1524" layer="91"/>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="317.5" y1="144.78" x2="317.5" y2="147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DAT1" class="0">
<segment>
<pinref part="CN4" gate="G$1" pin="DAT1"/>
<wire x1="325.12" y1="127" x2="312.42" y2="127" width="0.1524" layer="91"/>
<pinref part="R9" gate="G$1" pin="1"/>
<wire x1="312.42" y1="127" x2="312.42" y2="147.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U4" gate="D" pin="I"/>
<pinref part="R14" gate="G$1" pin="1"/>
<wire x1="114.3" y1="83.82" x2="111.76" y2="83.82" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="111.76" y1="83.82" x2="104.14" y2="83.82" width="0.1524" layer="91"/>
<wire x1="104.14" y1="83.82" x2="104.14" y2="86.36" width="0.1524" layer="91"/>
<junction x="111.76" y="83.82"/>
<pinref part="D2" gate="G$1" pin="K"/>
<wire x1="104.14" y1="81.28" x2="104.14" y2="83.82" width="0.1524" layer="91"/>
<junction x="104.14" y="83.82"/>
<pinref part="R17" gate="G$1" pin="2"/>
<wire x1="101.6" y1="83.82" x2="104.14" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="R18" gate="G$1" pin="2"/>
<pinref part="U4" gate="A" pin="O"/>
<wire x1="101.6" y1="55.88" x2="104.14" y2="55.88" width="0.1524" layer="91"/>
<pinref part="D3" gate="G$1" pin="A"/>
<wire x1="104.14" y1="55.88" x2="114.3" y2="55.88" width="0.1524" layer="91"/>
<wire x1="104.14" y1="58.42" x2="104.14" y2="55.88" width="0.1524" layer="91"/>
<junction x="104.14" y="55.88"/>
<pinref part="D4" gate="G$1" pin="K"/>
<wire x1="104.14" y1="53.34" x2="104.14" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
