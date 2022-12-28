#include "simulation/ElementCommon.h"
#include "simulation/Air.h"

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

	Flammable = 35;
	Explosive = 0;
	Meltable = 0;
	Hardness = 2;

	Weight = 100;

	HeatConduct = 10;
	Description = "Rubber (latex form). Bounces off particles, can be set into shape when above 230C. Blocks heat and pressure. Read wiki.";

	Properties = TYPE_LIQUID;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = 803.0f;
	HighTemperatureTransition = PT_FIRE;

	Update = &update;
	Graphics = &graphics;
}

static int update(UPDATE_FUNC_ARGS)
{
	if (parts[i].tmp != 0)
	{
		parts[i].vx = 0;
	    parts[i].vy = 0;
		sim->air->bmap_blockair[y / CELL][x / CELL] = 1; //Block pressure.
		sim->air->bmap_blockairh[y / CELL][x / CELL] = 0x8;
	}
	if (parts[i].temp > 230 + 273.15f && RNG::Ref().chance(1, 100))
		parts[i].tmp = 1;

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