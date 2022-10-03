#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);

void Element::Element_LASR()
{
	Identifier = "DEFAULT_PT_LASR";
	Name = "LASR";
	Colour = PIXPACK(0xFF0000);
	MenuVisible = 1;
	MenuSection = SC_POWERED;
	Enabled = 1;

	Advection = 0.4f;
	AirDrag = 0.04f * CFDS;
	AirLoss = 0.94f;
	Loss = 0.95f;
	Collision = -0.1f;
	Gravity = 0.1f;
	Diffusion = 0.00f;
	HotAir = 0.000f	* CFDS;
	Falldown = 0;

	Flammable = 0;
	Explosive = 0;
	Meltable = 1;
	Hardness = 1;

	Weight = 100;

	HeatConduct = 251;
	Description = "Laser, power with PSCN. Creates a strong beam in opposite direction. Use with HEAT/COOL.";

	Properties = TYPE_PART | PROP_LIFE_DEC;

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
	if (parts[i].tmp == 0 || parts[i].tmp == 1)
	{
		parts[i].vx = 0;
		parts[i].vy = 0;
	}
	for (int rx = -1; rx <= 1; rx++)
		for (int ry = -1; ry <= 1; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				int r = pmap[y + ry][x + rx];
				if (!r)
					continue;

				if (parts[ID(r)].type == PT_SPRK && parts[ID(r)].ctype == PT_PSCN && parts[ID(r)].life == 3) //Check for a sprk with ctype PSCN to activate and store the direction.
				{
					parts[i].tmp = 1; //State
					parts[i].tmp3 = (int)(-rx);
					parts[i].tmp4 = (int)(-ry);
					parts[i].life = 4;
				}

				if (parts[i].tmp == 1 && parts[i].life > 0)
				{
					sim->create_part(-1, x + parts[i].tmp3, y + parts[i].tmp4, PT_LASR);
						if (parts[ID(r)].type == PT_LASR && parts[ID(r)].tmp != 1)
						{
							parts[ID(r)].vx = (float)parts[i].tmp3*50;
							parts[ID(r)].vy = (float)parts[i].tmp4*50;
							parts[ID(r)].tmp = 100;
						}
				}
			}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	if (cpart->tmp == 100)
	{
		*firer = 255;
		*fireg = 0;
		*fireb = 0;
		*firea = 100;
		*pixel_mode |= FIRE_ADD;
	}
	return 0;
}