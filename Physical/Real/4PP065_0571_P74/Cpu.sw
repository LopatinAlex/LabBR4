<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio Version=4.5.2.102?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1">
    <Task Name="ncsdcctrl" Source="ncsdcctrl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="SDCAxisCtr" Source="SDCAxisCtrl_X.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
    <Task Name="SDCAxisCt1" Source="SDCAxisCtrl_Y.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
    <Task Name="SDCAxisCt2" Source="SDCAxisCtrl_Z.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4">
    <Task Name="User_Inter" Source="User_Interface.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#5" />
  <TaskClass Name="Cyclic#6" />
  <TaskClass Name="Cyclic#7" />
  <TaskClass Name="Cyclic#8" />
  <DataObjects>
    <DataObject Name="Arnc0sys" Source="" Memory="UserROM" Language="Binary" />
  </DataObjects>
  <NcDataObjects>
    <NcDataObject Name="AxisInit" Source="AxisInit.dob" Memory="UserROM" Language="Ax" />
    <NcDataObject Name="gAxis03a" Source="gAxis03obj.gAxis03a.dob" Memory="UserROM" Language="Apt" />
    <NcDataObject Name="gAxis03i" Source="gAxis03obj.gAxis03i.dob" Memory="UserROM" Language="Ax" />
    <NcDataObject Name="AxisApt" Source="AxisApt.dob" Memory="UserROM" Language="Apt" />
    <NcDataObject Name="gmcipvar" Source="GmcIpUserConfig.gmcipvar.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipfun" Source="GmcIpUserConfig.gmcipfun.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipfub" Source="GmcIpUserConfig.gmcipfub.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipubr" Source="GmcIpUserConfig.gmcipubr.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipusm" Source="GmcIpUserConfig.gmcipusm.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipui" Source="GmcIpUserConfig.gmcipui.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipus" Source="GmcIpUserConfig.gmcipus.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipuc" Source="GmcIpUserConfig.gmcipuc.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipsys" Source="GmcIpConfig.gmcipsys.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmciplbr" Source="GmcIpConfig.gmciplbr.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipcbr" Source="GmcIpConfig.gmcipcbr.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmciplsm" Source="GmcIpConfig.gmciplsm.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipcsm" Source="GmcIpConfig.gmcipcsm.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipcfg" Source="GmcIpConfig.gmcipcfg.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipiec" Source="GmcIpConfig.gmcipiec.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmciplog" Source="GmcIpConfig.gmciplog.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipesm" Source="GmcIpConfig.gmcipesm.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipmxd" Source="GmcIpConfig.gmcipmxd.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="gmcipmx" Source="GmcIpConfig.gmcipmx.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="CncInit" Source="CncInit.dob" Memory="UserROM" Language="Cns" />
    <NcDataObject Name="CncProg" Source="CncProg.dob" Memory="UserROM" Language="Cnc" />
    <NcDataObject Name="CncProg1" Source="CncProg1.dob" Memory="UserROM" Language="Cnc" />
  </NcDataObjects>
  <VcDataObjects>
    <VcDataObject Name="Visu" Source="Visu.dob" Memory="UserROM" Language="Vc" WarningLevel="2" Compress="false" />
  </VcDataObjects>
  <Binaries>
    <BinaryObject Name="TCData" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="Acp10map1" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="acp10cfg" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Acp10map" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="arconfig" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="User" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Role" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="sysconf" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="iomap" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="asfw" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="ashwd" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="arnc0cfg" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Arnc0map" Source="" Memory="UserROM" Language="Binary" />
  </Binaries>
  <Libraries>
    <LibraryObject Name="Acp10sdc" Source="Libraries.Acp10sdc.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="Library" Source="Libraries.Library.lby" Memory="UserROM" Language="ANSIC" Debugging="true" />
    <LibraryObject Name="Acp10man" Source="Libraries.Acp10man.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="Acp10_MC" Source="Libraries.Acp10_MC.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="sys_lib" Source="Libraries.sys_lib.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="brsystem" Source="Libraries.brsystem.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="asstring" Source="Libraries.asstring.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="powerlnk" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="asieccon" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsMath" Source="Libraries.AsMath.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="Arnc0man" Source="Libraries.Arnc0man.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="DataObj" Source="Libraries.DataObj.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsArLog" Source="Libraries.AsArLog.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="FileIO" Source="Libraries.FileIO.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsArProf" Source="Libraries.AsArProf.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsMem" Source="Libraries.AsMem.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="Runtime" Source="Libraries.Runtime.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="astime" Source="Libraries.astime.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="Acp10par" Source="Libraries.Acp10par.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NcGlobal" Source="Libraries.NcGlobal.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="asiotime" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="Acp10sim" Source="Libraries.Acp10sim.lby" Memory="UserROM" Language="binary" Debugging="true" />
  </Libraries>
</SwConfiguration>