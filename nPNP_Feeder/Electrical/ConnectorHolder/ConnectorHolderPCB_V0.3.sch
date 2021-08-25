<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
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
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="SamacSys_Parts">
<description>&lt;b&gt;https://componentsearchengine.com&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="17343661">
<description>&lt;b&gt;1734366-1-1&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="0.92" diameter="1.431" shape="square"/>
<pad name="2" x="2.5" y="0" drill="0.92" diameter="1.431"/>
<pad name="3" x="4.5" y="0" drill="0.92" diameter="1.431"/>
<pad name="4" x="7" y="0" drill="0.92" diameter="1.431"/>
<pad name="MH1" x="-3.07" y="-2.71" drill="2.3" diameter="3.45"/>
<pad name="MH2" x="10.07" y="-2.71" drill="2.3" diameter="3.45"/>
<text x="3.5" y="-1.29" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="3.5" y="-1.29" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-3.75" y1="-4.85" x2="10.75" y2="-4.85" width="0.2" layer="51"/>
<wire x1="10.75" y1="-4.85" x2="10.75" y2="2.27" width="0.2" layer="51"/>
<wire x1="10.75" y1="2.27" x2="-3.75" y2="2.27" width="0.2" layer="51"/>
<wire x1="-3.75" y1="2.27" x2="-3.75" y2="-4.85" width="0.2" layer="51"/>
<wire x1="-3.75" y1="-0.54" x2="-3.75" y2="-0.54" width="0.1" layer="21"/>
<wire x1="-3.75" y1="-0.54" x2="-3.75" y2="2.27" width="0.1" layer="21"/>
<wire x1="-3.75" y1="2.27" x2="-3.75" y2="2.27" width="0.1" layer="21"/>
<wire x1="-3.75" y1="2.27" x2="-3.75" y2="-0.54" width="0.1" layer="21"/>
<wire x1="-3.75" y1="2.27" x2="10.75" y2="2.27" width="0.1" layer="21"/>
<wire x1="10.75" y1="2.27" x2="10.75" y2="2.27" width="0.1" layer="21"/>
<wire x1="10.75" y1="2.27" x2="-3.75" y2="2.27" width="0.1" layer="21"/>
<wire x1="-3.75" y1="2.27" x2="-3.75" y2="2.27" width="0.1" layer="21"/>
<wire x1="10.75" y1="2.27" x2="10.75" y2="2.27" width="0.1" layer="21"/>
<wire x1="10.75" y1="2.27" x2="10.75" y2="-0.54" width="0.1" layer="21"/>
<wire x1="10.75" y1="-0.54" x2="10.75" y2="-0.54" width="0.1" layer="21"/>
<wire x1="10.75" y1="-0.54" x2="10.75" y2="2.27" width="0.1" layer="21"/>
<wire x1="10.75" y1="-4.85" x2="-3.75" y2="-4.85" width="0.1" layer="21"/>
<wire x1="-3.75" y1="-4.85" x2="-3.75" y2="-4.85" width="0.1" layer="21"/>
<wire x1="-3.75" y1="-4.85" x2="10.75" y2="-4.85" width="0.1" layer="21"/>
<wire x1="10.75" y1="-4.85" x2="10.75" y2="-4.85" width="0.1" layer="21"/>
<wire x1="-5.795" y1="3.27" x2="12.795" y2="3.27" width="0.1" layer="51"/>
<wire x1="12.795" y1="3.27" x2="12.795" y2="-5.85" width="0.1" layer="51"/>
<wire x1="12.795" y1="-5.85" x2="-5.795" y2="-5.85" width="0.1" layer="51"/>
<wire x1="-5.795" y1="-5.85" x2="-5.795" y2="3.27" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="1734366-1">
<wire x1="5.08" y1="2.54" x2="17.78" y2="2.54" width="0.254" layer="94"/>
<wire x1="17.78" y1="-10.16" x2="17.78" y2="2.54" width="0.254" layer="94"/>
<wire x1="17.78" y1="-10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<text x="19.05" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="19.05" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="22.86" y="0" length="middle" rot="R180"/>
<pin name="2" x="22.86" y="-2.54" length="middle" rot="R180"/>
<pin name="3" x="22.86" y="-5.08" length="middle" rot="R180"/>
<pin name="4" x="22.86" y="-7.62" length="middle" rot="R180"/>
<pin name="MH1" x="0" y="0" length="middle"/>
<pin name="MH2" x="0" y="-2.54" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1734366-1" prefix="J">
<description>&lt;b&gt;USB Connectors 1PORT 4POS VERT T/H USB 2.0 BLACK&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://datasheet.lcsc.com/szlcsc/TE-Connectivity-1734366-1_C305910.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="1734366-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="17343661">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="MH1" pad="MH1"/>
<connect gate="G$1" pin="MH2" pad="MH2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="USB Connectors 1PORT 4POS VERT T/H USB 2.0 BLACK" constant="no"/>
<attribute name="HEIGHT" value="15mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="TE Connectivity" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="1734366-1" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="571-1734366-1" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/TE-Connectivity/1734366-1?qs=Y377PMEofyC1I8%2FZakOHrA%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26928/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" urn="urn:adsk.eagle:component:26957/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
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
<library name="wirepad" urn="urn:adsk.eagle:library:412">
<description>&lt;b&gt;Single Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SMD1,27-2,54" urn="urn:adsk.eagle:footprint:30822/1" library_version="2">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<smd name="1" x="0" y="0" dx="1.27" dy="2.54" layer="1"/>
<text x="0" y="0" size="0.0254" layer="27">&gt;VALUE</text>
<text x="-0.8" y="-2.4" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
</packages>
<packages3d>
<package3d name="SMD1,27-2,54" urn="urn:adsk.eagle:package:30839/1" type="box" library_version="2">
<description>SMD PAD</description>
<packageinstances>
<packageinstance name="SMD1,27-2,54"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PAD" urn="urn:adsk.eagle:symbol:30808/1" library_version="2">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SMD2" urn="urn:adsk.eagle:component:30857/2" prefix="PAD" uservalue="yes" library_version="2">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SMD1,27-2,54">
<connects>
<connect gate="1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30839/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="15" constant="no"/>
</technology>
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
<part name="J21" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J22" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J23" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J24" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J25" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J26" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J27" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J28" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J29" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J30" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J31" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J32" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J33" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J34" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J35" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J36" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J37" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J38" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J39" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="J40" library="SamacSys_Parts" deviceset="1734366-1" device="" override_package3d_urn="urn:adsk.eagle:package:29675911/2" override_package_urn="urn:adsk.eagle:footprint:29675912/1"/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD1" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="SMD2" device="" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD2" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="SMD2" device="" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD3" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="SMD2" device="" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD4" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="SMD2" device="" package3d_urn="urn:adsk.eagle:package:30839/1"/>
<part name="PAD5" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="SMD2" device="" package3d_urn="urn:adsk.eagle:package:30839/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="J21" gate="G$1" x="716.28" y="10.16" smashed="yes">
<attribute name="NAME" x="721.614" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="721.868" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J22" gate="G$1" x="678.18" y="10.16" smashed="yes">
<attribute name="NAME" x="683.514" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="683.768" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J23" gate="G$1" x="640.08" y="10.16" smashed="yes">
<attribute name="NAME" x="645.414" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="645.668" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J24" gate="G$1" x="601.98" y="10.16" smashed="yes">
<attribute name="NAME" x="607.314" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="607.568" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J25" gate="G$1" x="563.88" y="10.16" smashed="yes">
<attribute name="NAME" x="569.214" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="569.468" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J26" gate="G$1" x="525.78" y="10.16" smashed="yes">
<attribute name="NAME" x="531.114" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="531.368" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J27" gate="G$1" x="487.68" y="10.16" smashed="yes">
<attribute name="NAME" x="493.014" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="493.268" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J28" gate="G$1" x="449.58" y="10.16" smashed="yes">
<attribute name="NAME" x="454.914" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="455.168" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J29" gate="G$1" x="411.48" y="10.16" smashed="yes">
<attribute name="NAME" x="416.814" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="417.068" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J30" gate="G$1" x="373.38" y="10.16" smashed="yes">
<attribute name="NAME" x="378.714" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="378.968" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J31" gate="G$1" x="335.28" y="10.16" smashed="yes">
<attribute name="NAME" x="340.614" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="340.868" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J32" gate="G$1" x="297.18" y="10.16" smashed="yes">
<attribute name="NAME" x="302.514" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="302.768" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J33" gate="G$1" x="259.08" y="10.16" smashed="yes">
<attribute name="NAME" x="264.414" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="264.668" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J34" gate="G$1" x="220.98" y="10.16" smashed="yes">
<attribute name="NAME" x="226.314" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="226.568" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J35" gate="G$1" x="182.88" y="10.16" smashed="yes">
<attribute name="NAME" x="188.214" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="188.468" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J36" gate="G$1" x="144.78" y="10.16" smashed="yes">
<attribute name="NAME" x="150.114" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="150.368" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J37" gate="G$1" x="106.68" y="10.16" smashed="yes">
<attribute name="NAME" x="112.014" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="112.268" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J38" gate="G$1" x="68.58" y="10.16" smashed="yes">
<attribute name="NAME" x="73.914" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="74.168" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J39" gate="G$1" x="30.48" y="10.16" smashed="yes">
<attribute name="NAME" x="35.814" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="36.068" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="J40" gate="G$1" x="-7.62" y="10.16" smashed="yes">
<attribute name="NAME" x="-2.286" y="13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-2.032" y="-1.27" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="P+1" gate="VCC" x="-17.78" y="27.94" smashed="yes">
<attribute name="VALUE" x="-15.24" y="30.734" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND1" gate="1" x="-17.78" y="-10.16" smashed="yes">
<attribute name="VALUE" x="-20.32" y="-12.7" size="1.778" layer="96"/>
</instance>
<instance part="PAD1" gate="1" x="759.46" y="15.24" smashed="yes" rot="R180">
<attribute name="NAME" x="768.223" y="15.9258" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="760.603" y="18.542" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="PAD2" gate="1" x="759.46" y="17.78" smashed="yes" rot="R180">
<attribute name="NAME" x="768.223" y="18.4658" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="760.603" y="21.082" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="PAD3" gate="1" x="759.46" y="20.32" smashed="yes" rot="R180">
<attribute name="NAME" x="768.223" y="21.0058" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="760.603" y="23.622" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="PAD4" gate="1" x="759.46" y="22.86" smashed="yes" rot="R180">
<attribute name="NAME" x="768.223" y="23.5458" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="760.603" y="26.162" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="PAD5" gate="1" x="759.46" y="12.7" smashed="yes" rot="R180">
<attribute name="NAME" x="768.223" y="13.3858" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="760.603" y="16.002" size="1.778" layer="96" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="J40" gate="G$1" pin="4"/>
<wire x1="15.24" y1="2.54" x2="17.78" y2="2.54" width="0.1524" layer="91"/>
<wire x1="17.78" y1="2.54" x2="17.78" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="J21" gate="G$1" pin="4"/>
<wire x1="739.14" y1="2.54" x2="741.68" y2="2.54" width="0.1524" layer="91"/>
<wire x1="741.68" y1="2.54" x2="741.68" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="741.68" y1="-5.08" x2="713.74" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="713.74" y1="-5.08" x2="703.58" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="703.58" y1="-5.08" x2="675.64" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="675.64" y1="-5.08" x2="665.48" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="665.48" y1="-5.08" x2="637.54" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="637.54" y1="-5.08" x2="627.38" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="627.38" y1="-5.08" x2="599.44" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="599.44" y1="-5.08" x2="589.28" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="589.28" y1="-5.08" x2="561.34" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="561.34" y1="-5.08" x2="551.18" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-5.08" x2="523.24" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="523.24" y1="-5.08" x2="513.08" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="513.08" y1="-5.08" x2="485.14" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-5.08" x2="474.98" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="474.98" y1="-5.08" x2="447.04" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="447.04" y1="-5.08" x2="436.88" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="436.88" y1="-5.08" x2="408.94" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="408.94" y1="-5.08" x2="398.78" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="398.78" y1="-5.08" x2="370.84" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="370.84" y1="-5.08" x2="360.68" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="360.68" y1="-5.08" x2="332.74" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="332.74" y1="-5.08" x2="322.58" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="322.58" y1="-5.08" x2="294.64" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="294.64" y1="-5.08" x2="284.48" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="284.48" y1="-5.08" x2="256.54" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="256.54" y1="-5.08" x2="246.38" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="246.38" y1="-5.08" x2="218.44" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-5.08" x2="208.28" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="208.28" y1="-5.08" x2="180.34" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-5.08" x2="170.18" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-5.08" x2="142.24" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="142.24" y1="-5.08" x2="132.08" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="132.08" y1="-5.08" x2="104.14" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-5.08" x2="93.98" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-5.08" x2="66.04" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-5.08" x2="55.88" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-5.08" x2="27.94" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-5.08" x2="17.78" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="741.68" y1="-5.08" x2="751.84" y2="-5.08" width="0.1524" layer="91"/>
<junction x="741.68" y="-5.08"/>
<wire x1="17.78" y1="-5.08" x2="-10.16" y2="-5.08" width="0.1524" layer="91"/>
<junction x="17.78" y="-5.08"/>
<wire x1="-10.16" y1="-5.08" x2="-17.78" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="-5.08" x2="-20.32" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="-5.08" x2="-17.78" y2="-7.62" width="0.1524" layer="91"/>
<junction x="-17.78" y="-5.08"/>
<pinref part="J39" gate="G$1" pin="4"/>
<wire x1="53.34" y1="2.54" x2="55.88" y2="2.54" width="0.1524" layer="91"/>
<wire x1="55.88" y1="2.54" x2="55.88" y2="-5.08" width="0.1524" layer="91"/>
<junction x="55.88" y="-5.08"/>
<pinref part="J38" gate="G$1" pin="4"/>
<wire x1="91.44" y1="2.54" x2="93.98" y2="2.54" width="0.1524" layer="91"/>
<wire x1="93.98" y1="2.54" x2="93.98" y2="-5.08" width="0.1524" layer="91"/>
<junction x="93.98" y="-5.08"/>
<pinref part="J37" gate="G$1" pin="4"/>
<wire x1="129.54" y1="2.54" x2="132.08" y2="2.54" width="0.1524" layer="91"/>
<wire x1="132.08" y1="2.54" x2="132.08" y2="-5.08" width="0.1524" layer="91"/>
<junction x="132.08" y="-5.08"/>
<pinref part="J36" gate="G$1" pin="4"/>
<wire x1="167.64" y1="2.54" x2="170.18" y2="2.54" width="0.1524" layer="91"/>
<wire x1="170.18" y1="2.54" x2="170.18" y2="-5.08" width="0.1524" layer="91"/>
<junction x="170.18" y="-5.08"/>
<pinref part="J35" gate="G$1" pin="4"/>
<wire x1="205.74" y1="2.54" x2="208.28" y2="2.54" width="0.1524" layer="91"/>
<wire x1="208.28" y1="2.54" x2="208.28" y2="-5.08" width="0.1524" layer="91"/>
<junction x="208.28" y="-5.08"/>
<pinref part="J34" gate="G$1" pin="4"/>
<wire x1="243.84" y1="2.54" x2="246.38" y2="2.54" width="0.1524" layer="91"/>
<wire x1="246.38" y1="2.54" x2="246.38" y2="-5.08" width="0.1524" layer="91"/>
<junction x="246.38" y="-5.08"/>
<pinref part="J33" gate="G$1" pin="4"/>
<wire x1="281.94" y1="2.54" x2="284.48" y2="2.54" width="0.1524" layer="91"/>
<wire x1="284.48" y1="2.54" x2="284.48" y2="-5.08" width="0.1524" layer="91"/>
<junction x="284.48" y="-5.08"/>
<pinref part="J32" gate="G$1" pin="4"/>
<wire x1="320.04" y1="2.54" x2="322.58" y2="2.54" width="0.1524" layer="91"/>
<wire x1="322.58" y1="2.54" x2="322.58" y2="-5.08" width="0.1524" layer="91"/>
<junction x="322.58" y="-5.08"/>
<pinref part="J31" gate="G$1" pin="4"/>
<wire x1="358.14" y1="2.54" x2="360.68" y2="2.54" width="0.1524" layer="91"/>
<wire x1="360.68" y1="2.54" x2="360.68" y2="-5.08" width="0.1524" layer="91"/>
<junction x="360.68" y="-5.08"/>
<pinref part="J30" gate="G$1" pin="4"/>
<wire x1="396.24" y1="2.54" x2="398.78" y2="2.54" width="0.1524" layer="91"/>
<wire x1="398.78" y1="2.54" x2="398.78" y2="-5.08" width="0.1524" layer="91"/>
<junction x="398.78" y="-5.08"/>
<pinref part="J29" gate="G$1" pin="4"/>
<wire x1="434.34" y1="2.54" x2="436.88" y2="2.54" width="0.1524" layer="91"/>
<wire x1="436.88" y1="2.54" x2="436.88" y2="-5.08" width="0.1524" layer="91"/>
<junction x="436.88" y="-5.08"/>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="PAD1" gate="1" pin="P"/>
<wire x1="756.92" y1="15.24" x2="751.84" y2="15.24" width="0.1524" layer="91"/>
<wire x1="751.84" y1="15.24" x2="751.84" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="751.84" y1="-5.08" x2="754.38" y2="-5.08" width="0.1524" layer="91"/>
<junction x="751.84" y="-5.08"/>
<pinref part="J40" gate="G$1" pin="MH2"/>
<wire x1="754.38" y1="-5.08" x2="756.92" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="7.62" x2="-10.16" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="-5.08" width="0.1524" layer="91"/>
<junction x="-10.16" y="-5.08"/>
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="10.16" width="0.1524" layer="91"/>
<junction x="-10.16" y="7.62"/>
<pinref part="J40" gate="G$1" pin="MH1"/>
<wire x1="-10.16" y1="10.16" x2="-7.62" y2="10.16" width="0.1524" layer="91"/>
<wire x1="472.44" y1="2.54" x2="474.98" y2="2.54" width="0.1524" layer="91"/>
<wire x1="474.98" y1="2.54" x2="474.98" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="J28" gate="G$1" pin="4"/>
<junction x="474.98" y="-5.08"/>
<wire x1="510.54" y1="2.54" x2="513.08" y2="2.54" width="0.1524" layer="91"/>
<wire x1="513.08" y1="2.54" x2="513.08" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="J27" gate="G$1" pin="4"/>
<junction x="513.08" y="-5.08"/>
<wire x1="548.64" y1="2.54" x2="551.18" y2="2.54" width="0.1524" layer="91"/>
<wire x1="551.18" y1="2.54" x2="551.18" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="J26" gate="G$1" pin="4"/>
<junction x="551.18" y="-5.08"/>
<wire x1="586.74" y1="2.54" x2="589.28" y2="2.54" width="0.1524" layer="91"/>
<wire x1="589.28" y1="2.54" x2="589.28" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="J25" gate="G$1" pin="4"/>
<junction x="589.28" y="-5.08"/>
<wire x1="624.84" y1="2.54" x2="627.38" y2="2.54" width="0.1524" layer="91"/>
<wire x1="627.38" y1="2.54" x2="627.38" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="J24" gate="G$1" pin="4"/>
<junction x="627.38" y="-5.08"/>
<wire x1="662.94" y1="2.54" x2="665.48" y2="2.54" width="0.1524" layer="91"/>
<wire x1="665.48" y1="2.54" x2="665.48" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="J23" gate="G$1" pin="4"/>
<junction x="665.48" y="-5.08"/>
<wire x1="701.04" y1="2.54" x2="703.58" y2="2.54" width="0.1524" layer="91"/>
<wire x1="703.58" y1="2.54" x2="703.58" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="J22" gate="G$1" pin="4"/>
<junction x="703.58" y="-5.08"/>
<pinref part="J21" gate="G$1" pin="MH2"/>
<wire x1="716.28" y1="7.62" x2="713.74" y2="7.62" width="0.1524" layer="91"/>
<wire x1="713.74" y1="7.62" x2="713.74" y2="-5.08" width="0.1524" layer="91"/>
<junction x="713.74" y="-5.08"/>
<pinref part="J21" gate="G$1" pin="MH1"/>
<wire x1="716.28" y1="10.16" x2="713.74" y2="10.16" width="0.1524" layer="91"/>
<wire x1="713.74" y1="10.16" x2="713.74" y2="7.62" width="0.1524" layer="91"/>
<junction x="713.74" y="7.62"/>
<pinref part="J22" gate="G$1" pin="MH1"/>
<wire x1="678.18" y1="10.16" x2="675.64" y2="10.16" width="0.1524" layer="91"/>
<wire x1="675.64" y1="10.16" x2="675.64" y2="7.62" width="0.1524" layer="91"/>
<junction x="675.64" y="-5.08"/>
<pinref part="J22" gate="G$1" pin="MH2"/>
<wire x1="675.64" y1="7.62" x2="675.64" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="678.18" y1="7.62" x2="675.64" y2="7.62" width="0.1524" layer="91"/>
<junction x="675.64" y="7.62"/>
<pinref part="J23" gate="G$1" pin="MH1"/>
<wire x1="640.08" y1="10.16" x2="637.54" y2="10.16" width="0.1524" layer="91"/>
<wire x1="637.54" y1="10.16" x2="637.54" y2="7.62" width="0.1524" layer="91"/>
<junction x="637.54" y="-5.08"/>
<pinref part="J23" gate="G$1" pin="MH2"/>
<wire x1="637.54" y1="7.62" x2="637.54" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="640.08" y1="7.62" x2="637.54" y2="7.62" width="0.1524" layer="91"/>
<junction x="637.54" y="7.62"/>
<pinref part="J24" gate="G$1" pin="MH1"/>
<wire x1="601.98" y1="10.16" x2="599.44" y2="10.16" width="0.1524" layer="91"/>
<wire x1="599.44" y1="10.16" x2="599.44" y2="7.62" width="0.1524" layer="91"/>
<junction x="599.44" y="-5.08"/>
<pinref part="J24" gate="G$1" pin="MH2"/>
<wire x1="599.44" y1="7.62" x2="599.44" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="601.98" y1="7.62" x2="599.44" y2="7.62" width="0.1524" layer="91"/>
<junction x="599.44" y="7.62"/>
<pinref part="J25" gate="G$1" pin="MH1"/>
<wire x1="563.88" y1="10.16" x2="561.34" y2="10.16" width="0.1524" layer="91"/>
<wire x1="561.34" y1="10.16" x2="561.34" y2="7.62" width="0.1524" layer="91"/>
<junction x="561.34" y="-5.08"/>
<pinref part="J25" gate="G$1" pin="MH2"/>
<wire x1="561.34" y1="7.62" x2="561.34" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="563.88" y1="7.62" x2="561.34" y2="7.62" width="0.1524" layer="91"/>
<junction x="561.34" y="7.62"/>
<pinref part="J26" gate="G$1" pin="MH1"/>
<wire x1="525.78" y1="10.16" x2="523.24" y2="10.16" width="0.1524" layer="91"/>
<wire x1="523.24" y1="10.16" x2="523.24" y2="7.62" width="0.1524" layer="91"/>
<junction x="523.24" y="-5.08"/>
<pinref part="J26" gate="G$1" pin="MH2"/>
<wire x1="523.24" y1="7.62" x2="523.24" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="525.78" y1="7.62" x2="523.24" y2="7.62" width="0.1524" layer="91"/>
<junction x="523.24" y="7.62"/>
<pinref part="J27" gate="G$1" pin="MH1"/>
<wire x1="487.68" y1="10.16" x2="485.14" y2="10.16" width="0.1524" layer="91"/>
<wire x1="485.14" y1="10.16" x2="485.14" y2="7.62" width="0.1524" layer="91"/>
<junction x="485.14" y="-5.08"/>
<pinref part="J27" gate="G$1" pin="MH2"/>
<wire x1="485.14" y1="7.62" x2="485.14" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="487.68" y1="7.62" x2="485.14" y2="7.62" width="0.1524" layer="91"/>
<junction x="485.14" y="7.62"/>
<pinref part="J28" gate="G$1" pin="MH1"/>
<wire x1="449.58" y1="10.16" x2="447.04" y2="10.16" width="0.1524" layer="91"/>
<wire x1="447.04" y1="10.16" x2="447.04" y2="7.62" width="0.1524" layer="91"/>
<junction x="447.04" y="-5.08"/>
<pinref part="J28" gate="G$1" pin="MH2"/>
<wire x1="447.04" y1="7.62" x2="447.04" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="449.58" y1="7.62" x2="447.04" y2="7.62" width="0.1524" layer="91"/>
<junction x="447.04" y="7.62"/>
<pinref part="J29" gate="G$1" pin="MH1"/>
<wire x1="411.48" y1="10.16" x2="408.94" y2="10.16" width="0.1524" layer="91"/>
<wire x1="408.94" y1="10.16" x2="408.94" y2="7.62" width="0.1524" layer="91"/>
<junction x="408.94" y="-5.08"/>
<pinref part="J29" gate="G$1" pin="MH2"/>
<wire x1="408.94" y1="7.62" x2="408.94" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="411.48" y1="7.62" x2="408.94" y2="7.62" width="0.1524" layer="91"/>
<junction x="408.94" y="7.62"/>
<pinref part="J30" gate="G$1" pin="MH1"/>
<wire x1="373.38" y1="10.16" x2="370.84" y2="10.16" width="0.1524" layer="91"/>
<wire x1="370.84" y1="10.16" x2="370.84" y2="7.62" width="0.1524" layer="91"/>
<junction x="370.84" y="-5.08"/>
<pinref part="J30" gate="G$1" pin="MH2"/>
<wire x1="370.84" y1="7.62" x2="370.84" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="373.38" y1="7.62" x2="370.84" y2="7.62" width="0.1524" layer="91"/>
<junction x="370.84" y="7.62"/>
<pinref part="J31" gate="G$1" pin="MH1"/>
<wire x1="335.28" y1="10.16" x2="332.74" y2="10.16" width="0.1524" layer="91"/>
<wire x1="332.74" y1="10.16" x2="332.74" y2="7.62" width="0.1524" layer="91"/>
<junction x="332.74" y="-5.08"/>
<pinref part="J31" gate="G$1" pin="MH2"/>
<wire x1="332.74" y1="7.62" x2="332.74" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="335.28" y1="7.62" x2="332.74" y2="7.62" width="0.1524" layer="91"/>
<junction x="332.74" y="7.62"/>
<pinref part="J32" gate="G$1" pin="MH1"/>
<wire x1="297.18" y1="10.16" x2="294.64" y2="10.16" width="0.1524" layer="91"/>
<wire x1="294.64" y1="10.16" x2="294.64" y2="7.62" width="0.1524" layer="91"/>
<junction x="294.64" y="-5.08"/>
<pinref part="J32" gate="G$1" pin="MH2"/>
<wire x1="294.64" y1="7.62" x2="294.64" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="297.18" y1="7.62" x2="294.64" y2="7.62" width="0.1524" layer="91"/>
<junction x="294.64" y="7.62"/>
<pinref part="J33" gate="G$1" pin="MH1"/>
<wire x1="259.08" y1="10.16" x2="256.54" y2="10.16" width="0.1524" layer="91"/>
<wire x1="256.54" y1="10.16" x2="256.54" y2="7.62" width="0.1524" layer="91"/>
<junction x="256.54" y="-5.08"/>
<pinref part="J33" gate="G$1" pin="MH2"/>
<wire x1="256.54" y1="7.62" x2="256.54" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="259.08" y1="7.62" x2="256.54" y2="7.62" width="0.1524" layer="91"/>
<junction x="256.54" y="7.62"/>
<pinref part="J34" gate="G$1" pin="MH1"/>
<wire x1="220.98" y1="10.16" x2="218.44" y2="10.16" width="0.1524" layer="91"/>
<wire x1="218.44" y1="10.16" x2="218.44" y2="7.62" width="0.1524" layer="91"/>
<junction x="218.44" y="-5.08"/>
<pinref part="J34" gate="G$1" pin="MH2"/>
<wire x1="218.44" y1="7.62" x2="218.44" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="220.98" y1="7.62" x2="218.44" y2="7.62" width="0.1524" layer="91"/>
<junction x="218.44" y="7.62"/>
<pinref part="J35" gate="G$1" pin="MH1"/>
<wire x1="182.88" y1="10.16" x2="180.34" y2="10.16" width="0.1524" layer="91"/>
<wire x1="180.34" y1="10.16" x2="180.34" y2="7.62" width="0.1524" layer="91"/>
<junction x="180.34" y="-5.08"/>
<pinref part="J35" gate="G$1" pin="MH2"/>
<wire x1="180.34" y1="7.62" x2="180.34" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="182.88" y1="7.62" x2="180.34" y2="7.62" width="0.1524" layer="91"/>
<junction x="180.34" y="7.62"/>
<pinref part="J36" gate="G$1" pin="MH1"/>
<wire x1="144.78" y1="10.16" x2="142.24" y2="10.16" width="0.1524" layer="91"/>
<wire x1="142.24" y1="10.16" x2="142.24" y2="7.62" width="0.1524" layer="91"/>
<junction x="142.24" y="-5.08"/>
<pinref part="J36" gate="G$1" pin="MH2"/>
<wire x1="142.24" y1="7.62" x2="142.24" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="144.78" y1="7.62" x2="142.24" y2="7.62" width="0.1524" layer="91"/>
<junction x="142.24" y="7.62"/>
<pinref part="J37" gate="G$1" pin="MH1"/>
<wire x1="106.68" y1="10.16" x2="104.14" y2="10.16" width="0.1524" layer="91"/>
<wire x1="104.14" y1="10.16" x2="104.14" y2="7.62" width="0.1524" layer="91"/>
<junction x="104.14" y="-5.08"/>
<pinref part="J37" gate="G$1" pin="MH2"/>
<wire x1="104.14" y1="7.62" x2="104.14" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="106.68" y1="7.62" x2="104.14" y2="7.62" width="0.1524" layer="91"/>
<junction x="104.14" y="7.62"/>
<pinref part="J38" gate="G$1" pin="MH1"/>
<wire x1="68.58" y1="10.16" x2="66.04" y2="10.16" width="0.1524" layer="91"/>
<wire x1="66.04" y1="10.16" x2="66.04" y2="7.62" width="0.1524" layer="91"/>
<junction x="66.04" y="-5.08"/>
<pinref part="J38" gate="G$1" pin="MH2"/>
<wire x1="66.04" y1="7.62" x2="66.04" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="68.58" y1="7.62" x2="66.04" y2="7.62" width="0.1524" layer="91"/>
<junction x="66.04" y="7.62"/>
<pinref part="J39" gate="G$1" pin="MH1"/>
<wire x1="30.48" y1="10.16" x2="27.94" y2="10.16" width="0.1524" layer="91"/>
<wire x1="27.94" y1="10.16" x2="27.94" y2="7.62" width="0.1524" layer="91"/>
<junction x="27.94" y="-5.08"/>
<pinref part="J39" gate="G$1" pin="MH2"/>
<wire x1="27.94" y1="7.62" x2="27.94" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="30.48" y1="7.62" x2="27.94" y2="7.62" width="0.1524" layer="91"/>
<junction x="27.94" y="7.62"/>
<pinref part="PAD5" gate="1" pin="P"/>
<wire x1="756.92" y1="12.7" x2="754.38" y2="12.7" width="0.1524" layer="91"/>
<wire x1="754.38" y1="12.7" x2="754.38" y2="-5.08" width="0.1524" layer="91"/>
<junction x="754.38" y="-5.08"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="J40" gate="G$1" pin="1"/>
<wire x1="15.24" y1="10.16" x2="17.78" y2="10.16" width="0.1524" layer="91"/>
<wire x1="17.78" y1="10.16" x2="17.78" y2="22.86" width="0.1524" layer="91"/>
<wire x1="17.78" y1="22.86" x2="-17.78" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="22.86" x2="-20.32" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="22.86" x2="-17.78" y2="25.4" width="0.1524" layer="91"/>
<junction x="-17.78" y="22.86"/>
<wire x1="17.78" y1="22.86" x2="55.88" y2="22.86" width="0.1524" layer="91"/>
<wire x1="55.88" y1="22.86" x2="93.98" y2="22.86" width="0.1524" layer="91"/>
<wire x1="93.98" y1="22.86" x2="132.08" y2="22.86" width="0.1524" layer="91"/>
<wire x1="132.08" y1="22.86" x2="170.18" y2="22.86" width="0.1524" layer="91"/>
<wire x1="170.18" y1="22.86" x2="208.28" y2="22.86" width="0.1524" layer="91"/>
<wire x1="208.28" y1="22.86" x2="246.38" y2="22.86" width="0.1524" layer="91"/>
<wire x1="246.38" y1="22.86" x2="284.48" y2="22.86" width="0.1524" layer="91"/>
<wire x1="284.48" y1="22.86" x2="322.58" y2="22.86" width="0.1524" layer="91"/>
<wire x1="322.58" y1="22.86" x2="360.68" y2="22.86" width="0.1524" layer="91"/>
<wire x1="360.68" y1="22.86" x2="398.78" y2="22.86" width="0.1524" layer="91"/>
<wire x1="398.78" y1="22.86" x2="436.88" y2="22.86" width="0.1524" layer="91"/>
<wire x1="436.88" y1="22.86" x2="474.98" y2="22.86" width="0.1524" layer="91"/>
<wire x1="474.98" y1="22.86" x2="513.08" y2="22.86" width="0.1524" layer="91"/>
<wire x1="513.08" y1="22.86" x2="551.18" y2="22.86" width="0.1524" layer="91"/>
<wire x1="551.18" y1="22.86" x2="589.28" y2="22.86" width="0.1524" layer="91"/>
<wire x1="589.28" y1="22.86" x2="627.38" y2="22.86" width="0.1524" layer="91"/>
<wire x1="627.38" y1="22.86" x2="665.48" y2="22.86" width="0.1524" layer="91"/>
<wire x1="665.48" y1="22.86" x2="703.58" y2="22.86" width="0.1524" layer="91"/>
<wire x1="703.58" y1="22.86" x2="741.68" y2="22.86" width="0.1524" layer="91"/>
<wire x1="741.68" y1="22.86" x2="741.68" y2="10.16" width="0.1524" layer="91"/>
<junction x="17.78" y="22.86"/>
<pinref part="J21" gate="G$1" pin="1"/>
<wire x1="741.68" y1="10.16" x2="739.14" y2="10.16" width="0.1524" layer="91"/>
<junction x="741.68" y="22.86"/>
<pinref part="J39" gate="G$1" pin="1"/>
<wire x1="53.34" y1="10.16" x2="55.88" y2="10.16" width="0.1524" layer="91"/>
<wire x1="55.88" y1="10.16" x2="55.88" y2="22.86" width="0.1524" layer="91"/>
<junction x="55.88" y="22.86"/>
<pinref part="J38" gate="G$1" pin="1"/>
<wire x1="91.44" y1="10.16" x2="93.98" y2="10.16" width="0.1524" layer="91"/>
<wire x1="93.98" y1="10.16" x2="93.98" y2="22.86" width="0.1524" layer="91"/>
<junction x="93.98" y="22.86"/>
<pinref part="J37" gate="G$1" pin="1"/>
<wire x1="129.54" y1="10.16" x2="132.08" y2="10.16" width="0.1524" layer="91"/>
<wire x1="132.08" y1="10.16" x2="132.08" y2="22.86" width="0.1524" layer="91"/>
<junction x="132.08" y="22.86"/>
<pinref part="J36" gate="G$1" pin="1"/>
<wire x1="167.64" y1="10.16" x2="170.18" y2="10.16" width="0.1524" layer="91"/>
<wire x1="170.18" y1="10.16" x2="170.18" y2="22.86" width="0.1524" layer="91"/>
<junction x="170.18" y="22.86"/>
<pinref part="J35" gate="G$1" pin="1"/>
<wire x1="205.74" y1="10.16" x2="208.28" y2="10.16" width="0.1524" layer="91"/>
<wire x1="208.28" y1="10.16" x2="208.28" y2="22.86" width="0.1524" layer="91"/>
<junction x="208.28" y="22.86"/>
<pinref part="J34" gate="G$1" pin="1"/>
<wire x1="243.84" y1="10.16" x2="246.38" y2="10.16" width="0.1524" layer="91"/>
<wire x1="246.38" y1="10.16" x2="246.38" y2="22.86" width="0.1524" layer="91"/>
<junction x="246.38" y="22.86"/>
<pinref part="J33" gate="G$1" pin="1"/>
<wire x1="281.94" y1="10.16" x2="284.48" y2="10.16" width="0.1524" layer="91"/>
<wire x1="284.48" y1="10.16" x2="284.48" y2="22.86" width="0.1524" layer="91"/>
<junction x="284.48" y="22.86"/>
<pinref part="J32" gate="G$1" pin="1"/>
<wire x1="320.04" y1="10.16" x2="322.58" y2="10.16" width="0.1524" layer="91"/>
<wire x1="322.58" y1="10.16" x2="322.58" y2="22.86" width="0.1524" layer="91"/>
<junction x="322.58" y="22.86"/>
<pinref part="J31" gate="G$1" pin="1"/>
<wire x1="358.14" y1="10.16" x2="360.68" y2="10.16" width="0.1524" layer="91"/>
<wire x1="360.68" y1="10.16" x2="360.68" y2="22.86" width="0.1524" layer="91"/>
<junction x="360.68" y="22.86"/>
<pinref part="J30" gate="G$1" pin="1"/>
<wire x1="396.24" y1="10.16" x2="398.78" y2="10.16" width="0.1524" layer="91"/>
<wire x1="398.78" y1="10.16" x2="398.78" y2="22.86" width="0.1524" layer="91"/>
<junction x="398.78" y="22.86"/>
<pinref part="J29" gate="G$1" pin="1"/>
<wire x1="434.34" y1="10.16" x2="436.88" y2="10.16" width="0.1524" layer="91"/>
<wire x1="436.88" y1="10.16" x2="436.88" y2="22.86" width="0.1524" layer="91"/>
<junction x="436.88" y="22.86"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<pinref part="PAD4" gate="1" pin="P"/>
<wire x1="741.68" y1="22.86" x2="756.92" y2="22.86" width="0.1524" layer="91"/>
<wire x1="474.98" y1="22.86" x2="474.98" y2="10.16" width="0.1524" layer="91"/>
<wire x1="474.98" y1="10.16" x2="472.44" y2="10.16" width="0.1524" layer="91"/>
<pinref part="J28" gate="G$1" pin="1"/>
<junction x="474.98" y="22.86"/>
<wire x1="513.08" y1="22.86" x2="513.08" y2="10.16" width="0.1524" layer="91"/>
<wire x1="513.08" y1="10.16" x2="510.54" y2="10.16" width="0.1524" layer="91"/>
<pinref part="J27" gate="G$1" pin="1"/>
<junction x="513.08" y="22.86"/>
<wire x1="551.18" y1="22.86" x2="551.18" y2="10.16" width="0.1524" layer="91"/>
<wire x1="551.18" y1="10.16" x2="548.64" y2="10.16" width="0.1524" layer="91"/>
<pinref part="J26" gate="G$1" pin="1"/>
<junction x="551.18" y="22.86"/>
<wire x1="589.28" y1="22.86" x2="589.28" y2="10.16" width="0.1524" layer="91"/>
<wire x1="589.28" y1="10.16" x2="586.74" y2="10.16" width="0.1524" layer="91"/>
<pinref part="J25" gate="G$1" pin="1"/>
<junction x="589.28" y="22.86"/>
<wire x1="627.38" y1="22.86" x2="627.38" y2="10.16" width="0.1524" layer="91"/>
<wire x1="627.38" y1="10.16" x2="624.84" y2="10.16" width="0.1524" layer="91"/>
<pinref part="J24" gate="G$1" pin="1"/>
<junction x="627.38" y="22.86"/>
<wire x1="665.48" y1="22.86" x2="665.48" y2="10.16" width="0.1524" layer="91"/>
<wire x1="665.48" y1="10.16" x2="662.94" y2="10.16" width="0.1524" layer="91"/>
<pinref part="J23" gate="G$1" pin="1"/>
<junction x="665.48" y="22.86"/>
<wire x1="703.58" y1="22.86" x2="703.58" y2="10.16" width="0.1524" layer="91"/>
<wire x1="703.58" y1="10.16" x2="701.04" y2="10.16" width="0.1524" layer="91"/>
<pinref part="J22" gate="G$1" pin="1"/>
<junction x="703.58" y="22.86"/>
</segment>
</net>
<net name="B-" class="0">
<segment>
<pinref part="J21" gate="G$1" pin="2"/>
<wire x1="739.14" y1="7.62" x2="744.22" y2="7.62" width="0.1524" layer="91"/>
<wire x1="744.22" y1="7.62" x2="744.22" y2="20.32" width="0.1524" layer="91"/>
<pinref part="J40" gate="G$1" pin="2"/>
<wire x1="15.24" y1="7.62" x2="20.32" y2="7.62" width="0.1524" layer="91"/>
<wire x1="20.32" y1="7.62" x2="20.32" y2="20.32" width="0.1524" layer="91"/>
<wire x1="20.32" y1="20.32" x2="-20.32" y2="20.32" width="0.1524" layer="91"/>
<wire x1="744.22" y1="20.32" x2="706.12" y2="20.32" width="0.1524" layer="91"/>
<junction x="20.32" y="20.32"/>
<pinref part="J39" gate="G$1" pin="2"/>
<wire x1="706.12" y1="20.32" x2="668.02" y2="20.32" width="0.1524" layer="91"/>
<wire x1="668.02" y1="20.32" x2="629.92" y2="20.32" width="0.1524" layer="91"/>
<wire x1="629.92" y1="20.32" x2="591.82" y2="20.32" width="0.1524" layer="91"/>
<wire x1="591.82" y1="20.32" x2="553.72" y2="20.32" width="0.1524" layer="91"/>
<wire x1="553.72" y1="20.32" x2="515.62" y2="20.32" width="0.1524" layer="91"/>
<wire x1="515.62" y1="20.32" x2="477.52" y2="20.32" width="0.1524" layer="91"/>
<wire x1="477.52" y1="20.32" x2="439.42" y2="20.32" width="0.1524" layer="91"/>
<wire x1="439.42" y1="20.32" x2="401.32" y2="20.32" width="0.1524" layer="91"/>
<wire x1="401.32" y1="20.32" x2="363.22" y2="20.32" width="0.1524" layer="91"/>
<wire x1="363.22" y1="20.32" x2="325.12" y2="20.32" width="0.1524" layer="91"/>
<wire x1="325.12" y1="20.32" x2="287.02" y2="20.32" width="0.1524" layer="91"/>
<wire x1="287.02" y1="20.32" x2="248.92" y2="20.32" width="0.1524" layer="91"/>
<wire x1="248.92" y1="20.32" x2="210.82" y2="20.32" width="0.1524" layer="91"/>
<wire x1="210.82" y1="20.32" x2="172.72" y2="20.32" width="0.1524" layer="91"/>
<wire x1="172.72" y1="20.32" x2="134.62" y2="20.32" width="0.1524" layer="91"/>
<wire x1="134.62" y1="20.32" x2="96.52" y2="20.32" width="0.1524" layer="91"/>
<wire x1="96.52" y1="20.32" x2="58.42" y2="20.32" width="0.1524" layer="91"/>
<wire x1="58.42" y1="20.32" x2="20.32" y2="20.32" width="0.1524" layer="91"/>
<wire x1="53.34" y1="7.62" x2="58.42" y2="7.62" width="0.1524" layer="91"/>
<wire x1="58.42" y1="7.62" x2="58.42" y2="20.32" width="0.1524" layer="91"/>
<junction x="58.42" y="20.32"/>
<pinref part="J38" gate="G$1" pin="2"/>
<wire x1="91.44" y1="7.62" x2="96.52" y2="7.62" width="0.1524" layer="91"/>
<wire x1="96.52" y1="7.62" x2="96.52" y2="20.32" width="0.1524" layer="91"/>
<junction x="96.52" y="20.32"/>
<pinref part="J37" gate="G$1" pin="2"/>
<wire x1="129.54" y1="7.62" x2="134.62" y2="7.62" width="0.1524" layer="91"/>
<wire x1="134.62" y1="7.62" x2="134.62" y2="20.32" width="0.1524" layer="91"/>
<junction x="134.62" y="20.32"/>
<pinref part="J36" gate="G$1" pin="2"/>
<wire x1="167.64" y1="7.62" x2="172.72" y2="7.62" width="0.1524" layer="91"/>
<wire x1="172.72" y1="7.62" x2="172.72" y2="20.32" width="0.1524" layer="91"/>
<junction x="172.72" y="20.32"/>
<pinref part="J35" gate="G$1" pin="2"/>
<wire x1="205.74" y1="7.62" x2="210.82" y2="7.62" width="0.1524" layer="91"/>
<wire x1="210.82" y1="7.62" x2="210.82" y2="20.32" width="0.1524" layer="91"/>
<junction x="210.82" y="20.32"/>
<pinref part="J34" gate="G$1" pin="2"/>
<wire x1="243.84" y1="7.62" x2="248.92" y2="7.62" width="0.1524" layer="91"/>
<wire x1="248.92" y1="7.62" x2="248.92" y2="20.32" width="0.1524" layer="91"/>
<junction x="248.92" y="20.32"/>
<pinref part="J33" gate="G$1" pin="2"/>
<wire x1="281.94" y1="7.62" x2="287.02" y2="7.62" width="0.1524" layer="91"/>
<wire x1="287.02" y1="7.62" x2="287.02" y2="20.32" width="0.1524" layer="91"/>
<junction x="287.02" y="20.32"/>
<pinref part="J32" gate="G$1" pin="2"/>
<wire x1="320.04" y1="7.62" x2="325.12" y2="7.62" width="0.1524" layer="91"/>
<wire x1="325.12" y1="7.62" x2="325.12" y2="20.32" width="0.1524" layer="91"/>
<junction x="325.12" y="20.32"/>
<pinref part="J31" gate="G$1" pin="2"/>
<wire x1="358.14" y1="7.62" x2="363.22" y2="7.62" width="0.1524" layer="91"/>
<wire x1="363.22" y1="7.62" x2="363.22" y2="20.32" width="0.1524" layer="91"/>
<junction x="363.22" y="20.32"/>
<pinref part="J30" gate="G$1" pin="2"/>
<wire x1="396.24" y1="7.62" x2="401.32" y2="7.62" width="0.1524" layer="91"/>
<wire x1="401.32" y1="7.62" x2="401.32" y2="20.32" width="0.1524" layer="91"/>
<junction x="401.32" y="20.32"/>
<pinref part="J29" gate="G$1" pin="2"/>
<wire x1="434.34" y1="7.62" x2="439.42" y2="7.62" width="0.1524" layer="91"/>
<wire x1="439.42" y1="7.62" x2="439.42" y2="20.32" width="0.1524" layer="91"/>
<junction x="439.42" y="20.32"/>
<label x="-20.32" y="20.32" size="1.27" layer="95" rot="R180" xref="yes"/>
<wire x1="472.44" y1="7.62" x2="477.52" y2="7.62" width="0.1524" layer="91"/>
<wire x1="477.52" y1="7.62" x2="477.52" y2="20.32" width="0.1524" layer="91"/>
<pinref part="J28" gate="G$1" pin="2"/>
<junction x="477.52" y="20.32"/>
<wire x1="510.54" y1="7.62" x2="515.62" y2="7.62" width="0.1524" layer="91"/>
<wire x1="515.62" y1="7.62" x2="515.62" y2="20.32" width="0.1524" layer="91"/>
<pinref part="J27" gate="G$1" pin="2"/>
<junction x="515.62" y="20.32"/>
<wire x1="548.64" y1="7.62" x2="553.72" y2="7.62" width="0.1524" layer="91"/>
<wire x1="553.72" y1="7.62" x2="553.72" y2="20.32" width="0.1524" layer="91"/>
<pinref part="J26" gate="G$1" pin="2"/>
<junction x="553.72" y="20.32"/>
<wire x1="586.74" y1="7.62" x2="591.82" y2="7.62" width="0.1524" layer="91"/>
<wire x1="591.82" y1="7.62" x2="591.82" y2="20.32" width="0.1524" layer="91"/>
<pinref part="J25" gate="G$1" pin="2"/>
<junction x="591.82" y="20.32"/>
<wire x1="624.84" y1="7.62" x2="629.92" y2="7.62" width="0.1524" layer="91"/>
<wire x1="629.92" y1="7.62" x2="629.92" y2="20.32" width="0.1524" layer="91"/>
<pinref part="J24" gate="G$1" pin="2"/>
<junction x="629.92" y="20.32"/>
<wire x1="662.94" y1="7.62" x2="668.02" y2="7.62" width="0.1524" layer="91"/>
<wire x1="668.02" y1="7.62" x2="668.02" y2="20.32" width="0.1524" layer="91"/>
<pinref part="J23" gate="G$1" pin="2"/>
<junction x="668.02" y="20.32"/>
<wire x1="701.04" y1="7.62" x2="706.12" y2="7.62" width="0.1524" layer="91"/>
<wire x1="706.12" y1="7.62" x2="706.12" y2="20.32" width="0.1524" layer="91"/>
<pinref part="J22" gate="G$1" pin="2"/>
<junction x="706.12" y="20.32"/>
<wire x1="744.22" y1="20.32" x2="756.92" y2="20.32" width="0.1524" layer="91"/>
<junction x="744.22" y="20.32"/>
<pinref part="PAD3" gate="1" pin="P"/>
</segment>
</net>
<net name="A+" class="0">
<segment>
<pinref part="J40" gate="G$1" pin="3"/>
<wire x1="15.24" y1="5.08" x2="22.86" y2="5.08" width="0.1524" layer="91"/>
<wire x1="22.86" y1="5.08" x2="22.86" y2="17.78" width="0.1524" layer="91"/>
<wire x1="22.86" y1="17.78" x2="-20.32" y2="17.78" width="0.1524" layer="91"/>
<pinref part="J21" gate="G$1" pin="3"/>
<wire x1="739.14" y1="5.08" x2="746.76" y2="5.08" width="0.1524" layer="91"/>
<wire x1="746.76" y1="5.08" x2="746.76" y2="17.78" width="0.1524" layer="91"/>
<wire x1="22.86" y1="17.78" x2="60.96" y2="17.78" width="0.1524" layer="91"/>
<junction x="22.86" y="17.78"/>
<pinref part="J39" gate="G$1" pin="3"/>
<wire x1="60.96" y1="17.78" x2="99.06" y2="17.78" width="0.1524" layer="91"/>
<wire x1="99.06" y1="17.78" x2="137.16" y2="17.78" width="0.1524" layer="91"/>
<wire x1="137.16" y1="17.78" x2="175.26" y2="17.78" width="0.1524" layer="91"/>
<wire x1="175.26" y1="17.78" x2="213.36" y2="17.78" width="0.1524" layer="91"/>
<wire x1="213.36" y1="17.78" x2="251.46" y2="17.78" width="0.1524" layer="91"/>
<wire x1="251.46" y1="17.78" x2="289.56" y2="17.78" width="0.1524" layer="91"/>
<wire x1="289.56" y1="17.78" x2="327.66" y2="17.78" width="0.1524" layer="91"/>
<wire x1="327.66" y1="17.78" x2="365.76" y2="17.78" width="0.1524" layer="91"/>
<wire x1="365.76" y1="17.78" x2="403.86" y2="17.78" width="0.1524" layer="91"/>
<wire x1="403.86" y1="17.78" x2="441.96" y2="17.78" width="0.1524" layer="91"/>
<wire x1="441.96" y1="17.78" x2="480.06" y2="17.78" width="0.1524" layer="91"/>
<wire x1="480.06" y1="17.78" x2="518.16" y2="17.78" width="0.1524" layer="91"/>
<wire x1="518.16" y1="17.78" x2="556.26" y2="17.78" width="0.1524" layer="91"/>
<wire x1="556.26" y1="17.78" x2="594.36" y2="17.78" width="0.1524" layer="91"/>
<wire x1="594.36" y1="17.78" x2="632.46" y2="17.78" width="0.1524" layer="91"/>
<wire x1="632.46" y1="17.78" x2="670.56" y2="17.78" width="0.1524" layer="91"/>
<wire x1="670.56" y1="17.78" x2="708.66" y2="17.78" width="0.1524" layer="91"/>
<wire x1="708.66" y1="17.78" x2="746.76" y2="17.78" width="0.1524" layer="91"/>
<wire x1="53.34" y1="5.08" x2="60.96" y2="5.08" width="0.1524" layer="91"/>
<wire x1="60.96" y1="5.08" x2="60.96" y2="17.78" width="0.1524" layer="91"/>
<junction x="60.96" y="17.78"/>
<pinref part="J38" gate="G$1" pin="3"/>
<wire x1="91.44" y1="5.08" x2="99.06" y2="5.08" width="0.1524" layer="91"/>
<wire x1="99.06" y1="5.08" x2="99.06" y2="17.78" width="0.1524" layer="91"/>
<junction x="99.06" y="17.78"/>
<pinref part="J37" gate="G$1" pin="3"/>
<wire x1="129.54" y1="5.08" x2="137.16" y2="5.08" width="0.1524" layer="91"/>
<wire x1="137.16" y1="5.08" x2="137.16" y2="17.78" width="0.1524" layer="91"/>
<junction x="137.16" y="17.78"/>
<pinref part="J36" gate="G$1" pin="3"/>
<wire x1="167.64" y1="5.08" x2="175.26" y2="5.08" width="0.1524" layer="91"/>
<wire x1="175.26" y1="5.08" x2="175.26" y2="17.78" width="0.1524" layer="91"/>
<junction x="175.26" y="17.78"/>
<pinref part="J35" gate="G$1" pin="3"/>
<wire x1="205.74" y1="5.08" x2="213.36" y2="5.08" width="0.1524" layer="91"/>
<wire x1="213.36" y1="5.08" x2="213.36" y2="17.78" width="0.1524" layer="91"/>
<junction x="213.36" y="17.78"/>
<pinref part="J34" gate="G$1" pin="3"/>
<wire x1="243.84" y1="5.08" x2="251.46" y2="5.08" width="0.1524" layer="91"/>
<wire x1="251.46" y1="5.08" x2="251.46" y2="17.78" width="0.1524" layer="91"/>
<junction x="251.46" y="17.78"/>
<pinref part="J33" gate="G$1" pin="3"/>
<wire x1="281.94" y1="5.08" x2="289.56" y2="5.08" width="0.1524" layer="91"/>
<wire x1="289.56" y1="5.08" x2="289.56" y2="17.78" width="0.1524" layer="91"/>
<junction x="289.56" y="17.78"/>
<pinref part="J32" gate="G$1" pin="3"/>
<wire x1="320.04" y1="5.08" x2="327.66" y2="5.08" width="0.1524" layer="91"/>
<wire x1="327.66" y1="5.08" x2="327.66" y2="17.78" width="0.1524" layer="91"/>
<junction x="327.66" y="17.78"/>
<pinref part="J31" gate="G$1" pin="3"/>
<wire x1="358.14" y1="5.08" x2="365.76" y2="5.08" width="0.1524" layer="91"/>
<wire x1="365.76" y1="5.08" x2="365.76" y2="17.78" width="0.1524" layer="91"/>
<junction x="365.76" y="17.78"/>
<pinref part="J30" gate="G$1" pin="3"/>
<wire x1="396.24" y1="5.08" x2="403.86" y2="5.08" width="0.1524" layer="91"/>
<wire x1="403.86" y1="5.08" x2="403.86" y2="17.78" width="0.1524" layer="91"/>
<junction x="403.86" y="17.78"/>
<pinref part="J29" gate="G$1" pin="3"/>
<wire x1="434.34" y1="5.08" x2="441.96" y2="5.08" width="0.1524" layer="91"/>
<wire x1="441.96" y1="5.08" x2="441.96" y2="17.78" width="0.1524" layer="91"/>
<junction x="441.96" y="17.78"/>
<label x="-20.32" y="17.78" size="1.27" layer="95" rot="R180" xref="yes"/>
<wire x1="472.44" y1="5.08" x2="480.06" y2="5.08" width="0.1524" layer="91"/>
<wire x1="480.06" y1="5.08" x2="480.06" y2="17.78" width="0.1524" layer="91"/>
<pinref part="J28" gate="G$1" pin="3"/>
<junction x="480.06" y="17.78"/>
<wire x1="510.54" y1="5.08" x2="518.16" y2="5.08" width="0.1524" layer="91"/>
<wire x1="518.16" y1="5.08" x2="518.16" y2="17.78" width="0.1524" layer="91"/>
<pinref part="J27" gate="G$1" pin="3"/>
<junction x="518.16" y="17.78"/>
<wire x1="548.64" y1="5.08" x2="556.26" y2="5.08" width="0.1524" layer="91"/>
<wire x1="556.26" y1="5.08" x2="556.26" y2="17.78" width="0.1524" layer="91"/>
<pinref part="J26" gate="G$1" pin="3"/>
<junction x="556.26" y="17.78"/>
<wire x1="586.74" y1="5.08" x2="594.36" y2="5.08" width="0.1524" layer="91"/>
<wire x1="594.36" y1="5.08" x2="594.36" y2="17.78" width="0.1524" layer="91"/>
<pinref part="J25" gate="G$1" pin="3"/>
<junction x="594.36" y="17.78"/>
<wire x1="624.84" y1="5.08" x2="632.46" y2="5.08" width="0.1524" layer="91"/>
<wire x1="632.46" y1="5.08" x2="632.46" y2="17.78" width="0.1524" layer="91"/>
<pinref part="J24" gate="G$1" pin="3"/>
<junction x="632.46" y="17.78"/>
<wire x1="662.94" y1="5.08" x2="670.56" y2="5.08" width="0.1524" layer="91"/>
<wire x1="670.56" y1="5.08" x2="670.56" y2="17.78" width="0.1524" layer="91"/>
<pinref part="J23" gate="G$1" pin="3"/>
<junction x="670.56" y="17.78"/>
<wire x1="701.04" y1="5.08" x2="708.66" y2="5.08" width="0.1524" layer="91"/>
<wire x1="708.66" y1="5.08" x2="708.66" y2="17.78" width="0.1524" layer="91"/>
<pinref part="J22" gate="G$1" pin="3"/>
<junction x="708.66" y="17.78"/>
<wire x1="746.76" y1="17.78" x2="756.92" y2="17.78" width="0.1524" layer="91"/>
<junction x="746.76" y="17.78"/>
<pinref part="PAD2" gate="1" pin="P"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="9.4" severity="warning">
Since Version 9.4, EAGLE supports the overriding of 3D packages
in schematics and board files. Those overridden 3d packages
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
