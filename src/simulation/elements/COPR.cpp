#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);

void Element::Element_COPR()
{
	Identifier = "DEFAULT_PT_COPR";
	Name = "COPR";
	Colour = PIXPACK(0xB87333);
	MenuVisible = 1;
	MenuSection = SC_ELEC;
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

	HeatConduct = 255;
	Description = "Copper. Heat and electricity conductor. Turns into cooper oxide when exposed to WATR/ O2, losing its conductivity.";

	Properties = TYPE_PART|PROP_CONDUCTS|PROP_LIFE_DEC| PROP_HOT_GLOW;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = 1085.85 + 273.15f;
	HighTemperatureTransition = PT_LAVA;

	Update = &update;
	Graphics = &graphics;
}

static int update(UPDATE_FUNC_ARGS)
{
	if (parts[i].tmp2 == 0)
	{
		parts[i].vy = 0;
		parts[i].vx = 0;
	}

	for (int rx = -2; rx < 3; rx++)
		for (int ry = -2; ry < 3; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				int r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				switch (TYP(r))
				{
				case PT_WATR:
				case PT_SLTW:
				case PT_CBNW:
				case PT_O2:
				{
					if (parts[i].tmp < 100)
					{
						if (RNG::Ref().chance(1, 40))
							parts[i].tmp += 1;
					}
				}
				break;
				case PT_SPRK:
				{
					if (parts[ID(r)].ctype == PT_COPR && parts[i].tmp > 40)
					{
						parts[ID(r)].life = 0;
						parts[i].tmp2 = 1;
					}
				}
				break;
				}
			}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	if (cpart->tmp > 0)
	{
		*colg += cpart->tmp;
		*colr-= cpart->tmp;
		*colb -= cpart->tmp;
	}

	else
    *pixel_mode |= PMODE_FLARE;
	return 0;
}