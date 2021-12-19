#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);

void Element::Element_RADN()
{
	Identifier = "DEFAULT_PT_RADN";
	Name = "RADN";
	Colour = PIXPACK(0x0c1875);
	MenuVisible = 1;
	MenuSection = SC_NUCLEAR;
	Enabled = 1;

	Advection = 1.0f;
	AirDrag = 0.01f * CFDS;
	AirLoss = 0.99f;
	Loss = 0.30f;
	Collision = -0.1f;
	Gravity = 0.3f;
	Diffusion = 0.40f;
	HotAir = 0.001f	* CFDS;
	Falldown = 0;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 0;

	Weight = 38;

	DefaultProperties.temp = R_TEMP + 273.15f;
	HeatConduct = 42;
	Description = "Radon, a heavy radioactive condutive gas with short half life. Undergoes reaction when pressure's > 10 or < 0";

	Properties = TYPE_GAS | PROP_NEUTPASS | PROP_CONDUCTS | PROP_LIFE_DEC;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = NT;
	HighTemperatureTransition = NT;

	Update = &update;
	Graphics = &graphics;
}

static int update(UPDATE_FUNC_ARGS)
{
		if (RNG::Ref().chance(1, 800))
		{
			sim->part_change_type(i, x, y, PT_NEUT);
		}
	int r, rx, ry;
	for (rx = -2; rx < 3; rx++)
		for (ry = -2; ry < 3; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				{
					if (sim->pv[y / CELL][x / CELL] > 10.0)
					{
						if (RNG::Ref().chance(1, 100))
						{
							sim->part_change_type(i, x + rx, y + ry, PT_NEUT);
						}
						if (RNG::Ref().chance(1, 50))
						{
							sim->part_change_type(i, x + rx, y + ry, PT_PROT);
						}
						if (RNG::Ref().chance(1, 100))
						{
							sim->part_change_type(i, x + rx, y + ry, PT_GRVT);
						}
						if (RNG::Ref().chance(1, 300))
						{
							sim->part_change_type(i, x + rx, y + ry, PT_ELEC);
						}
						if (RNG::Ref().chance(1, 100))
						{
							sim->part_change_type(i, x + rx, y + ry, PT_PHOT);
						}
						if (RNG::Ref().chance(1, 900))
						{
							sim->part_change_type(i, x + rx, y + ry, PT_POLO);
						}
					}
					else if (sim->pv[y / CELL][x / CELL] < 0.0)
					{
						if (RNG::Ref().chance(1, 200))
						{
							sim->part_change_type(i, x + rx, y + ry, PT_NEUT);
						}
					}
					if (TYP(r) == PT_STKM || TYP(r) == PT_STKM2 || TYP(r) == PT_FIGH)
					{
						if (RNG::Ref().chance(1, 70))
						{
							sim->kill_part(ID(r));
						}
					}
				}
			}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	*colr = 150;
	*colg = 150;
	*colb = 150;
	*firea = 15;
	if (cpart->life == 0)
	{
		*firer = 100;
		*fireg = 100;
		*fireb = 230;
	}
	else 
	{
		*firer = 255;
		*fireg = 0;
		*fireb = 0;
	}
	*pixel_mode |= FIRE_BLEND;
	return 0;
}