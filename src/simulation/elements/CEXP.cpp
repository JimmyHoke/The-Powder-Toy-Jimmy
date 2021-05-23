#include "simulation/ElementCommon.h"
static int update(UPDATE_FUNC_ARGS);
static void create(ELEMENT_CREATE_FUNC_ARGS);

void Element::Element_CEXP()
{
	Identifier = "DEFAULT_PT_CEXP";
	Name = "CEXP";
	Colour = PIXPACK(0xFF6347);
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
	PhotonReflectWavelengths = 0xFF6347;

	HeatConduct = 240;
	Description = "Custom explosive, read wiki. Tmp = Temp at which exp. occur, Tmp2 = Temp. on explosion, Ctype = Element, Life = Pressure.";

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
	if (parts[i].pavg[0] == 5 )
	{
		sim->pv[(y / CELL)][(x / CELL)] = parts[i].life;
		sim->kill_part(i);
	}
	
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
					parts[ID(r)].temp = parts[i].tmp2 + 273.15f;
					sim->create_part(-1, x, y + 1, parts[i].ctype);
					sim->create_part(-1, x, y - 1, parts[i].ctype);
					sim->create_part(-1, x+1, y, parts[i].ctype);
					sim->create_part(-1, x-1, y, parts[i].ctype);
					parts[i].pavg[0] = 5;
				}
			}
	return 0;
}

static void create(ELEMENT_CREATE_FUNC_ARGS)
{
	sim->parts[i].tmp = 400;
	sim->parts[i].tmp2 = 1000;
	sim->parts[i].ctype = PT_FIRE;
	sim->parts[i].life = 10.0;
}