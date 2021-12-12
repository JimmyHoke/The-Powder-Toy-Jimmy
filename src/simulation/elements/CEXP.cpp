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
	int r, rx, ry;
	for (rx = -3; rx < 3; rx++)
		for (ry = -3; ry < 3; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				{
					switch (TYP(r))
					{
					case PT_SPRK:
					case PT_FIRE:
					{
						parts[i].pavg[0] = 10;
					}
					break;

					case PT_CEXP:

					{
						if (parts[ID(r)].pavg[0] > 0)
							parts[i].pavg[0] = 10;
					}
					break;
					}
				}
			}
	if (parts[i].temp - 273.15f > parts[i].tmp || parts[ID(r)].temp - 273.15f > parts[i].tmp)
	{
		parts[i].pavg[0] = 10;
	}

	if (parts[i].pavg[0] > 0)
	{
		sim->pv[(y / CELL)][(x / CELL)] = parts[i].life;
		parts[ID(r)].temp =  parts[i].tmp2;
		sim->create_part(i, x, y, parts[i].ctype);
	}
	return 0;
}

static void create(ELEMENT_CREATE_FUNC_ARGS)
{
	sim->parts[i].tmp = 150;
	sim->parts[i].tmp2 = 9700;
	sim->parts[i].ctype = PT_PLSM;
	sim->parts[i].life = 50.0;
}