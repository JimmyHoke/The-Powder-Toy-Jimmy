#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);
static void create(ELEMENT_CREATE_FUNC_ARGS);

void Element::Element_RUBR()
{
	Identifier = "DEFAULT_PT_RUBR";
	Name = "RUBR";
	Colour = PIXPACK(0x5A5A5A);
	MenuVisible = 1;
	MenuSection = SC_LIQUID;
	Enabled = 1;

	Advection = 0.3f;
	AirDrag = 0.02f * CFDS;
	AirLoss = 0.98f;
	Loss = 0.80f;
	Collision = 0.0f;
	Gravity = 0.15f;
	Diffusion = 0.00f;
	HotAir = 0.000f	* CFDS;
	Falldown = 2;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 2;

	Weight = 100;

	HeatConduct = 05;
	Description = "Rubber (latex form). Bounces off non solid particles, can be molded & solidified into any shape when above 230C. Read wiki.";

	Properties = TYPE_LIQUID;

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
}

static int update(UPDATE_FUNC_ARGS)
{
	if (parts[i].tmp != 0)
	{
		parts[i].vx = 0;
	    parts[i].vy = 0;
	}
	if (parts[i].temp > 230 + 273.15f && RNG::Ref().chance(1, 100))
		parts[i].tmp = 1;

	if (parts[i].temp > 430 + 273.15f) //Burning code, around 430C
	{
		if (RNG::Ref().chance(1, 80))
		{
			sim->create_part(-1, x, y - 1, PT_FIRE);
		}
		if (RNG::Ref().chance(1, 200))
		{
			sim->create_part(-1, x, y - 1, PT_CO2);
		}
		if (RNG::Ref().chance(1, 500))
		{
			sim->part_change_type(i, x, y, PT_FIRE);
		}
	}

	for (int rx = -2; rx <= 2; rx++)
		for ( int ry = -2; ry <= 2; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				int r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				if (parts[ID(r)].type != PT_RUBR && !(sim->elements[TYP(r)].Properties&TYPE_SOLID) && !(sim->elements[TYP(r)].Properties&TYPE_ENERGY) && parts[i].tmp == 1)//Bouncy behaviour.
				{
					parts[ID(r)].vx = (float)(-3*rx);
					parts[ID(r)].vy = (float)(-3*ry);
				}
			}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	if (cpart->tmp == 1)
	{
		*colr = 105;
		*colg = 105;
		*colb = 105;
	}
	else
	{
		*colr = 255;
		*colg = 217;
		*colb = 209;
	}
	return 0;
}