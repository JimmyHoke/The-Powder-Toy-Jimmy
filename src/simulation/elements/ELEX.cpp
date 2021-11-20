#include "simulation/ElementCommon.h"
static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);

void Element::Element_ELEX()
{
	Identifier = "DEFAULT_PT_ELEX";
	Name = "ELEX";
	Colour = PIXPACK(0x303030);
	MenuVisible = 1;
	MenuSection = SC_SPECIAL;
	Enabled = 1;

	Advection = 0.5f;
	AirDrag = 0.00f * CFDS;
	AirLoss = 0.6f;
	Loss = 0.60f;
	Collision = -0.1f;
	Gravity = 0.0f;
	Diffusion = 2.00f;
	HotAir = 0.000f	* CFDS;
	Falldown = 0;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 0;

	Weight = 100;
	HeatConduct = 0;
	Description = "A element that can turn into random elements.";

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
}

static int update(UPDATE_FUNC_ARGS)
{
	if (parts[i].tmp < 200)
	{
		parts[i].tmp++;
	}

	if (parts[i].tmp >= 199)
	{
		parts[i].vy = 0;
		parts[i].vx = 0;
		sim->create_part(-1, x, y-1, RNG::Ref().between(1, 231));
		sim->kill_part(i);
	}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	float frequency = 0.04045;
	int cr = (sin(frequency* cpart->tmp + 5) * 127 + 150);
	int cg = (sin(frequency* cpart->tmp + 6) * 127 + 150);
	int cb = (sin(frequency* cpart->tmp + 8) * 127 + 150);
	ren->drawcircle(cpart->x, cpart->y,4,4,cr,cg,cb,150);
	ren->fillcircle(cpart->x, cpart->y,3,3,cr,cg,cb,100);
	ren->drawcircle(cpart->x, cpart->y,5,5,cr,cg,cb,150);
	return 0;
}

