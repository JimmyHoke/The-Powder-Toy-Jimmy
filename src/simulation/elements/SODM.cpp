#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);

void Element::Element_SODM()
{
	Identifier = "DEFAULT_PT_SODM";
	Name = "SODM";
	Colour = PIXPACK(0x808080);
	MenuVisible = 1;
	MenuSection = SC_POWDERS;
	Enabled = 1;


	Advection = 0.7f;
	AirDrag = 0.02f * CFDS;
	AirLoss = 0.96f;
	Loss = 0.80f;
	Collision = 0.0f;
	Gravity = 0.1f;
	Diffusion = 0.00f;
	HotAir = 0.000f	* CFDS;
	Falldown = 1;

	Flammable = 0;
	Explosive = 0;
	Meltable = 2;
	Hardness = 1;


	Weight = 100;
	HeatConduct = 100;
	Description = "Sodium, highly reactive metal.";

	Properties = TYPE_PART;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = 370.15f;
	HighTemperatureTransition = PT_LAVA;

	Update = &update;
}

static int update(UPDATE_FUNC_ARGS)
{
		for (int rx = -2; rx < 3; rx++)
			for (int ry = -2; ry < 3; ry++)
				if (BOUNDS_CHECK && (rx || ry))
				{
					int r = pmap[y + ry][x + rx];
					if (!r)
						continue;
					if ((TYP(r) == PT_WATR || TYP(r) == PT_DSTW || TYP(r) == PT_SLTW || TYP(r) == PT_CBNW))
					{
						sim->create_part(-1, x + rx, y + ry, PT_FIRE);
						sim->create_part(-1, x + rx, y + ry, PT_FIRE);
					}
				}
	}
	return 0;
}