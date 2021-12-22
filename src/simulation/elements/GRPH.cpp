#include "simulation/ElementCommon.h"
static int update(UPDATE_FUNC_ARGS);

void Element::Element_GRPH()
{
	Identifier = "DEFAULT_PT_GRPH";
	Name = "GRPH";
	Colour = PIXPACK(0x696969);
	MenuVisible = 1;
	MenuSection = SC_POWDERS;
	Enabled = 1;

	Advection = 0.4f;
	AirDrag = 0.04f * CFDS;
	AirLoss = 0.94f;
	Loss = 0.95f;
	Collision = -0.1f;
	Gravity = 0.4f;
	Diffusion = 0.00f;
	HotAir = 0.000f	* CFDS;
	Falldown = 1;

	Flammable = 0;
	Explosive = 0;
	Meltable = 5;
	Hardness = 1;

	Weight = 75;

	HeatConduct = 255;
	Description = "Graphene, a slippery powder, efficient conductor. Hard to extinguish once ignited. Absorbs NEUT. GRPH + O2 -> CO2.";

	Properties = TYPE_PART| PROP_CONDUCTS | PROP_LIFE_DEC | PROP_HOT_GLOW | PROP_NEUTPASS;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = 3950.15f;
	HighTemperatureTransition = PT_LAVA;

	Update = &update;
}

static int update(UPDATE_FUNC_ARGS)
{
	if (parts[i].tmp == 1)
	{
		if (RNG::Ref().chance(1, 70))
		{
			sim->create_part(-1, x, y - 1, PT_FIRE);
		}
		if (RNG::Ref().chance(1, 500))
		{
			parts[i].life = 90;
			sim->part_change_type(i, x, y, PT_FIRE);
		}
	}

	int r, rx, ry;
	for (rx = -2; rx < 3; rx++)
		for (ry = -2; ry < 3; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				r = pmap[y + ry][x + rx];
				if (!r)
					r = sim->photons[y + ry][x + rx];
				if (!r)
					continue;
				if (TYP(r) && TYP(r) != PT_GRPH && (sim->elements[TYP(r)].Properties & TYPE_SOLID) && parts[ID(r)].y > parts[i].y)
				{
					parts[i].vy = -0.2;
				}

				switch (TYP(r))
				{
				case PT_FIRE:
				case PT_SMKE:
				case PT_PLSM:
				{
					parts[i].tmp = 1;
				}
				break;
				case PT_GRPH:
				{
					if (parts[ID(r)].tmp > 0)
					parts[i].tmp = 1;
				}
				break;
				case PT_O2:
				{
					if (RNG::Ref().chance(1, 30))
					{
						sim->part_change_type(i, x, y, PT_CO2);
						sim->kill_part(ID(r));
					}
				}
				break;
				case PT_NEUT:
				{
					if (RNG::Ref().chance(1,3))
					{
						sim->kill_part(ID(r));
					}
				}
				break;
				}
			}
	return 0;
}
