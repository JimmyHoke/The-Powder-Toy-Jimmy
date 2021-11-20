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
	Hardness = 30;

	Weight = 100;
	HeatConduct = 0;
	Description = "A secret element with weird properties. SPRK to activate.";

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
	if (parts[i].tmp == 0||parts[i].tmp > 295)
	{
		parts[i].vx = 0;
		parts[i].vy = 0;
	}
	if (parts[i].tmp > 2 && parts[i].tmp < 300)
	{
		parts[i].tmp++;
	}

	if (parts[i].tmp >= 300)
	{
		sim->create_part(1, x, y - 1, RNG::Ref().between(1, 231));
		sim->kill_part(i);
	}

	{
		int r, rx, ry;
		if (parts[i].tmp2 > 0)
			parts[i].tmp2--;
		for (rx = -2; rx < 3; rx++)
			for (ry = -2; ry < 3; ry++)
				if (BOUNDS_CHECK && (rx || ry))
				{
					r = pmap[y + ry][x + rx];
					if (!r || sim->parts_avg(ID(r), i, PT_INSL) == PT_INSL)
						continue;
					if (TYP(r) == PT_SPRK)
					{
						parts[i].tmp = 3;
					}
				}
		//}
		return 0;
	}
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	if (cpart->tmp > 2 && cpart->tmp < 300)
	{
		float frequency = 0.04045;
		*colr = (sin(frequency* cpart->tmp + 4) * 127 + 150);
		*colg = (sin(frequency* cpart->tmp + 8) * 127 + 150);
		*colb = (sin(frequency* cpart->tmp + 5) * 127 + 150);
		*pixel_mode |= PMODE_FLARE;
		ren->fillcircle(cpart->x, cpart->y, 8, 8, *colr, *colg, *colb, cpart->tmp);
		ren->draw_line(cpart->x, cpart->y, RNG::Ref().between(cpart->x - 12, cpart->x + 12), RNG::Ref().between(cpart->y - 12, cpart->y + 12), *colr, *colg, *colb, 255);
	}
	return 0;
}

