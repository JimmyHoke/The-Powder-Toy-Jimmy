#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);

void Element::Element_ACTY()
{
	Identifier = "DEFAULT_PT_ACTY";
	Name = "ACTY";
	Colour = PIXPACK(0xADD8E6);
	MenuVisible = 1;
	MenuSection = SC_GAS;
	Enabled = 1;

	Advection = 1.0f;
	AirDrag = 0.01f * CFDS;
	AirLoss = 0.99f;
	Loss = 0.30f;
	Collision = -0.1f;
	Gravity = 0.0f;
	Diffusion = 0.40f;
	HotAir = 0.001f	* CFDS;
	Falldown = 0;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 0;

	Weight = 30;

	DefaultProperties.temp = R_TEMP + 273.15f;
	HeatConduct = 255;
	Description = "Acetylene gas, reaches temp. of 1100C when ignited and around 35000C with O2.";

	Properties = TYPE_GAS;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = NT;
	HighTemperatureTransition = NT;

	Update = &update;
}

static int update(UPDATE_FUNC_ARGS)
{

	int r, rx, ry;
	for (rx = -2; rx < 3; rx++)
		for (ry = -2; ry < 3; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				{
					switch (TYP(r))
					{
					case PT_O2:
					{
						parts[i].life = 200;
						parts[i].tmp = 1;
						sim->kill_part(ID(r));
						sim->part_change_type(i, x + rx, y + ry, PT_PLSM);
					}
					break;

					case PT_SPRK:
					case PT_FIRE:
					case PT_PLSM:
					
					{   
						if (parts[i].tmp == 0)
						{
							parts[i].life = 40;
						}
						parts[i].temp = 4000 + 273.15f;
						sim->part_change_type(i, x + rx, y + ry, PT_PLSM);
					}
					break;
					}
				}
			}
	return 0;
}
