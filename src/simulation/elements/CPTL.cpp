/*
    This is from SpikeVipers Mod (https://github.com/SpikeViper/The-Powder-Toy)
    Licensed under GNU General Public License v3.0
*/

#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);

void Element::Element_CPTL()
{
	Identifier = "DEFAULT_PT_CPTL";
	Name = "CPTL";
	Colour = PIXPACK(0x00ff00);
	MenuVisible = 1;
	MenuSection = SC_LIQUID;
	Enabled = 1;

	Advection = 0.6f;
	AirDrag = 0.01f * CFDS;
	AirLoss = 0.98f;
	Loss = 0.95f;
	Collision = 0.0f;
	Gravity = 0.1f;
	Diffusion = 0.00f;
	HotAir = 0.000f	* CFDS;
	Falldown = 2;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 30;

	Weight = 50;

	DefaultProperties.temp = R_TEMP - 2.0f + 273.15f;
	HeatConduct = 60;
	Description = "Corrupt Liquid";

	Properties = TYPE_LIQUID|PROP_CONDUCTS|PROP_NEUTPASS;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = 273.15f;
	LowTemperatureTransition = PT_CPTS;
	HighTemperature = 373.0f;
	HighTemperatureTransition = PT_CPTG;

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
                    sim->part_change_type(ID(r), x, y, PT_CPTL);
                }
			}

	return 0;
}