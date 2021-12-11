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
	Gravity = -0.5f;
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
	Description = "Acetylene gas, clean gas that reaches temp. of 1100C when ignited and around 3500C with O2. Makes LRBD with Chlorine.";

	Properties = TYPE_GAS;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = 2200 + 273.15;
	HighTemperatureTransition = PT_PLSM;

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
						parts[i].tmp = 1;
						parts[i].life = 205;
						sim->kill_part(ID(r));
						sim->part_change_type(i, x + rx, y + ry, PT_PLSM);
					}
					break;
					case PT_PLSM:
					{
						parts[i].tmp = 1;
						if (parts[ID(r)].life > 201)
						{
							parts[i].life = 205;
						}
						parts[i].temp = 4400 + 273.15f;
						sim->part_change_type(i, x + rx, y + ry, PT_PLSM);
					}

					case PT_SPRK:
					case PT_SMKE:
					case PT_FIRE:
					{
						if (parts[i].tmp == 0)
						{
							parts[i].life = 35;
							parts[i].temp = 1800 + 273.15f;
							sim->part_change_type(i, x + rx, y + ry, PT_FIRE);
						}
					}
					break;
					}
				}
			}
	return 0;
}
