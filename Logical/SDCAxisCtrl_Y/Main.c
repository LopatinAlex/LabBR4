
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{
	//Устанваливаем типы SDC модулей
	AxisY_HW.EncIf1_Typ = ncSDC_ENC16;
	AxisY_HW.DiDoIf_Typ = ncSDC_DIDO;
	AxisY_HW.DrvIf_Typ = ncSDC_DRVSERVO16;
	
	//Устанавливаем имена переменных
	strcpy(AxisY_HW.EncIf1_Name, "AxisY_EncIf");
	strcpy(AxisY_HW.DrvIf_Name, "AxisY_DrvIf");
	strcpy(AxisY_HW.DiDoIf_Name, "AxisY_DiDoIf");
		
	//Устанавливаем входы готовности и нормальной работы
	AxisY_EncIf.iEncOK = 1;
	AxisY_DrvIf.iDrvOK = 1;
	AxisY_DrvIf.iStatusEnable = 1;
	AxisY_DiDoIf.iDriveReady = 1;

	fb_controller.dt = 0.002;
	fb_controller.k_i = 0.16;
	fb_controller.k_p = 0.0064;
	fb_controller.max_abs_value = 24.0;
	
	pwm_period = 200;

}

void _CYCLIC ProgramCyclic(void)
{
	FB_Axis(&axis_Y);
	coil_pwm_value = coil_powered ? 32767 : 0;
	
	increase_counters();
	
	//Формирование показаний датчика
	
	AxisY_EncIf.iActTime = (INT) AsIOTimeCyclicStart();
	AxisY_EncIf.iActPos = axis_Y.counter;
	AxisY_DiDoIf.iPosHwEnd = axis_Y.endswitch_b_reached;
	AxisY_DiDoIf.iNegHwEnd = axis_Y.endswitch_a_reached;
	fb_controller.in = AxisY_DrvIf.oSetPos;
	
	if((fb_controller.in<min_task)&&(fb_controller.in>(-min_task))) fb_controller.in = 0; 
	fb_controller.in = fb_controller.in * 6500/32767 - axis_Y.speed;

	FB_Controller(&fb_controller);

	axis_Y.pwm_value = fb_controller.out / 24.0 * 32767;

}

void increase_counters(void)
{
	AxisY_EncIf.iLifeCnt++;
	AxisY_DiDoIf.iLifeCntDriveEnable++; 
	AxisY_DiDoIf.iLifeCntDriveReady++; 
	AxisY_DiDoIf.iLifeCntNegHwEnd++; 
	AxisY_DiDoIf.iLifeCntPosHwEnd++; 
	AxisY_DiDoIf.iLifeCntReference++;
	AxisY_DrvIf.iLifeCnt++;
}

void _EXIT ProgramExit(void)
{
	// Insert code here 

}

