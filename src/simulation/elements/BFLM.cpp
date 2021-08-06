#include "common/tpt-minmax.h"
#include "simulation/ElementCommon.h"

int Element_BFLM_update(UPDATE_FUNC_ARGS);
static int updateLegacy(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);
static void create(ELEMENT_CREATE_FUNC_ARGS);

void Element::Element_BFLM()
{
	Identifier = "DEFAULT_PT_BFLM";
	Name = "BFLM";
	Colour = PIXPACK(0x202020);
	MenuVisible = 1;
	MenuSection = SC_EXPLOSIVE;
	Enabled = 1;

	Advection = 0.9f;
	AirDrag = 0.04f * CFDS;
	AirLoss = 0.97f;
	Loss = 0.20f;
	Collision = 0.0f;
	Gravity = -0.1f;
	Diffusion = 0.00f;
	HotAir = 0.001f  * CFDS;
	Falldown = 1;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 1;

	Weight = 2;

	DefaultProperties.temp = R_TEMP + 400.0f + 273.15f;
	HeatConduct = 88;
	Description = "Black Flames, unstoppable flames that eat everything in its way including VIRS!";

	Properties = TYPE_GAS | PROP_LIFE_DEC | PROP_LIFE_KILL;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = 2773.0f;
	HighTemperatureTransition = PT_PLSM;

	Update = &Element_BFLM_update;
	Graphics = &graphics;
	Create = &create;
}

int Element_BFLM_update(UPDATE_FUNC_ARGS)
{
	if (parts[i].tmp > 0)
	{
	parts[i].tmp--;
    }
	for (int rx = -1; rx < 2; rx++)
		for (int ry = -1; ry < 2; ry++)
		{
			if (BOUNDS_CHECK && (rx || ry))
			{
				int r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				if (TYP(r) && TYP(r) != PT_BFLM)
				{
					parts[i].tmp = 5;
					if (RNG::Ref().chance(1, 13))
					{
						parts[ID(r)].life = 55;
						sim->part_change_type(ID(r), x + rx, y + ry, PT_BFLM);
					}
				}
			}
		}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	if (cpart->tmp > 0)
	{
		*colr = 120;
		*firer = 140;
	}
	else {
		*colr = 20;
		*firer = 30;
	}
	*firea = 200;
	*fireb = 30;
	*fireg = 30;
	*colg = 20;
	*colb = 20;
	*pixel_mode |= FIRE_BLEND;
	*pixel_mode |= FIRE_ADD;
	return 0;
}

static void create(ELEMENT_CREATE_FUNC_ARGS)
{
	sim->parts[i].life = RNG::Ref().between(80, 120);
}
