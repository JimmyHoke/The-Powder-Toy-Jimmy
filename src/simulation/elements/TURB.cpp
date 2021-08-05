#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);
void Element::Element_TURB()
{
	Identifier = "DEFAULT_PT_TURB";
	Name = "TURB";
	Colour = PIXPACK(0x0A0A6B);
	MenuVisible = 1;
	MenuSection = SC_SPECIAL;
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

	HeatConduct = 40;
	Description = "Turbine, stores energy when Pressure > 4. Faster when > 16, Releases stored energy to PSCN. Use sparingly.";

	Properties = TYPE_SOLID | PROP_NEUTPASS;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = 3275;
	HighTemperatureTransition = PT_LAVA;

	Update = &update;
	Graphics = &graphics;
}

static int update(UPDATE_FUNC_ARGS)
{
	if (parts[i].life < 0)
		parts[i].life = 0;
	if (sim->pv[y / CELL][x / CELL] >= 4.0 && sim->pv[y / CELL][x / CELL] < 16.0)
	{
		parts[i].life += 0.5;
		parts[i].tmp = 1;
	}
	else if (sim->pv[y / CELL][x / CELL] >= 16.0)
	{
		parts[i].life += 1;
		parts[i].tmp = 2;
	}
	else if (sim->pv[y / CELL][x / CELL] < 4.0)
		parts[i].tmp = 0;

	int r, rx, ry;
	for (rx = -1; rx < 2; rx++)
		for (ry = -1; ry < 2; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				if (parts[ID(r)].type == PT_PSCN && parts[i].life > 0)
				{
					sim->part_change_type(ID(r), x + rx, y + ry, PT_SPRK);
					parts[ID(r)].ctype = PT_PSCN;
					parts[i].life--;
				}
			}

	for (int chargediffuse = 0; chargediffuse < 8; chargediffuse++)
	{
		int rx = RNG::Ref().between(-2, 2);
		int ry = RNG::Ref().between(-2, 2);
		if (BOUNDS_CHECK && (rx || ry))
		{
			int r = pmap[y + ry][x + rx];
			if (!r || sim->parts_avg(ID(r), i, PT_INSL) == PT_INSL)
				continue;
			if (TYP(r) == PT_TURB && (parts[i].life > parts[ID(r)].life) && parts[i].life > 0)//diffusion
			{
				int charge = parts[i].life - parts[ID(r)].life;
				if (charge == 1)
				{
					parts[ID(r)].life++;
					parts[i].life--;
					chargediffuse = 8;
				}
				else if (charge > 0)
				{
					parts[ID(r)].life += charge / 2;
					parts[i].life -= charge / 2;
					chargediffuse = 8;
				}
			}
		}
	}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	if (cpart->tmp == 1)
	{
		*colr = 20;
		*colg = 20;
		*colb = 70;
		*fireb = 100;
		*firer = 30;
		*fireg = 30;
		*firea = 200;
		*pixel_mode |= FIRE_ADD;
	}
	else if (cpart->tmp == 2)
	{
		*colr = 70;
		*colg = 20;
		*colb = 20;
		*fireb = 30;
		*firer = 130;
		*fireg = 30;
		*firea = 200;
		*pixel_mode |= FIRE_ADD;
	}
	return 0;
}