
PROGRAM _INIT

(* ### BEGIN gAxisTest ### *)
 
(* initialize variables *)
 gAxisTest_HW.DrvIf_Typ := ncSDC_DRVSERVO16;
 strcpy( ADR(gAxisTest_HW.DrvIf_Name[0]), ADR('gAxisTest_DrvIf') );
 gAxisTest_HW.DiDoIf_Typ := ncSDC_DIDO;
 strcpy( ADR(gAxisTest_HW.DiDoIf_Name[0]), ADR('gAxisTest_DiDoIf') );
  
(* force variable offset generation *)
 gAxisTest.size                      := gAxisTest.size;
 gAxisTest_DrvIf.iLifeCnt            := gAxisTest_DrvIf.iLifeCnt;
 gAxisTest_DiDoIf.iLifeCntDriveReady := gAxisTest_DiDoIf.iLifeCntDriveReady;
 gAxisTest_ModuleOk                  := gAxisTest_ModuleOk;
  
(* assign your hardware inputs here*)
 
(* gAxisTest_DiDoIf.iPosHwEnd  := gAxisTest_DiDoIf.iPosHwEnd;
 gAxisTest_DiDoIf.iNegHwEnd  := gAxisTest_DiDoIf.iNegHwEnd;
 gAxisTest_DiDoIf.iReference := gAxisTest_DiDoIf.iReference;
 *)
 
(* ### END gAxisTest ### *)


(* ### BEGIN gAxis03 ### *)
 
(* initialize variables *)
 gAxis03_HW.DrvIf_Typ := ncSDC_DRVSERVO16;
 strcpy( ADR(gAxis03_HW.DrvIf_Name[0]), ADR('gAxis03_DrvIf') );
 gAxis03_HW.DiDoIf_Typ := ncSDC_DIDO;
 strcpy( ADR(gAxis03_HW.DiDoIf_Name[0]), ADR('gAxis03_DiDoIf') );
  
(* force variable offset generation *)
 gAxis03.size                      := gAxis03.size;
 gAxis03_DrvIf.iLifeCnt            := gAxis03_DrvIf.iLifeCnt;
 gAxis03_DiDoIf.iLifeCntDriveReady := gAxis03_DiDoIf.iLifeCntDriveReady;
 gAxis03_ModuleOk                  := gAxis03_ModuleOk;
  
(* assign your hardware inputs here*)
 
(* gAxis03_DiDoIf.iPosHwEnd  := gAxis03_DiDoIf.iPosHwEnd;
 gAxis03_DiDoIf.iNegHwEnd  := gAxis03_DiDoIf.iNegHwEnd;
 gAxis03_DiDoIf.iReference := gAxis03_DiDoIf.iReference;
 *)
 
(* ### END gAxis03 ### *)

END_PROGRAM

