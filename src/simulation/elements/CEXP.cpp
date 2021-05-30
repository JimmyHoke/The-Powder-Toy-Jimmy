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
		if (parts[i].life <= -256 || parts[i].life > 273)
	{
		parts[i].life = 10.0;
	}

	if (parts[i].tmp < -273 || parts[i].tmp > 9724)
	{
		parts[i].tmp = 150;
	}

	if (parts[i].tmp2 < -273 || parts[i].tmp2 > 9724)
	{
		parts[i].tmp2 = 1000;
	}

	int r, rx, ry;
	for (rx = -2; rx < 3; rx++)
		for (ry = -2; ry < 3; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				if ((parts[i].temp - 273.15f > parts[i].tmp)|| parts[ID(r)].type == PT_SPRK)
				{
					parts[i].pavg[0] = 10;
					
				}
				else if (TYP(r) == PT_CEXP)
				{
					if (!parts[i].pavg[0])
					{
						if (parts[ID(r)].pavg[0])
						{
							parts[i].pavg[0] = parts[ID(r)].pavg[0];
							if ((ID(r)) > i)
								parts[i].pavg[0]--;
						}
					}
					else if (!parts[ID(r)].pavg[0])
					{
						parts[ID(r)].pavg[0] = parts[i].pavg[0];
						if ((ID(r)) > i)
							parts[ID(r)].pavg[0]++;
					}
				}
			}
	if (parts[i].pavg[0] > 0)
	{
		sim->pv[(y / CELL)][(x / CELL)] = parts[i].life;
		parts[ID(r)].temp =  parts[i].tmp2 + 273.15f;
		sim->create_part(i, x, y, parts[i].ctype);
	}
	return 0;
}

static void create(ELEMENT_CREATE_FUNC_ARGS)
{
	sim->parts[i].tmp = 150;
	sim->parts[i].tmp2 = 1000;
	sim->parts[i].ctype = PT_FIRE;
	sim->parts[i].life = 10.0;
}