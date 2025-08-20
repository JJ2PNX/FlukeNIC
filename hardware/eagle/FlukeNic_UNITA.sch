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
<layer number="1" name="Top" color="4" fill="1" visible="yes" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="yes" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="yes" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="yes" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="yes" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="yes" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="yes" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="yes" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="yes" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="yes" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="yes" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="yes" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="yes" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="yes" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="yes" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="yes" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="yes" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="yes" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="yes" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="yes" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="yes" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="yes" active="no"/>
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
<library name="FlukeNic">
<packages>
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
<pad name="1" x="-5.08" y="0" drill="0.8"/>
<pad name="2" x="5.08" y="0" drill="0.8"/>
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
<package name="TO252">
<description>&lt;b&gt;SMALL OUTLINE TRANSISTOR&lt;/b&gt;&lt;p&gt;
TS-003</description>
<wire x1="3.2766" y1="3.8354" x2="3.277" y2="-2.159" width="0.2032" layer="21"/>
<wire x1="3.277" y1="-2.159" x2="-3.277" y2="-2.159" width="0.2032" layer="21"/>
<wire x1="-3.277" y1="-2.159" x2="-3.2766" y2="3.8354" width="0.2032" layer="21"/>
<wire x1="-3.277" y1="3.835" x2="3.2774" y2="3.8346" width="0.2032" layer="51"/>
<wire x1="-3.973" y1="5.983" x2="3.973" y2="5.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-5.983" x2="-3.973" y2="-5.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-5.983" x2="-3.973" y2="5.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="5.983" x2="3.973" y2="-5.983" width="0.0508" layer="39"/>
<wire x1="-2.5654" y1="3.937" x2="-2.5654" y2="4.6482" width="0.2032" layer="51"/>
<wire x1="-2.5654" y1="4.6482" x2="-2.1082" y2="5.1054" width="0.2032" layer="51"/>
<wire x1="-2.1082" y1="5.1054" x2="2.1082" y2="5.1054" width="0.2032" layer="51"/>
<wire x1="2.1082" y1="5.1054" x2="2.5654" y2="4.6482" width="0.2032" layer="51"/>
<wire x1="2.5654" y1="4.6482" x2="2.5654" y2="3.937" width="0.2032" layer="51"/>
<wire x1="2.5654" y1="3.937" x2="-2.5654" y2="3.937" width="0.2032" layer="51"/>
<smd name="2" x="0" y="2.5" dx="5.4" dy="6.2" layer="1"/>
<smd name="1" x="-2.28" y="-4.8" dx="1" dy="1.6" layer="1"/>
<smd name="3" x="2.28" y="-4.8" dx="1" dy="1.6" layer="1"/>
<text x="-3.81" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.08" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.7178" y1="-5.1562" x2="-1.8542" y2="-2.2606" layer="51"/>
<rectangle x1="1.8542" y1="-5.1562" x2="2.7178" y2="-2.2606" layer="51"/>
<rectangle x1="-0.4318" y1="-3.0226" x2="0.4318" y2="-2.2606" layer="21"/>
<polygon width="0.1998" layer="51">
<vertex x="-2.5654" y="3.937"/>
<vertex x="-2.5654" y="4.6482"/>
<vertex x="-2.1082" y="5.1054"/>
<vertex x="2.1082" y="5.1054"/>
<vertex x="2.5654" y="4.6482"/>
<vertex x="2.5654" y="3.937"/>
</polygon>
</package>
<package name="TO220-HORZ">
<wire x1="-5" y1="6" x2="-5" y2="4" width="0.254" layer="21"/>
<wire x1="-5" y1="-4" x2="-5" y2="-6" width="0.254" layer="21"/>
<wire x1="-5" y1="4" x2="2.5" y2="4" width="0.254" layer="21"/>
<wire x1="2.5" y1="4" x2="2.5" y2="-4" width="0.254" layer="21"/>
<wire x1="2.5" y1="-4" x2="-5" y2="-4" width="0.254" layer="21"/>
<wire x1="-5" y1="6" x2="-23" y2="6" width="0.254" layer="21"/>
<wire x1="-23" y1="6" x2="-23" y2="-6" width="0.254" layer="21"/>
<wire x1="-23" y1="-6" x2="-5" y2="-6" width="0.254" layer="21"/>
<pad name="3" x="0" y="2.54" drill="1" shape="long"/>
<pad name="2" x="0" y="0" drill="1" shape="long"/>
<pad name="1" x="0" y="-2.54" drill="1" shape="long"/>
<text x="-22.225" y="8.255" size="1.27" layer="25">&gt;NAME</text>
<text x="-22.225" y="6.35" size="1.27" layer="27">&gt;VALUE</text>
<polygon width="0.254" layer="29">
<vertex x="-22.5425" y="5.3975"/>
<vertex x="-5.3975" y="5.3975"/>
<vertex x="-5.3975" y="-5.3975"/>
<vertex x="-22.5425" y="-5.3975"/>
</polygon>
</package>
<package name="TO220-VIRT">
<wire x1="-1.905" y1="5.715" x2="-1.905" y2="-5.715" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-5.715" x2="2.54" y2="-5.715" width="0.254" layer="21"/>
<wire x1="2.54" y1="-5.715" x2="2.54" y2="5.715" width="0.254" layer="21"/>
<wire x1="2.54" y1="5.715" x2="-1.905" y2="5.715" width="0.254" layer="21"/>
<wire x1="-1.905" y1="5.715" x2="-2.54" y2="5.715" width="0.254" layer="21"/>
<wire x1="-2.54" y1="5.715" x2="-2.54" y2="-5.715" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-5.715" x2="-1.905" y2="-5.715" width="0.254" layer="21"/>
<pad name="3" x="0" y="2.54" drill="1"/>
<pad name="2" x="0" y="0" drill="1"/>
<pad name="1" x="0" y="-2.54" drill="1"/>
<text x="-1.905" y="8.89" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="6.985" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CCAP_6.5">
<description>6.5mm diameter
2.54mm pitch
1mm hole</description>
<wire x1="-4.7" y1="0" x2="-3.7" y2="0" width="0.254" layer="21"/>
<wire x1="-4.2" y1="0.5" x2="-4.2" y2="-0.5" width="0.254" layer="21"/>
<circle x="0" y="0" radius="3.3" width="0.254" layer="21"/>
<pad name="+" x="-1.27" y="0" drill="0.8"/>
<pad name="-" x="1.27" y="0" drill="0.8"/>
<text x="-3" y="3.595" size="1.27" layer="25">&gt;NAME</text>
<text x="-3" y="0.96" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CCAP_10.5">
<description>10.5mm diameter</description>
<wire x1="-7.1" y1="0" x2="-6.1" y2="0" width="0.254" layer="21"/>
<wire x1="-6.6" y1="0.5" x2="-6.6" y2="-0.5" width="0.254" layer="21"/>
<circle x="0" y="0" radius="5.4" width="0.254" layer="21"/>
<pad name="-" x="2.54" y="0" drill="1"/>
<pad name="+" x="-2.54" y="0" drill="1" shape="octagon"/>
<text x="-3" y="8" size="1.27" layer="25">&gt;NAME</text>
<text x="-3" y="6" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CCAP_13">
<description>13mm diameter</description>
<wire x1="-8.3" y1="0" x2="-7.1" y2="0" width="0.254" layer="21"/>
<wire x1="-7.7" y1="0.6" x2="-7.7" y2="-0.6" width="0.254" layer="21"/>
<circle x="0" y="0" radius="6.5" width="0.254" layer="21"/>
<pad name="-" x="2.5" y="0" drill="1.2"/>
<pad name="+" x="-2.5" y="0" drill="1.2" shape="octagon"/>
<text x="-3.5" y="8.5" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.5" y="7" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CCAP_4">
<description>Polar capacitor 200mil pitch 4mm diameter</description>
<wire x1="-3.176" y1="0" x2="-2.176" y2="0" width="0.254" layer="21"/>
<wire x1="-2.676" y1="0.5" x2="-2.676" y2="-0.5" width="0.254" layer="21"/>
<circle x="0" y="0" radius="2" width="0.127" layer="21"/>
<pad name="+" x="-1.27" y="0" drill="0.9" shape="octagon"/>
<pad name="-" x="1.27" y="0" drill="0.9"/>
<text x="-2.54" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CCAP_8.5">
<description>8.5mm diameter
3.81mm pitch
1mm hole</description>
<wire x1="-5.7" y1="0" x2="-4.7" y2="0" width="0.254" layer="21"/>
<wire x1="-5.2" y1="0.5" x2="-5.2" y2="-0.5" width="0.254" layer="21"/>
<circle x="0" y="0" radius="4.2" width="0.254" layer="21"/>
<pad name="-" x="1.905" y="0" drill="1"/>
<pad name="+" x="-1.905" y="0" drill="1"/>
<text x="-3" y="4.495" size="1.27" layer="25">&gt;NAME</text>
<text x="-3" y="0.79" size="1.27" layer="27">&gt;VALUE</text>
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
<pad name="A" x="-5.08" y="0" drill="0.8"/>
<pad name="K" x="5.08" y="0" drill="0.8"/>
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
<package name="PS-10PE-D4T2-M1E">
<pad name="9" x="-5.08" y="1.27" drill="0.8"/>
<pad name="10" x="-5.08" y="-1.27" drill="0.8"/>
<pad name="7" x="-2.54" y="1.27" drill="0.8"/>
<pad name="8" x="-2.54" y="-1.27" drill="0.8"/>
<pad name="5" x="0" y="1.27" drill="0.8"/>
<pad name="6" x="0" y="-1.27" drill="0.8"/>
<pad name="3" x="2.54" y="1.27" drill="0.8"/>
<pad name="4" x="2.54" y="-1.27" drill="0.8"/>
<pad name="1" x="5.08" y="1.27" drill="0.8" shape="octagon"/>
<pad name="2" x="5.08" y="-1.27" drill="0.8"/>
<wire x1="-16" y1="4.15" x2="-16" y2="-4.15" width="0.254" layer="21"/>
<wire x1="16" y1="4.15" x2="16" y2="-4.15" width="0.254" layer="21"/>
<wire x1="-16" y1="4.15" x2="16" y2="4.15" width="0.254" layer="21"/>
<wire x1="16" y1="-4.15" x2="-16" y2="-4.15" width="0.254" layer="21"/>
<wire x1="5.08" y1="4.445" x2="4.7625" y2="5.3975" width="0.254" layer="21"/>
<wire x1="4.7625" y1="5.3975" x2="5.3975" y2="5.3975" width="0.254" layer="21"/>
<wire x1="5.3975" y1="5.3975" x2="5.08" y2="4.445" width="0.254" layer="21"/>
<wire x1="-3.77951875" y1="2.834640625" x2="-3.1496" y2="4.09448125" width="0.254" layer="21"/>
<wire x1="-3.77951875" y1="2.834640625" x2="-4.409440625" y2="4.09448125" width="0.254" layer="21"/>
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
<package name="B-057-HP">
<pad name="HOT" x="0" y="-5.08" drill="0.9"/>
<pad name="COLD" x="-2.54" y="-5.08" drill="0.9"/>
<pad name="POST2" x="5.08" y="0" drill="2"/>
<pad name="POST1" x="-5.08" y="0" drill="2"/>
<wire x1="7.25" y1="7.4" x2="7.25" y2="-6.35" width="0" layer="51"/>
<wire x1="-7.25" y1="7.4" x2="-7.25" y2="-6.35" width="0" layer="51"/>
<wire x1="-7.25" y1="7.4" x2="-6.3" y2="7.4" width="0" layer="51"/>
<wire x1="-6.3" y1="7.4" x2="6.3" y2="7.4" width="0" layer="51"/>
<wire x1="6.3" y1="7.4" x2="7.25" y2="7.4" width="0" layer="51"/>
<wire x1="-4.8" y1="27.4" x2="4.8" y2="27.4" width="0" layer="51"/>
<wire x1="-6.3" y1="16.5" x2="-4.8" y2="16.5" width="0" layer="51"/>
<wire x1="-4.8" y1="16.5" x2="4.8" y2="16.5" width="0" layer="51"/>
<wire x1="4.8" y1="16.5" x2="6.3" y2="16.5" width="0" layer="51"/>
<wire x1="-6.3" y1="16.5" x2="-6.3" y2="7.4" width="0" layer="51"/>
<wire x1="6.3" y1="16.5" x2="6.3" y2="7.4" width="0" layer="51"/>
<wire x1="4.8" y1="27.4" x2="4.8" y2="16.5" width="0" layer="51"/>
<wire x1="-4.8" y1="27.4" x2="-4.8" y2="16.5" width="0" layer="51"/>
<wire x1="-7.25" y1="-6.35" x2="7.25" y2="-6.35" width="0" layer="51"/>
<wire x1="-7.25" y1="7.4" x2="7.25" y2="7.4" width="0.254" layer="21"/>
<wire x1="7.25" y1="7.4" x2="7.25" y2="-6.35" width="0.254" layer="21"/>
<wire x1="7.25" y1="-6.35" x2="-7.25" y2="-6.35" width="0.254" layer="21"/>
<wire x1="-7.25" y1="-6.35" x2="-7.25" y2="7.4" width="0.254" layer="21"/>
<text x="-3.81" y="3.81" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="TO92">
<description>TO-92 Transistor</description>
<wire x1="-2.095" y1="-1.651" x2="2.095" y2="-1.651" width="0.254" layer="21"/>
<wire x1="-2.413" y1="1.1359" x2="2.413" y2="1.1359" width="0.254" layer="21" curve="-129.583345" cap="flat"/>
<wire x1="1.136" y1="-0.127" x2="-1.136" y2="-0.127" width="0.127" layer="51"/>
<wire x1="-2.413" y1="1.1359" x2="-2.413" y2="-1.1359" width="0.127" layer="51" curve="50.416655" cap="flat"/>
<wire x1="-1.404" y1="-0.127" x2="-2.664" y2="-0.127" width="0.127" layer="51"/>
<wire x1="-2.4135" y1="-1.1359" x2="-2.095" y2="-1.651" width="0.254" layer="21" curve="13.038528" cap="flat"/>
<wire x1="2.413" y1="-1.1359" x2="2.413" y2="1.1359" width="0.127" layer="51" curve="50.416655" cap="flat"/>
<wire x1="2.664" y1="-0.127" x2="1.404" y2="-0.127" width="0.127" layer="51"/>
<wire x1="2.095" y1="-1.651" x2="2.4247" y2="-1.1118" width="0.254" layer="21" curve="13.609443" cap="flat"/>
<pad name="C" x="0" y="0" drill="0.9" rot="R90"/>
<pad name="E" x="-2.54" y="0" drill="0.9" rot="R90"/>
<pad name="B" x="2.54" y="0" drill="0.9" rot="R90"/>
<text x="-2.54" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.302" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
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
<package name="CCAP_16">
<wire x1="-9.8" y1="0" x2="-8.6" y2="0" width="0.254" layer="21"/>
<wire x1="-9.2" y1="0.6" x2="-9.2" y2="-0.6" width="0.254" layer="21"/>
<circle x="0" y="0" radius="8" width="0.254" layer="21"/>
<text x="-3.5" y="10" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.5" y="8.5" size="1.27" layer="27">&gt;VALUE</text>
<pad name="-" x="3.81" y="0" drill="1.1"/>
<pad name="+" x="-3.81" y="0" drill="1.1"/>
</package>
<package name="UNITB">
<wire x1="59.69" y1="6.985" x2="59.69" y2="1.27" width="0" layer="51"/>
<wire x1="54.61" y1="3.175" x2="64.135" y2="3.175" width="0" layer="51"/>
<wire x1="2.54" y1="31.75" x2="18.415" y2="31.75" width="0" layer="51"/>
<wire x1="10.795" y1="26.67" x2="10.795" y2="34.29" width="0" layer="51"/>
<wire x1="86.995" y1="34.29" x2="86.995" y2="18.415" width="0" layer="51"/>
<wire x1="85.09" y1="26.3525" x2="88.9" y2="26.3525" width="0" layer="51"/>
<pad name="CN2-3" x="10.795" y="31.75" drill="1"/>
<pad name="CN2-2" x="8.255" y="31.75" drill="1"/>
<pad name="CN2-1" x="5.715" y="31.75" drill="1"/>
<pad name="CN2-4" x="13.335" y="31.75" drill="1"/>
<pad name="CN2-5" x="15.875" y="31.75" drill="1"/>
<pad name="CN3-2" x="59.69" y="3.175" drill="1"/>
<pad name="CN3-3" x="62.23" y="3.175" drill="1"/>
<pad name="CN3-1" x="57.15" y="3.175" drill="1"/>
<pad name="CN5-6" x="86.995" y="32.7025" drill="1"/>
<pad name="CN5-5" x="86.995" y="30.1625" drill="1"/>
<pad name="CN5-4" x="86.995" y="27.6225" drill="1"/>
<pad name="CN5-3" x="86.995" y="25.0825" drill="1"/>
<pad name="CN5-2" x="86.995" y="22.5425" drill="1"/>
<pad name="CN5-1" x="86.995" y="20.0025" drill="1"/>
<wire x1="0" y1="35" x2="90" y2="35" width="0.127" layer="21"/>
<wire x1="90" y1="35" x2="90" y2="0" width="0.127" layer="21"/>
<wire x1="90" y1="0" x2="0" y2="0" width="0.127" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="35" width="0.127" layer="21"/>
<text x="6.35" y="24.765" size="1.27" layer="21" rot="R90">GND</text>
<text x="8.89" y="24.765" size="1.27" layer="21" rot="R90">VBAT</text>
<text x="11.43" y="24.765" size="1.27" layer="21" rot="R90">USB5V</text>
<text x="13.97" y="24.765" size="1.27" layer="21" rot="R90">VCC33</text>
<text x="16.51" y="24.765" size="1.27" layer="21" rot="R90">VCC50</text>
<text x="80.01" y="32.0675" size="1.27" layer="21">EVIN</text>
<text x="80.01" y="29.5275" size="1.27" layer="21">EVOUT</text>
<text x="80.01" y="26.9875" size="1.27" layer="21">RX</text>
<text x="80.01" y="24.4475" size="1.27" layer="21">TXN</text>
<text x="80.01" y="21.9075" size="1.27" layer="21">TXP</text>
<text x="80.01" y="19.3675" size="1.27" layer="21">GND</text>
</package>
<package name="SE-5R5-D105VY">
<pad name="+" x="-2.54" y="0" drill="1.3"/>
<pad name="-" x="2.54" y="0" drill="1.3"/>
<circle x="0" y="0" radius="10.25" width="0.254" layer="21"/>
<wire x1="11" y1="0" x2="12" y2="0" width="0.254" layer="21"/>
<wire x1="7.5" y1="6.75" x2="7.5" y2="3.75" width="0.254" layer="21"/>
<wire x1="7.5" y1="3.75" x2="7.5" y2="-7" width="0.254" layer="21"/>
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
<package name="AX_08X02_2P_200">
<wire x1="4" y1="1" x2="-4" y2="1" width="0.254" layer="21"/>
<wire x1="-4" y1="1" x2="-4" y2="-1" width="0.254" layer="21"/>
<wire x1="-4" y1="-1" x2="4" y2="-1" width="0.254" layer="21"/>
<wire x1="4" y1="-1" x2="4" y2="1" width="0.254" layer="21"/>
<pad name="1" x="2.54" y="0" drill="0.9"/>
<pad name="2" x="-2.54" y="0" drill="0.9"/>
<text x="-3.81" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
<text x="-3.81" y="3.81" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="AX_10X03_2P_200">
<wire x1="5" y1="1.5" x2="-5" y2="1.5" width="0.254" layer="21"/>
<wire x1="-5" y1="1.5" x2="-5" y2="-1.5" width="0.254" layer="21"/>
<wire x1="-5" y1="-1.5" x2="5" y2="-1.5" width="0.254" layer="21"/>
<wire x1="5" y1="-1.5" x2="5" y2="1.5" width="0.254" layer="21"/>
<pad name="1" x="2.54" y="0" drill="1"/>
<pad name="2" x="-2.54" y="0" drill="1"/>
<text x="-3.81" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
<text x="-3.81" y="3.81" size="1.27" layer="25">&gt;NAME</text>
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
<package name="DIODE_2.5">
<wire x1="-1.27" y1="0" x2="0.762" y2="0" width="0.254" layer="21"/>
<wire x1="0.762" y1="0" x2="1.524" y2="0" width="0.254" layer="21"/>
<wire x1="-0.508" y1="1.016" x2="-0.508" y2="-1.016" width="0.254" layer="21"/>
<wire x1="-0.508" y1="-1.016" x2="0.762" y2="0" width="0.254" layer="21"/>
<wire x1="0.762" y1="0" x2="-0.508" y2="1.016" width="0.254" layer="21"/>
<wire x1="0.762" y1="1.016" x2="0.762" y2="-1.016" width="0.254" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-4.445" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="4.445" y2="-1.27" width="0.254" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="4.445" y2="1.27" width="0.254" layer="21"/>
<wire x1="4.445" y1="1.27" x2="-4.445" y2="1.27" width="0.254" layer="21"/>
<pad name="A" x="-3.175" y="0" drill="0.8"/>
<pad name="K" x="3.175" y="0" drill="0.8"/>
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
<package name="DIODE_4_1MM">
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
</packages>
<symbols>
<symbol name="LM339PWR">
<wire x1="-5.08" y1="10.16" x2="5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="-5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-10.16" x2="-5.08" y2="10.16" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<pin name="VCC" x="0" y="12.7" length="short" direction="pwr" rot="R270"/>
<pin name="GND" x="0" y="-12.7" length="short" direction="pwr" rot="R90"/>
</symbol>
<symbol name="OPAMP">
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="-4.572" y1="2.54" x2="-3.556" y2="2.54" width="0.254" layer="94"/>
<wire x1="-4.064" y1="3.048" x2="-4.064" y2="2.032" width="0.254" layer="94"/>
<wire x1="-4.572" y1="-2.54" x2="-3.556" y2="-2.54" width="0.254" layer="94"/>
<text x="1.27" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="1.27" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="IN+" x="-7.62" y="2.54" visible="pad" length="short" direction="in"/>
<pin name="IN-" x="-7.62" y="-2.54" visible="pad" length="short" direction="in"/>
<pin name="OUT" x="7.62" y="0" visible="pad" length="short" direction="out" rot="R180"/>
</symbol>
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
<symbol name="ZENER_DIODE">
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.905" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.397" y1="1.905" x2="1.397" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.397" y1="-1.905" x2="2.032" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.397" y1="1.905" x2="0.762" y2="1.905" width="0.254" layer="94"/>
<text x="-2.3114" y="2.6416" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.5654" y="-4.4958" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="K" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
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
<symbol name="CCAP">
<wire x1="-2.032" y1="-1.524" x2="-2.032" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.016" x2="-1.524" y2="-1.016" width="0.254" layer="94"/>
<wire x1="1.016" y1="1.778" x2="1.016" y2="1.524" width="0.254" layer="94"/>
<wire x1="1.016" y1="1.524" x2="1.016" y2="0.508" width="0.254" layer="94"/>
<wire x1="1.016" y1="0.508" x2="1.016" y2="0" width="0.254" layer="94"/>
<wire x1="1.016" y1="0" x2="1.016" y2="-0.508" width="0.254" layer="94"/>
<wire x1="1.016" y1="-0.508" x2="1.016" y2="-1.778" width="0.254" layer="94"/>
<wire x1="-1.016" y1="1.778" x2="-1.016" y2="0.508" width="0.254" layer="94"/>
<wire x1="-1.016" y1="0.508" x2="-1.016" y2="0" width="0.254" layer="94"/>
<wire x1="-1.016" y1="0" x2="-1.016" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-0.508" x2="-1.016" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.524" x2="-1.016" y2="-1.778" width="0.254" layer="94"/>
<wire x1="1.016" y1="1.524" x2="-1.016" y2="0.508" width="0.254" layer="94"/>
<wire x1="1.016" y1="0.508" x2="-1.016" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.524" x2="1.016" y2="-0.508" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.016" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="1.016" y2="0" width="0.1524" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<pin name="-" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="NJM2845">
<wire x1="-5.08" y1="-2.54" x2="5.08" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="5.08" y1="5.08" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-2.54" width="0.4064" layer="94"/>
<text x="2.54" y="-5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.032" y="-1.778" size="1.524" layer="95">GND</text>
<text x="-4.445" y="1.905" size="1.524" layer="95">IN</text>
<text x="0.635" y="1.905" size="1.524" layer="95">OUT</text>
<pin name="IN" x="-7.62" y="2.54" visible="off" length="short" direction="in"/>
<pin name="GND" x="0" y="-5.08" visible="off" length="short" direction="in" rot="R90"/>
<pin name="OUT" x="7.62" y="2.54" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="REG_78XX">
<wire x1="-5.08" y1="-2.54" x2="5.08" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="5.08" y1="5.08" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-2.54" width="0.4064" layer="94"/>
<text x="2.54" y="-5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.032" y="-1.778" size="1.524" layer="95">GND</text>
<text x="-4.445" y="1.905" size="1.524" layer="95">IN</text>
<text x="0.635" y="1.905" size="1.524" layer="95">OUT</text>
<pin name="IN" x="-7.62" y="2.54" visible="off" length="short" direction="in"/>
<pin name="GND" x="0" y="-5.08" visible="off" length="short" direction="in" rot="R90"/>
<pin name="OUT" x="7.62" y="2.54" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="VCC33">
<wire x1="-2.032" y1="0" x2="2.032" y2="0" width="0.1524" layer="94"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="94"/>
<text x="-1.27" y="1.27" size="1.27" layer="96">&gt;VALUE</text>
<pin name="VCC33" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
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
<symbol name="PINH2X5">
<wire x1="-6.35" y1="-7.62" x2="8.89" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="8.89" y1="-7.62" x2="8.89" y2="7.62" width="0.4064" layer="94"/>
<wire x1="8.89" y1="7.62" x2="-6.35" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-7.62" width="0.4064" layer="94"/>
<text x="-6.35" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="5.08" y="5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="3" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="5.08" y="2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="5" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="5.08" y="0" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="7" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="9" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="5.08" y="-5.08" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
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
<symbol name="CONN_COAX">
<wire x1="-1.524" y1="0" x2="1.27" y2="0.762" width="0.1524" layer="94" curve="-149.489763"/>
<wire x1="-1.524" y1="0" x2="1.27" y2="-0.762" width="0.1524" layer="94" curve="149.489763"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="0.762" y2="0" width="0.1524" layer="94"/>
<circle x="0" y="0" radius="0.762" width="0.1524" layer="94"/>
<text x="5.08" y="5.08" size="1.27" layer="95">&gt;NAME</text>
<text x="5.08" y="2.54" size="1.27" layer="96">&gt;VALUE</text>
<pin name="COLD" x="0" y="-2.54" visible="off" length="point" direction="pas" rot="R90"/>
<pin name="HOT" x="2.54" y="0" visible="off" length="point" direction="pas" rot="R180"/>
</symbol>
<symbol name="UNITB">
<pin name="GND1" x="-12.7" y="15.24" length="short" direction="pwr"/>
<pin name="VBAT" x="-12.7" y="12.7" length="short" direction="pwr"/>
<pin name="USB5V" x="-12.7" y="10.16" length="short" direction="sup"/>
<pin name="VCC33" x="-12.7" y="7.62" length="short" direction="pwr"/>
<pin name="VCC50" x="-12.7" y="5.08" length="short" direction="pwr"/>
<pin name="GND2" x="-12.7" y="-2.54" length="short" direction="pwr"/>
<pin name="TXP" x="-12.7" y="-5.08" length="short" direction="out"/>
<pin name="TXN" x="-12.7" y="-7.62" length="short" direction="out"/>
<pin name="RX" x="-12.7" y="-10.16" length="short" direction="in"/>
<pin name="EVOUT" x="-12.7" y="-12.7" length="short" direction="out"/>
<pin name="EVIN" x="-12.7" y="-15.24" length="short" direction="in"/>
<pin name="GND3" x="2.54" y="-20.32" length="short" direction="pwr" rot="R90"/>
<pin name="GND4" x="5.08" y="-20.32" length="short" direction="pwr" rot="R90"/>
<pin name="GND5" x="7.62" y="-20.32" length="short" direction="pwr" rot="R90"/>
<wire x1="-10.16" y1="17.78" x2="-10.16" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-17.78" x2="10.16" y2="-17.78" width="0.254" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="10.16" y2="17.78" width="0.254" layer="94"/>
<wire x1="10.16" y1="17.78" x2="-10.16" y2="17.78" width="0.254" layer="94"/>
<text x="-5.08" y="0" size="1.778" layer="95">&gt;NAME</text>
<wire x1="-1.27" y1="-1.27" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="0" y2="-16.51" width="0.254" layer="94"/>
<wire x1="0" y1="-16.51" x2="-1.27" y2="-16.51" width="0.254" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="1.27" y2="-8.89" width="0.254" layer="94"/>
<wire x1="1.27" y1="-8.89" x2="8.89" y2="-8.89" width="0.254" layer="94"/>
<wire x1="8.89" y1="-8.89" x2="8.89" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-1.27" y1="3.81" x2="0" y2="3.81" width="0.254" layer="94"/>
<wire x1="0" y1="3.81" x2="0" y2="16.51" width="0.254" layer="94"/>
<wire x1="0" y1="16.51" x2="-1.27" y2="16.51" width="0.254" layer="94"/>
<text x="2.54" y="7.62" size="1.778" layer="94" rot="R90">CN2</text>
<text x="3.81" y="-7.62" size="1.778" layer="94">CN3</text>
<text x="2.54" y="-6.35" size="1.778" layer="94" rot="R90">CN5</text>
</symbol>
<symbol name="B-057-HP-POST">
<pin name="POST" x="0" y="0" length="short" direction="pas"/>
</symbol>
<symbol name="FUSE">
<wire x1="-2.54" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94" curve="-90"/>
<wire x1="-1.27" y1="1.27" x2="0" y2="0" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94" curve="90"/>
<wire x1="1.27" y1="-1.27" x2="2.54" y2="0" width="0.254" layer="94" curve="90"/>
<text x="-2.54" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P$1" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<pin name="P$2" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LM339" prefix="U">
<gates>
<gate name="-PWR" symbol="LM339PWR" x="-25.4" y="2.54" addlevel="must"/>
<gate name="-1" symbol="OPAMP" x="-5.08" y="10.16" swaplevel="1"/>
<gate name="-2" symbol="OPAMP" x="-5.08" y="-7.62" swaplevel="1"/>
<gate name="-3" symbol="OPAMP" x="17.78" y="10.16" swaplevel="1"/>
<gate name="-4" symbol="OPAMP" x="17.78" y="-7.62" swaplevel="1"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="-1" pin="IN+" pad="7"/>
<connect gate="-1" pin="IN-" pad="6"/>
<connect gate="-1" pin="OUT" pad="1"/>
<connect gate="-2" pin="IN+" pad="5"/>
<connect gate="-2" pin="IN-" pad="4"/>
<connect gate="-2" pin="OUT" pad="2"/>
<connect gate="-3" pin="IN+" pad="9"/>
<connect gate="-3" pin="IN-" pad="8"/>
<connect gate="-3" pin="OUT" pad="14"/>
<connect gate="-4" pin="IN+" pad="11"/>
<connect gate="-4" pin="IN-" pad="10"/>
<connect gate="-4" pin="OUT" pad="13"/>
<connect gate="-PWR" pin="GND" pad="12"/>
<connect gate="-PWR" pin="VCC" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
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
<deviceset name="ZENER_DIODE" prefix="ZD" uservalue="yes">
<gates>
<gate name="G$1" symbol="ZENER_DIODE" x="0" y="0"/>
</gates>
<devices>
<device name="2" package="DIODE_2">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3" package="DIODE_3">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2.5" package="DIODE_2.5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4" package="DIODE_4">
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
<deviceset name="NJM2845" prefix="U">
<gates>
<gate name="G$1" symbol="NJM2845" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO252">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="78XX" prefix="U" uservalue="yes">
<gates>
<gate name="G$1" symbol="REG_78XX" x="0" y="0"/>
</gates>
<devices>
<device name="HORZ" package="TO220-HORZ">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="VIRT" package="TO220-VIRT">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TO92" package="TO92">
<connects>
<connect gate="G$1" pin="GND" pad="C"/>
<connect gate="G$1" pin="IN" pad="E"/>
<connect gate="G$1" pin="OUT" pad="B"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TO252" package="TO252">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CCAP" prefix="C" uservalue="yes">
<description>Polar capacitor</description>
<gates>
<gate name="G$1" symbol="CCAP" x="0" y="-2.54"/>
</gates>
<devices>
<device name="6.5" package="CCAP_6.5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10.5" package="CCAP_10.5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="13" package="CCAP_13">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4" package="CCAP_4">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="8.5" package="CCAP_8.5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="16" package="CCAP_16">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
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
<device name="GENERIC_2.5" package="DIODE_2.5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="K" pad="K"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="GENERIC_4_1MM" package="DIODE_4_1MM">
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
<deviceset name="PS-10PE-D4T2-M1E" prefix="CN">
<gates>
<gate name="G$1" symbol="PINH2X5" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PS-10PE-D4T2-M1E">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
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
<deviceset name="B-057-HP" prefix="CN">
<gates>
<gate name="G$1" symbol="CONN_COAX" x="0" y="0"/>
<gate name="G$2" symbol="B-057-HP-POST" x="0" y="-10.16"/>
<gate name="G$3" symbol="B-057-HP-POST" x="0" y="-12.7"/>
</gates>
<devices>
<device name="" package="B-057-HP">
<connects>
<connect gate="G$1" pin="COLD" pad="COLD"/>
<connect gate="G$1" pin="HOT" pad="HOT"/>
<connect gate="G$2" pin="POST" pad="POST1"/>
<connect gate="G$3" pin="POST" pad="POST2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="UNITB" prefix="U">
<gates>
<gate name="G$1" symbol="UNITB" x="0" y="0"/>
</gates>
<devices>
<device name="" package="UNITB">
<connects>
<connect gate="G$1" pin="EVIN" pad="CN5-6"/>
<connect gate="G$1" pin="EVOUT" pad="CN5-5"/>
<connect gate="G$1" pin="GND1" pad="CN2-1"/>
<connect gate="G$1" pin="GND2" pad="CN5-1"/>
<connect gate="G$1" pin="GND3" pad="CN3-1"/>
<connect gate="G$1" pin="GND4" pad="CN3-2"/>
<connect gate="G$1" pin="GND5" pad="CN3-3"/>
<connect gate="G$1" pin="RX" pad="CN5-4"/>
<connect gate="G$1" pin="TXN" pad="CN5-3"/>
<connect gate="G$1" pin="TXP" pad="CN5-2"/>
<connect gate="G$1" pin="USB5V" pad="CN2-3"/>
<connect gate="G$1" pin="VBAT" pad="CN2-2"/>
<connect gate="G$1" pin="VCC33" pad="CN2-4"/>
<connect gate="G$1" pin="VCC50" pad="CN2-5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="EDLC" prefix="BC" uservalue="yes">
<gates>
<gate name="G$1" symbol="CCAP" x="0" y="0"/>
</gates>
<devices>
<device name="SE-5R5-D105VY" package="SE-5R5-D105VY">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="POLYSW" prefix="F" uservalue="yes">
<gates>
<gate name="G$1" symbol="FUSE" x="0" y="0"/>
</gates>
<devices>
<device name="8X2MM" package="AX_08X02_2P_200">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10X3MM" package="AX_10X03_2P_200">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
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
<part name="U4" library="FlukeNic" deviceset="LM339" device="N"/>
<part name="R2" library="FlukeNic" deviceset="R" device="0.25W_4P" value="33k"/>
<part name="R3" library="FlukeNic" deviceset="R" device="0.25W_4P" value="1.5k"/>
<part name="R5" library="FlukeNic" deviceset="R" device="0.25W_4P" value="33k"/>
<part name="R6" library="FlukeNic" deviceset="R" device="0.25W_4P" value="1.5k"/>
<part name="R4" library="FlukeNic" deviceset="R" device="0.25W_4P" value="1.5k"/>
<part name="R7" library="FlukeNic" deviceset="R" device="0.25W_4P" value="1.5k"/>
<part name="ZD1" library="FlukeNic" deviceset="ZENER_DIODE" device="4" value="RD3.9"/>
<part name="ZD2" library="FlukeNic" deviceset="ZENER_DIODE" device="4" value="RD3.9"/>
<part name="U$2" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$3" library="FlukeNic" deviceset="VCC50" device=""/>
<part name="U$4" library="FlukeNic" deviceset="VCC50" device=""/>
<part name="U2" library="FlukeNic" deviceset="NJM2845" device="" value="NJM2845DL1-33"/>
<part name="U1" library="FlukeNic" deviceset="78XX" device="TO252" value="NJM7805SDL1"/>
<part name="U$6" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$7" library="FlukeNic" deviceset="GND" device=""/>
<part name="C2" library="FlukeNic" deviceset="CCAP" device="6.5" value="10"/>
<part name="C4" library="FlukeNic" deviceset="CCAP" device="6.5" value="10"/>
<part name="C1" library="FlukeNic" deviceset="CCAP" device="16" value="4700"/>
<part name="U$8" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$9" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$10" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$11" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="U$12" library="FlukeNic" deviceset="VCC50" device=""/>
<part name="D2" library="FlukeNic" deviceset="DIODE" device="GENERIC_4_1MM" value="1N4007"/>
<part name="D4" library="FlukeNic" deviceset="DIODE" device="GENERIC_4_1MM" value="1N4007"/>
<part name="U$17" library="FlukeNic" deviceset="VCC50" device=""/>
<part name="U$18" library="FlukeNic" deviceset="GND" device=""/>
<part name="CN1" library="FlukeNic" deviceset="PS-10PE-D4T2-M1E" device=""/>
<part name="CN3" library="FlukeNic" deviceset="B-057-HP" device=""/>
<part name="CN2" library="FlukeNic" deviceset="B-057-HP" device=""/>
<part name="U$33" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$34" library="FlukeNic" deviceset="GND" device=""/>
<part name="D3" library="FlukeNic" deviceset="DIODE" device="GENERIC_4_1MM" value="1S10"/>
<part name="D1" library="FlukeNic" deviceset="DIODE" device="GENERIC_4_1MM" value="1S10"/>
<part name="C3" library="FlukeNic" deviceset="CCAP" device="6.5" value="10"/>
<part name="U$37" library="FlukeNic" deviceset="GND" device=""/>
<part name="C5" library="FlukeNic" deviceset="CAP" device="DIP_2" value="0.1"/>
<part name="U$38" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$41" library="FlukeNic" deviceset="VCC50" device=""/>
<part name="C6" library="FlukeNic" deviceset="CAP" device="DIP_2" value="0.1"/>
<part name="U$61" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$1" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$5" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$13" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="U$14" library="FlukeNic" deviceset="VCC50" device=""/>
<part name="U3" library="FlukeNic" deviceset="UNITB" device=""/>
<part name="BC1" library="FlukeNic" deviceset="EDLC" device="SE-5R5-D105VY" value="1F"/>
<part name="D5" library="FlukeNic" deviceset="DIODE" device="GENERIC_4" value="1N4148"/>
<part name="R1" library="FlukeNic" deviceset="R" device="0.25W_4P" value="1k"/>
<part name="U$15" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$16" library="FlukeNic" deviceset="VCC33" device=""/>
<part name="U$21" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$22" library="FlukeNic" deviceset="GND" device=""/>
<part name="U$23" library="FlukeNic" deviceset="GND" device=""/>
<part name="F1" library="FlukeNic" deviceset="POLYSW" device="8X2MM" value="MF-RX040/72-0"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="53.34" y="55.88" size="1.778" layer="94">EVENT OUT</text>
<text x="53.34" y="38.1" size="1.778" layer="94">EVENT IN</text>
<text x="66.04" y="205.74" size="1.778" layer="94">10V approx</text>
<text x="33.02" y="81.28" size="1.778" layer="94">Curr consumption Avg=100mA, Peak=200mA</text>
<text x="33.02" y="78.74" size="1.778" layer="94">Change to MF-RX040</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="U4" gate="-1" x="99.06" y="124.46"/>
<instance part="U4" gate="-PWR" x="99.06" y="162.56"/>
<instance part="U4" gate="-3" x="99.06" y="99.06"/>
<instance part="R2" gate="G$1" x="96.52" y="137.16"/>
<instance part="R3" gate="G$1" x="116.84" y="137.16"/>
<instance part="R5" gate="G$1" x="96.52" y="111.76"/>
<instance part="R6" gate="G$1" x="116.84" y="111.76"/>
<instance part="R4" gate="G$1" x="68.58" y="127"/>
<instance part="R7" gate="G$1" x="68.58" y="101.6"/>
<instance part="ZD1" gate="G$1" x="78.74" y="119.38" rot="R90"/>
<instance part="ZD2" gate="G$1" x="78.74" y="109.22" rot="R270"/>
<instance part="U$2" gate="G$1" x="73.66" y="109.22"/>
<instance part="U$3" gate="G$1" x="124.46" y="139.7"/>
<instance part="U$4" gate="G$1" x="124.46" y="114.3"/>
<instance part="U2" gate="G$1" x="129.54" y="200.66"/>
<instance part="U1" gate="G$1" x="93.98" y="200.66"/>
<instance part="U$6" gate="G$1" x="93.98" y="190.5"/>
<instance part="U$7" gate="G$1" x="129.54" y="190.5"/>
<instance part="C2" gate="G$1" x="106.68" y="198.12" rot="MR270"/>
<instance part="C4" gate="G$1" x="147.32" y="198.12" rot="MR270"/>
<instance part="C1" gate="G$1" x="76.2" y="198.12" rot="MR270"/>
<instance part="U$8" gate="G$1" x="76.2" y="190.5"/>
<instance part="U$9" gate="G$1" x="106.68" y="190.5"/>
<instance part="U$10" gate="G$1" x="147.32" y="190.5"/>
<instance part="U$11" gate="G$1" x="147.32" y="208.28"/>
<instance part="U$12" gate="G$1" x="106.68" y="205.74"/>
<instance part="D2" gate="G$1" x="53.34" y="203.2"/>
<instance part="D4" gate="G$1" x="53.34" y="195.58"/>
<instance part="U$17" gate="G$1" x="99.06" y="175.26"/>
<instance part="U$18" gate="G$1" x="99.06" y="147.32"/>
<instance part="CN1" gate="G$1" x="30.48" y="106.68"/>
<instance part="CN3" gate="G$1" x="73.66" y="38.1"/>
<instance part="CN2" gate="G$1" x="73.66" y="55.88"/>
<instance part="U$33" gate="G$1" x="73.66" y="30.48"/>
<instance part="U$34" gate="G$1" x="73.66" y="48.26"/>
<instance part="D3" gate="G$1" x="114.3" y="203.2" smashed="yes">
<attribute name="NAME" x="111.9886" y="205.8416" size="1.778" layer="95"/>
<attribute name="VALUE" x="113.7158" y="208.2546" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="D1" gate="G$1" x="119.38" y="210.82" smashed="yes" rot="R270">
<attribute name="NAME" x="122.0216" y="213.1314" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="125.0442" y="218.4654" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="C3" gate="G$1" x="119.38" y="198.12" rot="MR270"/>
<instance part="U$37" gate="G$1" x="119.38" y="190.5"/>
<instance part="C5" gate="G$1" x="119.38" y="162.56" rot="R90"/>
<instance part="U$38" gate="G$1" x="119.38" y="157.48"/>
<instance part="U$41" gate="G$1" x="119.38" y="165.1"/>
<instance part="C6" gate="G$1" x="48.26" y="96.52" rot="R90"/>
<instance part="U$61" gate="G$1" x="48.26" y="86.36"/>
<instance part="U$1" gate="G$1" x="218.44" y="93.98"/>
<instance part="U$5" gate="G$1" x="195.58" y="93.98"/>
<instance part="U$13" gate="G$1" x="187.96" y="142.24"/>
<instance part="U$14" gate="G$1" x="180.34" y="139.7"/>
<instance part="U3" gate="G$1" x="215.9" y="124.46"/>
<instance part="BC1" gate="G$1" x="154.94" y="152.4" rot="MR270"/>
<instance part="D5" gate="G$1" x="154.94" y="170.18" smashed="yes" rot="R270">
<attribute name="NAME" x="157.5816" y="172.4914" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="160.6042" y="177.8254" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="R1" gate="G$1" x="154.94" y="162.56" rot="R90"/>
<instance part="U$15" gate="G$1" x="154.94" y="144.78"/>
<instance part="U$16" gate="G$1" x="154.94" y="175.26"/>
<instance part="U4" gate="-2" x="71.12" y="167.64"/>
<instance part="U4" gate="-4" x="71.12" y="154.94"/>
<instance part="U$21" gate="G$1" x="60.96" y="147.32"/>
<instance part="CN2" gate="G$2" x="81.28" y="53.34"/>
<instance part="CN2" gate="G$3" x="81.28" y="50.8"/>
<instance part="U$22" gate="G$1" x="78.74" y="48.26"/>
<instance part="CN3" gate="G$2" x="78.74" y="35.56"/>
<instance part="CN3" gate="G$3" x="78.74" y="33.02"/>
<instance part="U$23" gate="G$1" x="78.74" y="30.48"/>
<instance part="F1" gate="G$1" x="38.1" y="88.9"/>
</instances>
<busses>
</busses>
<nets>
<net name="RX" class="0">
<segment>
<pinref part="U4" gate="-1" pin="OUT"/>
<wire x1="106.68" y1="124.46" x2="109.22" y2="124.46" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="101.6" y1="137.16" x2="109.22" y2="137.16" width="0.1524" layer="91"/>
<wire x1="109.22" y1="137.16" x2="109.22" y2="124.46" width="0.1524" layer="91"/>
<junction x="109.22" y="124.46"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="111.76" y1="137.16" x2="109.22" y2="137.16" width="0.1524" layer="91"/>
<junction x="109.22" y="137.16"/>
<wire x1="109.22" y1="124.46" x2="134.62" y2="124.46" width="0.1524" layer="91"/>
<wire x1="203.2" y1="114.3" x2="134.62" y2="114.3" width="0.1524" layer="91"/>
<wire x1="134.62" y1="114.3" x2="134.62" y2="124.46" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="RX"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U4" gate="-1" pin="IN+"/>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="91.44" y1="127" x2="88.9" y2="127" width="0.1524" layer="91"/>
<wire x1="88.9" y1="127" x2="86.36" y2="127" width="0.1524" layer="91"/>
<wire x1="86.36" y1="127" x2="78.74" y2="127" width="0.1524" layer="91"/>
<wire x1="78.74" y1="127" x2="73.66" y2="127" width="0.1524" layer="91"/>
<wire x1="88.9" y1="127" x2="88.9" y2="137.16" width="0.1524" layer="91"/>
<junction x="88.9" y="127"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="88.9" y1="137.16" x2="91.44" y2="137.16" width="0.1524" layer="91"/>
<pinref part="U4" gate="-3" pin="IN-"/>
<wire x1="91.44" y1="96.52" x2="86.36" y2="96.52" width="0.1524" layer="91"/>
<wire x1="86.36" y1="96.52" x2="86.36" y2="127" width="0.1524" layer="91"/>
<junction x="86.36" y="127"/>
<pinref part="ZD1" gate="G$1" pin="K"/>
<wire x1="78.74" y1="121.92" x2="78.74" y2="127" width="0.1524" layer="91"/>
<junction x="78.74" y="127"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U4" gate="-3" pin="IN+"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="91.44" y1="101.6" x2="88.9" y2="101.6" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="88.9" y1="101.6" x2="78.74" y2="101.6" width="0.1524" layer="91"/>
<wire x1="78.74" y1="101.6" x2="73.66" y2="101.6" width="0.1524" layer="91"/>
<wire x1="91.44" y1="111.76" x2="88.9" y2="111.76" width="0.1524" layer="91"/>
<wire x1="88.9" y1="111.76" x2="88.9" y2="101.6" width="0.1524" layer="91"/>
<junction x="88.9" y="101.6"/>
<pinref part="U4" gate="-1" pin="IN-"/>
<wire x1="91.44" y1="121.92" x2="88.9" y2="121.92" width="0.1524" layer="91"/>
<wire x1="88.9" y1="121.92" x2="88.9" y2="111.76" width="0.1524" layer="91"/>
<junction x="88.9" y="111.76"/>
<pinref part="ZD2" gate="G$1" pin="K"/>
<wire x1="78.74" y1="106.68" x2="78.74" y2="101.6" width="0.1524" layer="91"/>
<junction x="78.74" y="101.6"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="101.6" y1="111.76" x2="109.22" y2="111.76" width="0.1524" layer="91"/>
<wire x1="109.22" y1="111.76" x2="109.22" y2="99.06" width="0.1524" layer="91"/>
<pinref part="U4" gate="-3" pin="OUT"/>
<wire x1="109.22" y1="99.06" x2="106.68" y2="99.06" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="109.22" y1="111.76" x2="111.76" y2="111.76" width="0.1524" layer="91"/>
<junction x="109.22" y="111.76"/>
</segment>
</net>
<net name="RXP" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<pinref part="CN1" gate="G$1" pin="1"/>
<wire x1="27.94" y1="111.76" x2="17.78" y2="111.76" width="0.1524" layer="91"/>
<wire x1="17.78" y1="111.76" x2="17.78" y2="127" width="0.1524" layer="91"/>
<wire x1="17.78" y1="127" x2="63.5" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RXN" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="63.5" y1="101.6" x2="60.96" y2="101.6" width="0.1524" layer="91"/>
<wire x1="60.96" y1="101.6" x2="60.96" y2="121.92" width="0.1524" layer="91"/>
<wire x1="60.96" y1="121.92" x2="15.24" y2="121.92" width="0.1524" layer="91"/>
<wire x1="15.24" y1="121.92" x2="15.24" y2="106.68" width="0.1524" layer="91"/>
<pinref part="CN1" gate="G$1" pin="5"/>
<wire x1="15.24" y1="106.68" x2="27.94" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="73.66" y1="111.76" x2="73.66" y2="114.3" width="0.1524" layer="91"/>
<pinref part="ZD2" gate="G$1" pin="A"/>
<pinref part="ZD1" gate="G$1" pin="A"/>
<wire x1="78.74" y1="111.76" x2="78.74" y2="114.3" width="0.1524" layer="91"/>
<wire x1="78.74" y1="114.3" x2="78.74" y2="116.84" width="0.1524" layer="91"/>
<wire x1="73.66" y1="114.3" x2="78.74" y2="114.3" width="0.1524" layer="91"/>
<junction x="78.74" y="114.3"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="GND"/>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="93.98" y1="193.04" x2="93.98" y2="195.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="GND"/>
<pinref part="U2" gate="G$1" pin="GND"/>
<wire x1="129.54" y1="193.04" x2="129.54" y2="195.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="-"/>
<pinref part="U$8" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="-"/>
<pinref part="U$9" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="-"/>
<pinref part="U$10" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="U4" gate="-PWR" pin="GND"/>
<pinref part="U$18" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="U$33" gate="G$1" pin="GND"/>
<pinref part="CN3" gate="G$1" pin="COLD"/>
<wire x1="73.66" y1="33.02" x2="73.66" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$34" gate="G$1" pin="GND"/>
<pinref part="CN2" gate="G$1" pin="COLD"/>
<wire x1="73.66" y1="50.8" x2="73.66" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="-"/>
<pinref part="U$37" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="1"/>
<pinref part="U$38" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="1"/>
<pinref part="U$61" gate="G$1" pin="GND"/>
<wire x1="48.26" y1="88.9" x2="48.26" y2="93.98" width="0.1524" layer="91"/>
<pinref part="F1" gate="G$1" pin="P$2"/>
<wire x1="43.18" y1="88.9" x2="48.26" y2="88.9" width="0.1524" layer="91"/>
<junction x="48.26" y="88.9"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="GND"/>
<wire x1="203.2" y1="139.7" x2="195.58" y2="139.7" width="0.1524" layer="91"/>
<wire x1="195.58" y1="139.7" x2="195.58" y2="121.92" width="0.1524" layer="91"/>
<wire x1="195.58" y1="121.92" x2="195.58" y2="96.52" width="0.1524" layer="91"/>
<wire x1="203.2" y1="121.92" x2="195.58" y2="121.92" width="0.1524" layer="91"/>
<junction x="195.58" y="121.92"/>
<pinref part="U3" gate="G$1" pin="GND1"/>
<pinref part="U3" gate="G$1" pin="GND2"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="218.44" y1="96.52" x2="218.44" y2="101.6" width="0.1524" layer="91"/>
<wire x1="218.44" y1="101.6" x2="218.44" y2="104.14" width="0.1524" layer="91"/>
<wire x1="220.98" y1="104.14" x2="220.98" y2="101.6" width="0.1524" layer="91"/>
<wire x1="220.98" y1="101.6" x2="218.44" y2="101.6" width="0.1524" layer="91"/>
<junction x="218.44" y="101.6"/>
<wire x1="223.52" y1="104.14" x2="223.52" y2="101.6" width="0.1524" layer="91"/>
<wire x1="223.52" y1="101.6" x2="220.98" y2="101.6" width="0.1524" layer="91"/>
<junction x="220.98" y="101.6"/>
<pinref part="U3" gate="G$1" pin="GND3"/>
<pinref part="U3" gate="G$1" pin="GND4"/>
<pinref part="U3" gate="G$1" pin="GND5"/>
</segment>
<segment>
<pinref part="BC1" gate="G$1" pin="-"/>
<pinref part="U$15" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="U4" gate="-2" pin="IN+"/>
<pinref part="U$21" gate="G$1" pin="GND"/>
<wire x1="63.5" y1="170.18" x2="60.96" y2="170.18" width="0.1524" layer="91"/>
<wire x1="60.96" y1="170.18" x2="60.96" y2="165.1" width="0.1524" layer="91"/>
<pinref part="U4" gate="-4" pin="IN-"/>
<wire x1="60.96" y1="165.1" x2="60.96" y2="157.48" width="0.1524" layer="91"/>
<wire x1="60.96" y1="157.48" x2="60.96" y2="152.4" width="0.1524" layer="91"/>
<wire x1="60.96" y1="152.4" x2="60.96" y2="149.86" width="0.1524" layer="91"/>
<wire x1="63.5" y1="152.4" x2="60.96" y2="152.4" width="0.1524" layer="91"/>
<junction x="60.96" y="152.4"/>
<pinref part="U4" gate="-4" pin="IN+"/>
<wire x1="63.5" y1="157.48" x2="60.96" y2="157.48" width="0.1524" layer="91"/>
<junction x="60.96" y="157.48"/>
<pinref part="U4" gate="-2" pin="IN-"/>
<wire x1="63.5" y1="165.1" x2="60.96" y2="165.1" width="0.1524" layer="91"/>
<junction x="60.96" y="165.1"/>
</segment>
<segment>
<pinref part="CN2" gate="G$2" pin="POST"/>
<pinref part="U$22" gate="G$1" pin="GND"/>
<wire x1="81.28" y1="53.34" x2="78.74" y2="53.34" width="0.1524" layer="91"/>
<wire x1="78.74" y1="53.34" x2="78.74" y2="50.8" width="0.1524" layer="91"/>
<pinref part="CN2" gate="G$3" pin="POST"/>
<wire x1="81.28" y1="50.8" x2="78.74" y2="50.8" width="0.1524" layer="91"/>
<junction x="78.74" y="50.8"/>
</segment>
<segment>
<pinref part="CN3" gate="G$3" pin="POST"/>
<pinref part="U$23" gate="G$1" pin="GND"/>
<pinref part="CN3" gate="G$2" pin="POST"/>
<wire x1="78.74" y1="35.56" x2="78.74" y2="33.02" width="0.1524" layer="91"/>
<junction x="78.74" y="33.02"/>
</segment>
</net>
<net name="VCC50" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="VCC50"/>
<wire x1="124.46" y1="137.16" x2="124.46" y2="139.7" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="121.92" y1="137.16" x2="124.46" y2="137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="121.92" y1="111.76" x2="124.46" y2="111.76" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="VCC50"/>
<wire x1="124.46" y1="111.76" x2="124.46" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="OUT"/>
<wire x1="101.6" y1="203.2" x2="106.68" y2="203.2" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="+"/>
<junction x="106.68" y="203.2"/>
<pinref part="U$12" gate="G$1" pin="VCC50"/>
<wire x1="106.68" y1="205.74" x2="106.68" y2="203.2" width="0.1524" layer="91"/>
<pinref part="D3" gate="G$1" pin="A"/>
<wire x1="111.76" y1="203.2" x2="106.68" y2="203.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U4" gate="-PWR" pin="VCC"/>
<pinref part="U$17" gate="G$1" pin="VCC50"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="2"/>
<pinref part="U$41" gate="G$1" pin="VCC50"/>
</segment>
<segment>
<pinref part="U$14" gate="G$1" pin="VCC50"/>
<wire x1="203.2" y1="129.54" x2="180.34" y2="129.54" width="0.1524" layer="91"/>
<wire x1="180.34" y1="129.54" x2="180.34" y2="139.7" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="VCC50"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="D2" gate="G$1" pin="K"/>
<wire x1="55.88" y1="203.2" x2="58.42" y2="203.2" width="0.1524" layer="91"/>
<pinref part="D4" gate="G$1" pin="K"/>
<wire x1="55.88" y1="195.58" x2="58.42" y2="195.58" width="0.1524" layer="91"/>
<wire x1="58.42" y1="195.58" x2="58.42" y2="203.2" width="0.1524" layer="91"/>
<junction x="58.42" y="203.2"/>
<pinref part="U1" gate="G$1" pin="IN"/>
<wire x1="86.36" y1="203.2" x2="76.2" y2="203.2" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="+"/>
<junction x="76.2" y="203.2"/>
<wire x1="58.42" y1="203.2" x2="76.2" y2="203.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC33" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="OUT"/>
<wire x1="137.16" y1="203.2" x2="147.32" y2="203.2" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="+"/>
<pinref part="U$11" gate="G$1" pin="VCC33"/>
<wire x1="147.32" y1="203.2" x2="147.32" y2="205.74" width="0.1524" layer="91"/>
<junction x="147.32" y="203.2"/>
</segment>
<segment>
<pinref part="U$13" gate="G$1" pin="VCC33"/>
<wire x1="203.2" y1="132.08" x2="187.96" y2="132.08" width="0.1524" layer="91"/>
<wire x1="187.96" y1="132.08" x2="187.96" y2="139.7" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="VCC33"/>
</segment>
<segment>
<pinref part="D5" gate="G$1" pin="A"/>
<pinref part="U$16" gate="G$1" pin="VCC33"/>
</segment>
</net>
<net name="TXN" class="0">
<segment>
<wire x1="15.24" y1="73.66" x2="15.24" y2="104.14" width="0.1524" layer="91"/>
<pinref part="CN1" gate="G$1" pin="7"/>
<wire x1="15.24" y1="104.14" x2="27.94" y2="104.14" width="0.1524" layer="91"/>
<wire x1="15.24" y1="73.66" x2="142.24" y2="73.66" width="0.1524" layer="91"/>
<wire x1="142.24" y1="73.66" x2="142.24" y2="116.84" width="0.1524" layer="91"/>
<wire x1="142.24" y1="116.84" x2="203.2" y2="116.84" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="TXN"/>
<label x="25.4" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="TXP" class="0">
<segment>
<wire x1="17.78" y1="76.2" x2="17.78" y2="101.6" width="0.1524" layer="91"/>
<pinref part="CN1" gate="G$1" pin="9"/>
<wire x1="17.78" y1="101.6" x2="27.94" y2="101.6" width="0.1524" layer="91"/>
<wire x1="203.2" y1="119.38" x2="139.7" y2="119.38" width="0.1524" layer="91"/>
<wire x1="139.7" y1="119.38" x2="139.7" y2="76.2" width="0.1524" layer="91"/>
<wire x1="139.7" y1="76.2" x2="17.78" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="TXP"/>
<label x="25.4" y="76.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="CN1" gate="G$1" pin="2"/>
<wire x1="35.56" y1="111.76" x2="43.18" y2="111.76" width="0.1524" layer="91"/>
<wire x1="43.18" y1="111.76" x2="43.18" y2="203.2" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="A"/>
<wire x1="43.18" y1="203.2" x2="50.8" y2="203.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="CN1" gate="G$1" pin="6"/>
<wire x1="35.56" y1="106.68" x2="45.72" y2="106.68" width="0.1524" layer="91"/>
<wire x1="45.72" y1="106.68" x2="45.72" y2="195.58" width="0.1524" layer="91"/>
<pinref part="D4" gate="G$1" pin="A"/>
<wire x1="50.8" y1="195.58" x2="45.72" y2="195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="EVOUT" class="0">
<segment>
<pinref part="CN2" gate="G$1" pin="HOT"/>
<wire x1="203.2" y1="111.76" x2="147.32" y2="111.76" width="0.1524" layer="91"/>
<wire x1="147.32" y1="111.76" x2="147.32" y2="55.88" width="0.1524" layer="91"/>
<wire x1="147.32" y1="55.88" x2="76.2" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="EVOUT"/>
<label x="96.52" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="D3" gate="G$1" pin="K"/>
<pinref part="U2" gate="G$1" pin="IN"/>
<wire x1="116.84" y1="203.2" x2="119.38" y2="203.2" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="K"/>
<wire x1="119.38" y1="203.2" x2="121.92" y2="203.2" width="0.1524" layer="91"/>
<wire x1="119.38" y1="203.2" x2="119.38" y2="208.28" width="0.1524" layer="91"/>
<junction x="119.38" y="203.2"/>
<pinref part="C3" gate="G$1" pin="+"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="CN1" gate="G$1" pin="10"/>
<wire x1="35.56" y1="101.6" x2="48.26" y2="101.6" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="2"/>
<wire x1="48.26" y1="101.6" x2="48.26" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="EVIN" class="0">
<segment>
<pinref part="CN3" gate="G$1" pin="HOT"/>
<wire x1="76.2" y1="38.1" x2="149.86" y2="38.1" width="0.1524" layer="91"/>
<wire x1="149.86" y1="38.1" x2="149.86" y2="109.22" width="0.1524" layer="91"/>
<wire x1="149.86" y1="109.22" x2="203.2" y2="109.22" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="EVIN"/>
<label x="96.52" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="USB5V" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="119.38" y1="213.36" x2="119.38" y2="218.44" width="0.1524" layer="91"/>
<wire x1="119.38" y1="218.44" x2="190.5" y2="218.44" width="0.1524" layer="91"/>
<wire x1="190.5" y1="218.44" x2="190.5" y2="134.62" width="0.1524" layer="91"/>
<wire x1="190.5" y1="134.62" x2="203.2" y2="134.62" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="USB5V"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="D5" gate="G$1" pin="K"/>
</segment>
</net>
<net name="VBAT" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="BC1" gate="G$1" pin="+"/>
<pinref part="U3" gate="G$1" pin="VBAT"/>
<wire x1="203.2" y1="137.16" x2="167.64" y2="137.16" width="0.1524" layer="91"/>
<wire x1="167.64" y1="137.16" x2="167.64" y2="157.48" width="0.1524" layer="91"/>
<wire x1="167.64" y1="157.48" x2="154.94" y2="157.48" width="0.1524" layer="91"/>
<junction x="154.94" y="157.48"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="CN1" gate="G$1" pin="4"/>
<wire x1="35.56" y1="109.22" x2="40.64" y2="109.22" width="0.1524" layer="91"/>
<wire x1="40.64" y1="109.22" x2="40.64" y2="93.98" width="0.1524" layer="91"/>
<pinref part="CN1" gate="G$1" pin="3"/>
<wire x1="27.94" y1="109.22" x2="22.86" y2="109.22" width="0.1524" layer="91"/>
<wire x1="22.86" y1="109.22" x2="22.86" y2="93.98" width="0.1524" layer="91"/>
<wire x1="22.86" y1="93.98" x2="30.48" y2="93.98" width="0.1524" layer="91"/>
<wire x1="30.48" y1="93.98" x2="30.48" y2="88.9" width="0.1524" layer="91"/>
<pinref part="F1" gate="G$1" pin="P$1"/>
<wire x1="30.48" y1="88.9" x2="33.02" y2="88.9" width="0.1524" layer="91"/>
<wire x1="40.64" y1="93.98" x2="30.48" y2="93.98" width="0.1524" layer="91"/>
<junction x="30.48" y="93.98"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
