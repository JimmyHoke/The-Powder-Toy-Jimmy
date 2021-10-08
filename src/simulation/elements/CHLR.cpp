#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);
static void create(ELEMENT_CREATE_FUNC_ARGS);

void Element::Element_CHLR()
{
	Identifier = "DEFAULT_PT_CHLR";
	Name = "CHLR";
	Colour = PIXPACK(0xA5B437);
	MenuVisible = 1;
	MenuSection = SC_GAS;
	Enabled = 1;

	Advection = 1.0f;
	AirDrag = 0.01f * CFDS;
	AirLoss = 0.99f;
	Loss = 0.30f;
	Collision = -0.1f;
	Gravity = 0.2f;
	Diffusion = 0.40f;
	HotAir = 0.001f	* CFDS;
	Falldown = 0;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 1;

	Weight = 1;

	DefaultProperties.temp = R_TEMP+273.15f;
	HeatConduct = 42;
	Description = "Chlorine gas (heavy), liquifies under pressure and low temp. reacts with WATR, H2.";

	Properties = TYPE_GAS | PROP_NEUTPASS;

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
	Create = &create;
}

static int update(UPDATE_FUNC_ARGS)
{
	if (parts[i].tmp > 0)
		parts[i].tmp--;

	if (parts[i].temp < 243.15f)
	{
		parts[i].vy = 1.0;
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
					switch (TYP(r))
					{
					case PT_WATR:
					case PT_SLTW:
					case PT_CBNW:
					case PT_DSTW:
					{
						if (parts[i].temp > 295.15f)
						{
							if (RNG::Ref().chance(1, 200))
							{
								parts[i].life = 200;
								sim->part_change_type(i, x + rx, y + ry, PT_ACID);
								sim->kill_part(ID(r));
							}
						}
						if (parts[i].temp < 295.15f)
						{
							if (RNG::Ref().chance(1, 50))
							{
								sim->part_change_type(ID(r), x + rx, y + ry, PT_DSTW);
							}
						}
					}
					break;
					//Photochemical reaction
					case PT_H2:
					{
						if (RNG::Ref().chance(1, 400))
					{
						sim->create_part(i, x, y, PT_ACID);
					}
						parts[i].tmp = 44;
						sim->kill_part(ID(r));
					}
					break;

					case PT_STKM:
					case PT_STKM2:
					case PT_FIGH:
					{

						if (RNG::Ref().chance(1, 70))
						{
							sim->kill_part(ID(r));
						}
					}
					break;
					}
				}
				
			}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	if (cpart->tmp == 0)
	{
		*firer = 165;
		*fireg = 200;
		*fireb = 55;
		*firea = 15;
	}
	else
	{
		*firer = 145;
		*fireg = 170;
		*fireb = 245;
		*firea = cpart->tmp*3;
	}
	
	*colr = 125;
	*colg = 150;
	*colb = 25;
	*pixel_mode |= FIRE_BLEND;
	*pixel_mode |= FIRE_ADD;
		
	return 0;
}

static void create(ELEMENT_CREATE_FUNC_ARGS)
{
	sim->parts[i].tmp = 0;
}
