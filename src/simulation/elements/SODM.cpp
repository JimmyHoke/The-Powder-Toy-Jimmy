#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);

void Element::Element_SODM()
{
	Identifier = "DEFAULT_PT_SODM";
	Name = "SODM";
	Colour = PIXPACK(0xcaccce);
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


	Weight = 28;
	HeatConduct = 100;
	Description = "Sodium, highly reactive metal.";

	Properties = TYPE_PART | PROP_LIFE_DEC |PROP_CONDUCTS;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = 370.15f;
	HighTemperatureTransition = PT_LAVA;

	Update = &update;
	Graphics = &graphics;
}

static int update(UPDATE_FUNC_ARGS)
{
	if (parts[i].tmp2 > 0)
	{
		parts[i].tmp2 = parts[i].tmp2 - 1;
	}

		for (int rx = -2; rx < 3; rx++)
			for (int ry = -2; ry < 3; ry++)
				if (BOUNDS_CHECK && (rx || ry))
				{
					int r = pmap[y + ry][x + rx];
					if (!r)
						continue;
					if ((TYP(r) == PT_O2 || TYP(r) == PT_CO2) && RNG::Ref().chance(1, 10))
					{
						if (parts[i].tmp3 < 200)
						{
							sim->kill_part(ID(r));
							parts[i].tmp3 = parts[i].tmp3 + 2;
							parts[i].temp = +10.0f;
						}
					}
					if (parts[i].tmp3 < 50 && parts[i].tmp < 180)
					{
						if ((TYP(r) == PT_WATR || TYP(r) == PT_DSTW || TYP(r) == PT_SLTW || TYP(r) == PT_CBNW || TYP(r) == PT_WTRV))
						{
								parts[i].tmp = parts[i].tmp + 1;
								if (RNG::Ref().chance(1, 100))
								{
									sim->part_change_type(ID(r), x, y, PT_H2);
									sim->kill_part(i);
								}
								if (parts[i].tmp > 70)
								{
									parts[i].tmp2 = 85;
									parts[ID(r)].temp += 30.0f;
									sim->pv[(y / CELL) + ry][(x / CELL) + rx] += 0.07f ;
								}
							}
						}
						if (TYP(r) == PT_CHLR && parts[i].temp > 50 + 273.15f && RNG::Ref().chance(1, 100))
						{
							parts[i].tmp2 = 45;
							if (RNG::Ref().chance(1, 100))
							{
								sim->part_change_type(i, x, y, PT_SALT);
								sim->kill_part(ID(r));
							}
						}
						}
		return 0;
				}


static int graphics(GRAPHICS_FUNC_ARGS)
{
	if (cpart->tmp2 > 0)
	{
		*pixel_mode |= PMODE_LFLARE;
	}
	else if (cpart->tmp2 <= 0)
	{
		if (cpart->tmp == 0 && cpart->tmp3 < 10)
		{
			*pixel_mode |= PMODE_FLARE;
		}
		*colr = 255 - cpart->tmp3 / 2;
		*colg = 255 - cpart->tmp3 / 2;
		*colb = 255 - cpart->tmp3 / 2;
	}
	return 0;
}

