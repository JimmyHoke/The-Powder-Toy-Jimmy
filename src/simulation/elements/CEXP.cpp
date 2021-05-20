#include "simulation/ElementCommon.h"
static int update(UPDATE_FUNC_ARGS);
static void create(ELEMENT_CREATE_FUNC_ARGS);

void Element::Element_CEXP()
{
	Identifier = "DEFAULT_PT_CEXP";
	Name = "CEXP";
	Colour = PIXPACK(0x8B0000);
	MenuVisible = 1;
	MenuSection = SC_EXPLOSIVE;
	Enabled = 1;

	Advection = 0.0f;
	AirDrag = 0.00f * CFDS;
	AirLoss = 0.95f;
	Loss = 0.00f;
	Collision = 0.0f;
	Gravity = 0.0f;
	Diffusion = 0.00f;
	HotAir = 0.000f	* CFDS;
	Falldown = 0;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 10;
	Weight = 100;
	PhotonReflectWavelengths = 0x8B0000;

	HeatConduct = 240;
	Description = "Custom explosive, Tmp = Temp at which exp. occur, Tmp2 = Temp. on explosion, Ctype = Element, Life = Pressure.";

	Properties = TYPE_SOLID | PROP_NEUTPENETRATE;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = ITH;
	HighTemperatureTransition = NT;
	Update = &update;
	Create = &create;
}
static int update(UPDATE_FUNC_ARGS)
{
	//checks
	if (parts[i].life <= -250 || parts[i].life > 270)
	{
		parts[i].life = 270;
	}

	if (parts[i].tmp < -273 || parts[i].tmp > 9700)
	{
		parts[i].tmp = 500;
	}

	if (parts[i].tmp2 < -273 || parts[i].tmp2 > 9700)
	{
		parts[i].tmp2 = 1000;
	}

	int r, rx, ry;
	for (rx = -1; rx < 2; rx++)
		for (ry = -1; ry < 2; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				r = pmap[y + ry][x + rx];
				if (!r)
					continue;
					if (parts[i].temp - 273.15f > parts[i].tmp)
					{
						sim->pv[(y / CELL)][(x / CELL)] = parts[i].life;
						sim->part_change_type(i, x + rx, y + ry, parts[i].ctype);
						parts[ID(r)].temp = parts[i].tmp2;
						
					}
				}
	return 0;
}

static void create(ELEMENT_CREATE_FUNC_ARGS)
{
	    sim->parts[i].tmp = 450;
		sim->parts[i].tmp2 = 1000;
		sim->parts[i].ctype = PT_FIRE;
		sim->parts[i].life = 10.0;
}
