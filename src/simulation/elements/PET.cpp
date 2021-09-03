#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);
static void create(ELEMENT_CREATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);

void Element::Element_PET()
{
	Identifier = "DEFAULT_PT_PET";
	Name = "PET";
	Colour = PIXPACK(0xFFE0A0);
	MenuVisible = 1;
	MenuSection = SC_SPECIAL;
	Enabled = 1;

	Advection = 0.4f;
	AirDrag = 0.04f * CFDS;
	AirLoss = 0.94f;
	Loss = 0.95f;
	Collision = -0.1f;
	Gravity = 0.3f;
	Diffusion = 0.00f;
	HotAir = 0.000f	* CFDS;
	Falldown = 1;

	Flammable = 0;
	Explosive = 0;
	Meltable = 5;
	Hardness = 1;

	Weight = 90;

	HeatConduct = 150;

	Properties = TYPE_PART;
	DefaultProperties.temp = R_TEMP + 14.6f + 273.15f;
	HeatConduct = 150;
	Description = "AI Pet, follows STKM/ STKM2, fights with FIGH and eats/drinks PLNT or WATR (Read wiki for more info.) Use sparingly.";

	Properties = PROP_NOCTYPEDRAW| TYPE_PART;
	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = 620.0f;
	HighTemperatureTransition = PT_FIRE;

	Update = &update;
	Create = &create;
	Graphics = &graphics;
}

static int update(UPDATE_FUNC_ARGS)
{
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
	//Slowly loses life if there's nothing to eat.
	if (RNG::Ref().chance(1, 75))
	{
		parts[i].life -= 1;
	}
	//Temp. regulation.
	if (parts[i].temp <= 10 + 273.15f)
	{
		parts[i].temp++;
		parts[i].life--;
	}

	if (parts[i].temp > 50 + 273.15f)
	{
		parts[i].temp--;
		parts[i].life--;
	}

	if (parts[i].life >= 100)   //Life check, god sees everything.
		parts[i].life = 100;

	else if (parts[i].life <= 0)  //Everyone has to die one day.
		sim->kill_part(i);

	if (RNG::Ref().chance(1, 2))
	{
		for (int rx = -40; rx < 40; rx++)
			for (int ry = -15; ry < 4; ry++)
				if (BOUNDS_CHECK && (rx || ry))
				{
					int r = pmap[y + ry][x + rx];
					if (!r)
						continue;
					r = pmap[y + ry][x + rx];
					switch (TYP(r))
					{
						// Follow STKM and STKM2
					case PT_STKM:
					case PT_STKM2:
					{
						if (parts[ID(r)].life < 100)
						{
							parts[ID(r)].life += 1;
						}
						if (parts[i].x < parts[ID(r)].x)
						{
							parts[i].x++;
						}
						else if (parts[i].x > parts[ID(r)].x)
						{
							parts[i].x--;
						}					
					}
					break;

					case PT_FIGH:
					{
							parts[ID(r)].life -= 2;
							if (parts[i].x < parts[ID(r)].x)
							{
								parts[i].x++;
							}
							else if (parts[i].x > parts[ID(r)].x)
							{
								parts[i].x--;
							}
					}
					break;
					}
				}
	}

	for (int rx = -3; rx < 4; rx++)
		for (int ry = -3; ry < 4; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				int r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				r = pmap[y + ry][x + rx];
				switch (TYP(r))
				{
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
				parts[i].vx = parts[i].pavg[0] * 2;
				parts[i].vy = parts[i].pavg[1] * 2;
				}
				break;
				case PT_PLNT:
				case PT_WATR:
				{
					if (RNG::Ref().chance(1, 30))
				{
					parts[i].life += 1;
					sim->kill_part(ID(r));
				}
					if (parts[i].x < parts[ID(r)].x)
					{
						parts[i].x++;
					}
					else if (parts[i].x > parts[ID(r)].x)
					{
						parts[i].x--;
					}
				}
				break;
				}
			}
	return 0;
}

static void create(ELEMENT_CREATE_FUNC_ARGS)
{
	sim->parts[i].life = 100;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	int mr = 255;
	int mg = 0;
	int mb = 0;
	if (cpart->life > 80)
	{
		mr = 50;
		mg = 255;
		mb = 50;
	}
	else if (cpart->life < 30)
	{
		    mr = 250;
			mg = 50;
			mb = 50;
	}
    if (cpart->life > 30 && cpart->life < 80)
	{
		mr = 20;
		mg = 150;
		mb = 20;
	}
	//draw body
	ren->fillcircle(cpart->x, cpart->y - 10, 3, 3, mr, mg, mb, 255);
	ren->fillcircle(cpart->x, cpart->y - 2, 4, 4, 255, 255, 255, 125);
	ren->drawrect(cpart->x-1, cpart->y-10, 3, 1, 0, 0, 0, 255);
	ren->drawrect(cpart->x-4, cpart->y - 14, 1, 4,mr,mg, mb, 255);
	ren->drawrect(cpart->x + 4, cpart->y - 14, 1, 4, mr, mg, mb, 255);
	return 0;
}