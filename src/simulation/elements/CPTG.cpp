#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);

void Element::Element_CPTG()
{
	Identifier = "DEFAULT_PT_CPTG";
	Name = "CPTG";
	Colour = PIXPACK(0x6fff00);
	MenuVisible = 1;
	MenuSection = SC_GAS;
	Enabled = 1;

	Advection = 1.0f;
	AirDrag = 0.01f * CFDS;
	AirLoss = 0.99f;
	Loss = 0.30f;
	Collision = -0.1f;
	Gravity = -0.1f;
	Diffusion = 0.75f;
	HotAir = 0.0003f	* CFDS;
	Falldown = 0;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 4;

	Weight = 1;

	DefaultProperties.temp = R_TEMP + 100.0f + 273.15f;
	HeatConduct = 48;
	Description = "Corrupt gas.";

	Properties = TYPE_GAS;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = 371.0f;
	LowTemperatureTransition = PT_CPTL;
	HighTemperature = ITH;
	HighTemperatureTransition = NT;

	Update = &update;
}

static int update(UPDATE_FUNC_ARGS)
{
	int r, rx, ry;
	for (rx=-1; rx<2; rx++)
		for (ry=-1; ry<2; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				r = pmap[y+ry][x+rx];
				if (!r)
					continue;

				if (TYP(r)==PT_CPTL && TYP(r)==PT_CPTG && TYP(r)==PT_CPTS)
					continue;

				if (!RNG::Ref().chance(1, 600))
					continue;

				
                if (sim->parts[ID(r)].type != PT_JRAY)
                {
                    sim->part_change_type(ID(r), x, y, PT_CPTG);
                }
			}

	return 0;
}