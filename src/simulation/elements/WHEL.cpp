#include "simulation/ElementCommon.h"
static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);
static void create(ELEMENT_CREATE_FUNC_ARGS);

void Element::Element_WHEL()
{
	Identifier = "DEFAULT_PT_WHEL";
	Name = "WHEL";
	Colour = PIXPACK(0x800080);
	MenuVisible = 1;
	MenuSection = SC_FORCE;
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
	Hardness = 5;

	Weight = 100;

	HeatConduct = 0;
	Description = "Wheel. Spins when powered by PSCN and NSCN. .tmp sets wheel size (5-50).";

	Properties = TYPE_SOLID;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = ITH;
	HighTemperatureTransition = NT;
	DefaultProperties.temp = R_TEMP + 30.0f;

	Update = &update;
	Graphics = &graphics;
	Create = &create;
}

static int update(UPDATE_FUNC_ARGS)
{
	if (parts[i].tmp < 5 || parts[i].tmp > 50)
		parts[i].tmp = 5;
	if (parts[i].life > 360)
		parts[i].life = 300;

	if (parts[i].tmp2 > 0)
		parts[i].tmp2 -= 1;
	if (parts[i].tmp2 > 20)
		parts[i].tmp2 = 20;
	if (parts[i].life > 0 && parts[i].tmp2 == 0)
		parts[i].life-= 7;

	for (int rx = -parts[i].tmp; rx <= parts[i].tmp; rx++)
		for (int ry = -parts[i].tmp; ry <= parts[i].tmp; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				int r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				if (parts[ID(r)].type != PT_SPRK && parts[ID(r)].type != PT_PSCN && parts[ID(r)].type != PT_BTRY && parts[ID(r)].type != PT_NSCN)
				{
					sim->kill_part(ID(r));
				}

				if (parts[ID(r)].type == PT_SPRK && parts[ID(r)].ctype == PT_PSCN)
				{
					sim->pv[(y / CELL)][(x / CELL)] = parts[i].life / 5;
					parts[i].life += 1.0;
					parts[i].tmp2 += 4;
				}

				}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	float angle = 0;
		for (angle = 0; angle < 3.1415f; angle += 0.01f)
		{
			ren->drawcircle(cpart->x, cpart->y, cpart->tmp, cpart->tmp, 140, 140, 140, 255);
		}
	ren->draw_line(cpart->x, cpart->y, cpart->x + cpart->tmp * sin(angle*cpart->life/13), cpart->y + cpart->tmp * cos(angle*cpart->life/13), 255, 255, 255, 250);
	ren->draw_line(cpart->x, cpart->y, cpart->x + cpart->tmp * sin(20+angle*cpart->life/13), cpart->y + cpart->tmp * cos(20+angle*cpart->life/13), 255, 255, 255, 250);
	ren->draw_line(cpart->x, cpart->y, cpart->x + cpart->tmp * sin(40 + angle * cpart->life / 13), cpart->y + cpart->tmp * cos(40 + angle * cpart->life / 13), 255, 255, 255, 250);
	ren->draw_line(cpart->x, cpart->y, cpart->x + cpart->tmp * sin(60 + angle * cpart->life / 13), cpart->y + cpart->tmp * cos(60 + angle * cpart->life / 13), 255, 255, 255, 250);
	ren->draw_line(cpart->x, cpart->y, cpart->x + cpart->tmp * sin(80 + angle * cpart->life / 13), cpart->y + cpart->tmp * cos(80 + angle * cpart->life / 13), 255, 255, 255, 250);
	return 0;
}

static void create(ELEMENT_CREATE_FUNC_ARGS) //Default length.
{
	sim->parts[i].tmp = 8;
}
