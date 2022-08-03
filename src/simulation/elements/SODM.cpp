#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);

void Element::Element_SODM()
{
	Identifier = "DEFAULT_PT_SODM";
	Name = "SODM";
	Colour = PIXPACK(0xcaccce);
	MenuVisible = 1;
	MenuSection = SC_POWDERS;
	Enabled = 1;


	Advection = 0.7f;
	AirDrag = 0.02f * CFDS;
	AirLoss = 0.96f;
	Loss = 0.80f;
	Collision = 0.0f;
	Gravity = 0.1f;
	Diffusion = 0.00f;
	HotAir = 0.000f	* CFDS;
	Falldown = 1;

	Flammable = 0;
	Explosive = 0;
	Meltable = 2;
	Hardness = 1;


	Weight = 100;
	HeatConduct = 100;
	Description = "Sodium, highly reactive metal.";

	Properties = TYPE_PART|PROP_CONDUCTS;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = 370.15f;
	HighTemperatureTransition = PT_LAVA;

	Update = &update;
}

static int update(UPDATE_FUNC_ARGS)
{
	if (parts[i].tmp2 == 1 && parts[i].tmp < 300)
	{
		parts[i].tmp = parts[i].tmp + 1;
	}

	if (parts[i].tmp > 0 && parts[i].tmp < 100)
	{
		sim->create_part(-1, x - 2, y, PT_FIRE);
		sim->create_part(-1, x + 2, y, PT_FIRE);
		sim->create_part(-1, x, y + 2, PT_FIRE);
		sim->create_part(-1, x, y - 2, PT_FIRE);

		sim->create_part(-1, x - 3, y, PT_FIRE);
		sim->create_part(-1, x + 3, y, PT_FIRE);
		sim->create_part(-1, x, y + 3, PT_FIRE);
		sim->create_part(-1, x, y - 3, PT_FIRE);
	}
		for (int rx = -2; rx < 3; rx++)
			for (int ry = -2; ry < 3; ry++)
				if (BOUNDS_CHECK && (rx || ry))
				{
					int r = pmap[y + ry][x + rx];
					if (!r)
						continue;
					if ((TYP(r) == PT_WATR || TYP(r) == PT_DSTW || TYP(r) == PT_SLTW || TYP(r) == PT_CBNW || TYP(r) == PT_WTRV))
					{
						parts[i].tmp2 = 1;

							if (parts[i].tmp > 50)
							{
								parts[i].temp += 200.0f;
								parts[ID(r)].temp += 80.0f;
							}
					}
					if (TYP(r) == PT_CHLR)
					{
						if (parts[i].tmp < 300)
						{
							sim->part_change_type(i, x, y, PT_SALT);
							sim->kill_part(ID(r));
						}
					}
				}
	return 0;
}
