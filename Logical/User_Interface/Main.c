
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{
	Trajectory.AxisY = &AxisY;
	Trajectory.AxisZ = &AxisZ;
	Trajectory.lengthY = 0;
	Trajectory.lengthZ = 0;
	Move_axis.length = 0;
}

void _CYCLIC ProgramCyclic(void)
{
	FB_Trajectory(&Trajectory);
}

void _EXIT ProgramExit(void)
{

}

