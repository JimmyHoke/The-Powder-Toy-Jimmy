#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);

void Element::Element_CPTS()
{
	Identifier = "DEFAULT_PT_CPTS";
	Name = "CPTS";
	Colour = PIXPACK(0x00ce00);
	MenuVisible = 1;
	MenuSection = SC_SOLIDS;
	Enabled = 1;

	Advection = 0.0f;
	AirDrag = 0.00f * CFDS;
	AirLoss = 0.90f;
	Loss = 0.00f;
	Collision = 0.0f;
	Gravity = 0.0f;
	Diffusion = 0.00f;
	HotAir = -0.0003f* CFDS;
	Falldown = 0;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 20;

	Weight = 100;

	DefaultProperties.temp = R_TEMP - 50.0f + 273.15f;
	HeatConduct = 46;
	Description = "Corrupt solid.";

	Properties = TYPE_SOLID|PROP_LIFE_DEC|PROP_NEUTPASS;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = 0.8f;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = 252.05f;
	HighTemperatureTransition = PT_CPTL;

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
                    sim->part_change_type(ID(r), x, y, PT_CPTS);
                }
			}

	return 0;
}