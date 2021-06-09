#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);
static void create(ELEMENT_CREATE_FUNC_ARGS);

void Element::Element_BEE()
{
	Identifier = "DEFAULT_PT_BEE";
	Name = "BEE";
	Colour = PIXPACK(0xff8000);
	MenuVisible = 1;
	MenuSection = SC_SPECIAL;
	Enabled = 1;

	Advection = 1.0f;
	AirDrag = 0.001f * CFDS;
	AirLoss = 0.9f;
	Loss = 0.002f;
	Collision = 0.0f;
	Gravity = 0.0f;
	Diffusion = 0.1f;
	HotAir = 0.000f	* CFDS;
	Falldown = 0;

	Flammable = 1;
	Explosive = 0;
	Meltable = 0;
	Hardness = 1;

	Weight = 91;

	DefaultProperties.temp = R_TEMP + 20.0f + 273.15f;
	HeatConduct = 42;
	Description = "BEE, makes wax, attacks figh/stkm, uses plant to stay alive and reproduce. Avoids harmful elements.";

	Properties = TYPE_GAS;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = ITH;
	HighTemperatureTransition = NT;

	Update = &update;
	Graphics = &graphics;
	Create = &create;
}

static int update(UPDATE_FUNC_ARGS)
{

	if (RNG::Ref().chance(1, 40)) //Slowly loses life if there's nothing to eat.
	{
		parts[i].life -= 1;
	}
	if (parts[i].life >= 100)   //Life check, god sees everything.
		parts[i].life = 100;

	else if (parts[i].life <= 0)  //Everyone has to die one day.
		sim->kill_part(i);

	if (parts[i].life > 30)
	{
		sim->pv[(y / CELL)][(x / CELL)] = 0.3f;  //Search areas for food if life drops below 90.
	}
	if (parts[i].life <= 30)
	{
		sim->pv[(y / CELL)][(x / CELL)] = 0.9f;  //Search wider areas for food if life drops below 30.
	}
	if (parts[i].temp <= 44 + 273.15f && parts[i].life >= 75) //Temp. regulation.
	{
		parts[i].temp++;
		parts[i].life--;
	}

	if (parts[i].temp > 90 + 273.15f && parts[i].life >= 75)
	{
		parts[i].temp--;
		parts[i].life--;
	}

	if (parts[i].temp < 10 + 273.15f) //Stop moving when cold!
	{
		parts[i].vx = 0.0;
		parts[i].vy = 0.0;
	}
	if (parts[i].life < 30 && parts[i].x < 600 && parts[i].x > 10 && parts[i].y < 360) //Rest if no food is found.
	{
		parts[i].vy = 1.0;
	}
	//Meet at center if life is above 80.
	if (parts[i].life > 90)
	{
		if (parts[i].x <= 330)
		{
			parts[i].vx = 0.6;
		}
		else if (parts[i].x > 330)
		{
			parts[i].vx = -0.6;
		}

		if (parts[i].y <= 192)
		{
			parts[i].vy = 0.6;
		}
		else if (parts[i].y > 192)
		{
			parts[i].vy = -0.6;
		}
	}

	// Edge detection
	if (parts[i].x < 20)
	{
		parts[i].vx = 0.6;
	}
	else if (parts[i].x > 600)
	{
		parts[i].vx = -0.6;
	}

	if (parts[i].y <= 10)
	{
		parts[i].vy = 0.6;
	}
	else if (parts[i].y > 360)
	{
		parts[i].vy = -0.6;
	}

	if (RNG::Ref().chance(1, 10))
	{
		int r, rx, ry;
		for (rx = -25; rx < 25; rx++)
			for (ry = -25; ry < 25; ry++)
				if (BOUNDS_CHECK && (rx || ry))
				{
					r = pmap[y + ry][x + rx];
					if (!r)
						continue;
					if (parts[ID(r)].type == PT_PLNT)
				{
				parts[i].pavg[0] = rx*3;
				parts[i].pavg[1] = ry*3;
				parts[i].vx = parts[i].pavg[0];
				parts[i].vy = parts[i].pavg[1];
				sim->pv[(y / CELL) + ry][(x / CELL) + rx] = -6.0f;
				}
				}
	}

	int r, rx, ry;
	for (rx = -2; rx < 3; rx++)
		for (ry = -2; ry < 3; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				if (parts[ID(r)].temp > 373.15f)
				{
					parts[i].pavg[0] = -rx;
					parts[i].pavg[1] = -ry;
					parts[i].vx = parts[i].pavg[0];
					parts[i].vy = parts[i].pavg[1];
				}

				switch (TYP(r))
				{
				case PT_WOOD:
				{
					sim->pv[(y / CELL) + ry][(x / CELL) + rx] = -2.0f;
						if (parts[i].life > 65)
						{
							if (RNG::Ref().chance(1, 30))
							{
								sim->part_change_type(ID(r), x + rx, y + ry, PT_MWAX);
							}
						}
				}
				break;
				// Avoid these particles.
				case PT_FIRE:
				case PT_PLSM:
				case PT_SMKE:
				case PT_ACID:
				case PT_BOMB:
				case PT_DEST:
				case PT_VIRS:
				case PT_LAVA:
				case PT_CFLM:
				{
					parts[i].pavg[0] = -rx;
					parts[i].pavg[1] = -ry;
					parts[i].vx = parts[i].pavg[0]*2;
					parts[i].vy = parts[i].pavg[1]*2;
				}
				break;
				case PT_PLNT:
				{
					if (RNG::Ref().chance(1, 30))
					{
						parts[i].life = 100;
						sim->kill_part(ID(r));
					}
					if (RNG::Ref().chance(1, 140))
					{
						sim->create_part(-1, x + 3, y + 3, PT_BEE);
					}
				}
				break;
				case PT_FIGH:
				case PT_STKM:
				case PT_STKM2:
				{
					sim->pv[(y / CELL) + ry][(x / CELL) + rx] = -2.0f;
					if (RNG::Ref().chance(1, 30))  //Attack stkms.
						parts[ID(r)].life -= 5;
				}
				break;
				}
			}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	*pixel_mode |= PMODE_FLARE;
	if (cpart->life <= 30)
	{
		*colr = 180;
		*colg = 180;
		*colb = 0;
	}

	return 0;
}

static void create(ELEMENT_CREATE_FUNC_ARGS)
{
	sim->parts[i].life = 100;
}
