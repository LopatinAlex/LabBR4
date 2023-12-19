
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void increase_counters(void);

void _INIT ProgramInit(void)
{
	//Устанваливаем типы SDC модулей
	AxisX_HW.EncIf1_Typ = ncSDC_ENC16;
	AxisX_HW.DiDoIf_Typ = ncSDC_DIDO;
	AxisX_HW.DrvIf_Typ = ncSDC_DRVSERVO16;
	
	//Устанавливаем имена переменных
	strcpy(AxisX_HW.EncIf1_Name, "AxisX_EncIf");
	strcpy(AxisX_HW.DrvIf_Name, "AxisX_DrvIf");
	strcpy(AxisX_HW.DiDoIf_Name, "AxisX_DiDoIf");
		
	//Устанавливаем входы готовности и нормальной работы
	AxisX_EncIf.iEncOK = 1;
	AxisX_DrvIf.iDrvOK = 1;
	AxisX_DrvIf.iStatusEnable = 1;
	AxisX_DiDoIf.iDriveReady = 1;

	fb_controller.dt = 0.002;
	fb_controller.k_i = 0.16;
	fb_controller.k_p = 0.0064;
	fb_controller.max_abs_value = 24.0;
	
	pwm_period = 200;
}

void _CYCLIC ProgramCyclic(void)
{
	FB_Axis(&axis_X);
	coil_pwm_value = coil_powered ? 32767 : 0;
	
	increase_counters();
	
	//Формирование показаний датчика
	
	AxisX_EncIf.iActTime = (INT)	AsIOTimeCyclicStart();
	AxisX_EncIf.iActPos = axis_X.counter;
	AxisX_DiDoIf.iPosHwEnd = axis_X.endswitch_b_reached;
	AxisX_DiDoIf.iNegHwEnd = axis_X.endswitch_a_reached;
	fb_controller.in = AxisX_DrvIf.oSetPos;
	
	if((fb_controller.in<min_task)&&(fb_controller.in>(-min_task))) fb_controller.in = 0; 
	fb_controller.in = fb_controller.in * 6500/32767 - axis_X.speed;

	FB_Controller(&fb_controller);

	axis_X.pwm_value = fb_controller.out / 24.0 * 32767;
}

void increase_counters(void)
{
	AxisX_EncIf.iLifeCnt++;
	AxisX_DiDoIf.iLifeCntDriveEnable++; 
	AxisX_DiDoIf.iLifeCntDriveReady++; 
	AxisX_DiDoIf.iLifeCntNegHwEnd++; 
	AxisX_DiDoIf.iLifeCntPosHwEnd++; 
	AxisX_DiDoIf.iLifeCntReference++;
	AxisX_DrvIf.iLifeCnt++;
}

void _EXIT ProgramExit(void)
{
	// Insert code here 

}

