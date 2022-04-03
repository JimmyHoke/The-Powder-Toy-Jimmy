#include "simulation/ElementCommon.h"
static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);
static void create(ELEMENT_CREATE_FUNC_ARGS);

void Element::Element_WHEL()
{
	Identifier = "DEFAULT_PT_WHEL";
	Name = "WHEL";
	Colour = PIXPACK(0x202020);
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
	Description = "Wheel. SPRK with PSCN and NSCN to make it spin and stop respectively, .tmp sets wheel size (5-50). Deco = spoke colour.";

	Properties = TYPE_SOLID;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = ITH;
	HighTemperatureTransition = NT;
	DefaultProperties.temp = 293.15f;

	Update = &update;
	Graphics = &graphics;
	Create = &create;
}

static int update(UPDATE_FUNC_ARGS)
{
	if (parts[i].tmp < 5 || parts[i].tmp > 50)
		parts[i].tmp = 5;
	if (parts[i].life >= 400)
		parts[i].life -= 40;

	if (parts[i].tmp2 > 0)
		parts[i].tmp2 -= 1;
	if (parts[i].tmp2 > 20)
		parts[i].tmp2 = 20;
	if (parts[i].life > 0 && parts[i].tmp2 < 4)
		parts[i].life -= 1;
	if (parts[i].life < 0)
		parts[i].life = 0;

	for (int rx = -2; rx <=2; rx++)
		for (int ry = -2; ry <= 2; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				int r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				if (parts[ID(r)].type == PT_SPRK && parts[ID(r)].ctype == PT_PSCN)
				{
					parts[i].tmp2 += 7;
				}
				else if (parts[ID(r)].type == PT_SPRK && parts[ID(r)].ctype == PT_NSCN)
				{
					parts[i].tmp2 == 0;
					if (parts[i].life > 0)
					{
						parts[i].life -= 20;
					}
				}
				if (parts[i].tmp2 > 0)
				{
					sim->pv[(y / CELL)][(x / CELL)] = parts[i].life/10;
					parts[i].life += 1.0;
				}
				}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	*colr = ((cpart->dcolour >> 16) & 0xFF);
	*colg = ((cpart->dcolour >> 8) & 0xFF);
	*colb = ((cpart->dcolour) & 0xFF);
	int angle = 0;
	angle = cpart->life/13;
	ren->drawcircle(cpart->x, cpart->y, cpart->tmp + 3, cpart->tmp + 3, *colr, *colg, *colb, 255);
	ren->drawcircle(cpart->x, cpart->y, cpart->tmp + 4, cpart->tmp + 4, 60, 60, 60, 255);
	ren->drawcircle(cpart->x, cpart->y, cpart->tmp + 5, cpart->tmp + 5, 60, 60, 60, 255);
	ren->draw_line(cpart->x, cpart->y, cpart->x + cpart->tmp * cos(angle*cpart->life/13), cpart->y + cpart->tmp * sin(angle*cpart->life/13), *colr, *colg, *colb, 255);
	ren->draw_line(cpart->x, cpart->y, cpart->x + cpart->tmp * cos(10+angle*cpart->life/13), cpart->y + cpart->tmp * sin(10+angle*cpart->life/13), *colr, *colg, *colb, 255);
	ren->draw_line(cpart->x, cpart->y, cpart->x + cpart->tmp * cos(20 + angle * cpart->life / 13), cpart->y + cpart->tmp * sin(20 + angle * cpart->life / 13), *colr, *colg, *colb, 255);
	ren->draw_line(cpart->x, cpart->y, cpart->x + cpart->tmp * cos(30 + angle * cpart->life / 13), cpart->y + cpart->tmp * sin(30 + angle * cpart->life / 13), *colr, *colg, *colb, 255);
	ren->draw_line(cpart->x, cpart->y, cpart->x + cpart->tmp * cos(40 + angle * cpart->life / 13), cpart->y + cpart->tmp * sin(40 + angle * cpart->life / 13), *colr, *colg, *colb, 255);
	return 0;
}

static void create(ELEMENT_CREATE_FUNC_ARGS) //Default length.
{
	sim->parts[i].dcolour = 0xFF0000;
	sim->parts[i].tmp = 8;
}
