#include "simulation/ElementCommon.h"
static int update(UPDATE_FUNC_ARGS);
static void create(ELEMENT_CREATE_FUNC_ARGS);

void Element::Element_CEXP()
{
	Identifier = "DEFAULT_PT_CEXP";
	Name = "CEXP";
	Colour = PIXPACK(0xFFA500);
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

	HeatConduct = 0;
	Description = "Custom explosive, read wiki. Temp = Temp upon explosion, Life = Pressure it creates, tmp = power (0-10).";

	Properties = TYPE_SOLID;

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
	if (parts[i].tmp < 0 || parts[i].tmp > 10)
		parts[i].tmp = 10;

	int r, rx, ry;
	for (rx = -1; rx < 2; rx++)
		for (ry = -1; ry < 2; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				r = pmap[y + ry][x + rx];
				switch (TYP(r))
				{
					case PT_SPRK:
					case PT_FIRE:
					case PT_PLSM:
					case PT_THDR:
					case PT_LIGH:
					{
						parts[i].tmp2 = 10;
					}
					break;

					case PT_CEXP:
					{
						if (parts[ID(r)].tmp2 > 0)
							parts[i].tmp2 = 10;
					}
					break;
				}
				if (parts[i].tmp2 > 0)
				{
					sim->pv[(y / CELL) + ry][(x / CELL) + rx] = (float)(parts[i].life);
					sim->create_part(-1, x + parts[i].tmp, y + parts[i].tmp, PT_PLSM);
					sim->create_part(-1, x - parts[i].tmp, y - parts[i].tmp, PT_PLSM);
					sim->create_part(-1, x - parts[i].tmp, y + parts[i].tmp, PT_PLSM);
					sim->create_part(-1, x + parts[i].tmp, y - parts[i].tmp, PT_PLSM);
					sim->part_change_type(i, x, y, PT_FIRE);
				}
				}
	return 0;
}

static void create(ELEMENT_CREATE_FUNC_ARGS)
{
	sim->parts[i].temp = 9720;
	sim->parts[i].tmp = 10;
	sim->parts[i].life = 256;
}
