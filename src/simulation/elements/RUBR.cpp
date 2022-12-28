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

	Advection = 0.0f;
	AirDrag = 0.00f * CFDS;
	AirLoss = 0.00f;
	Loss = 0.00f;
	Collision = 0.0f;
	Gravity = 0.0f;
	Diffusion = 0.00f;
	HotAir = 0.000f	* CFDS;
	Falldown = 0;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 0;

	Weight = 100;

	HeatConduct = 05;
	Description = "Rubber (liquid form). Everything bounces off of it, can be molded & solidified into any shape when above 230C. Can catch fire!";

	Properties = TYPE_LIQUID;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = 430+273.15f;
	HighTemperatureTransition = PT_FIRE;

	Update = &update;
	Graphics = &graphics;
}

static int update(UPDATE_FUNC_ARGS)
{
	if (parts[i].tmp != 0) then
	{
		parts[i].vx = 0;
	    parts[i].vy = 0;
	}
	if (parts[i].temp > 230 + 273.15f)
		parts[i].tmp = 1;
	for (rx = -2; rx <= 2; rx++)
		for (ry = -2; ry <= 2; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				if (parts[ID(r)].type != PT_RUBR && !(sim->elements[TYP(r)].Properties&TYPE_SOLID) && !(sim->elements[TYP(r)].Properties&TYPE_ENERGY))
				{
					parts[ID(r)].vx = -1 * rx;
					parts[ID(r)].vy = -1 * ry;
				}
			}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	if (parts[i].tmp == 1)
	{
		*colr == 255;
		*colg == 217;
		*colb == 209;
	}
	else
	{
		*colr == 255;
		*colg == 217;
		*colb == 209;
	}
	return 0;
}