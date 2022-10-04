#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);

void Element::Element_BALL()
{
	Identifier = "DEFAULT_PT_BALL";
	Name = "BALL";
	Colour = PIXPACK(0xFF0000);
	MenuVisible = 1;
	MenuSection = SC_SPECIAL;
	Enabled = 1;

	Advection = 0.0f;
	AirDrag = 0.00f * CFDS;
	AirLoss = 0.00f;
	Loss = 1.9f;
	Collision = 0.2f;
	Gravity = 0.9f;
	Diffusion = 0.00f;
	HotAir = 0.000f	* CFDS;
	Falldown = 0;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 20;

	Weight = 30;

	HeatConduct = 251;
	Description = "Bouncy ball. Use sparingly!";

	Properties = TYPE_PART | PROP_LIFE_DEC;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = 393.15f;
	HighTemperatureTransition = PT_WATR;

	Update = &update;
	Graphics = &graphics;
}
static int update(UPDATE_FUNC_ARGS)
{
	if (parts[i].life > 0)
	{
		//Loss on collision
		parts[i].vx = (float)parts[i].vx /0.02;
		parts[i].vy = (float)parts[i].vx /0.02;
	}

	for (int rx = -1; rx <= 2; rx++)
		for (int ry = -1; ry <= 2; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				int r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				if (TYP(r) && TYP(r) != PT_BALL)
				{
					parts[i].vx = -(parts[i].vx);
					parts[i].vy = -(parts[i].vy);
					parts[i].life = 0;
				}
			}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	ren->drawcircle((int)(cpart->x), (int)(cpart->y), 3, 3, 255, 0, 0, 255);
	if (cpart->life > 0)
	{
	ren->fillcircle((int)(cpart->x), (int)(cpart->y), 2, 2, 255, 255, 255, 250);
	}
	else
	{
	ren->fillcircle((int)(cpart->x), (int)(cpart->y), 2, 2, 255, 50, 50, 180);
	}
	return 0;
}