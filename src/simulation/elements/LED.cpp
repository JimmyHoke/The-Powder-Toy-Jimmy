#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);
void Element::Element_LED()
{
	Identifier = "DEFAULT_PT_LED";
	Name = "LED";
	Colour = PIXPACK(0x404040);
	MenuVisible = 1;
	MenuSection = SC_POWERED;
	Enabled = 1;

	Advection = 0.0f;
	AirDrag = 0.00f * CFDS;
	AirLoss = 0.90f;
	Loss = 0.00f;
	Collision = 0.0f;
	Gravity = 0.0f;
	Diffusion = 0.00f;
	HotAir = 0.000f	* CFDS;
	Falldown = 0;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 1;

	Weight = 100;
	HeatConduct = 0;
	Description = "Light emitting diode, .tmp2 changes colours. Temp sets brightness, use with PSCN.";
	DefaultProperties.temp = 35.0f + 273.15f;

	Properties = TYPE_SOLID;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = NT;
	HighTemperatureTransition = NT;

	Update = &update;
	Graphics = &graphics;
}

static int update(UPDATE_FUNC_ARGS)
{

	if (parts[i].temp > 374.15f)
		parts[i].temp = 374.15f;
	if (parts[i].temp < 274.15f)
		parts[i].temp = 274.15f;

	if (parts[i].life > 0)
		parts[i].life--;

	if (parts[i].tmp2 == 6 && parts[i].tmp < 1000)
	{
		parts[i].tmp++;
	}
	if (parts[i].tmp2 == 6 && parts[i].tmp == 1000)
	{
		parts[i].tmp = 1;
	}

	if (parts[i].tmp2 > 6 || parts[i].tmp2 <= 0)
	{
		parts[i].tmp2 = 0;
	}
	
		int r, rx, ry;
			for (rx = -2; rx < 2; rx++)
				for (ry = -2; ry < 2; ry++)
					if (BOUNDS_CHECK && (rx || ry))
					{
						r = pmap[y + ry][x + rx];
						if (!r || sim->parts_avg(ID(r), i, PT_INSL) == PT_INSL)
							continue;
						if (parts[ID(r)].type == PT_SPRK && parts[ID(r)].life > 0 && parts[ID(r)].ctype == PT_PSCN)
						{
							{
								PropertyValue value;
								value.Integer = 10;
								sim->flood_prop(x, y, offsetof(Particle, life), value, StructProperty::Integer);
							}
						}
						}
		return 0;
	}

static int graphics(GRAPHICS_FUNC_ARGS)
{
		if (cpart->life > 0)
		{
			if (cpart->tmp2 == 1)                            // Different tmp modes change colour of glow.
			{
				*firer = 250;
				*fireg = 0;
				*fireb = 0;
			}
			else if (cpart->tmp2 == 2)
			{
				*firer = 0;
				*fireg = 250;
				*fireb = 0;
			}
			else if (cpart->tmp2 == 3)
			{
				*firer = 0;
				*fireg = 0;
				*fireb = 250;
			}

			else if (cpart->tmp2 == 4)
			{
				*firer = 250;
				*fireg = 250;
				*fireb = 0;
			}

			else if (cpart->tmp2 == 5)
			{
				*firer = 250;
				*fireg = 0;
				*fireb = 250;
			}
			else if (cpart->tmp2 == 6)
			{
					float frequency = 0.04045;
					*firer = (sin(frequency* cpart->tmp + 4) * 127 + 150);
					*fireg = (sin(frequency* cpart->tmp + 6) * 127 + 150);
					*fireb = (sin(frequency* cpart->tmp + 8) * 127 + 150);
			}
			else if (cpart->tmp2 == 0)
			{
				*firer = 250;
				*fireg = 250;
				*fireb = 250;
				*firea = 35;
			}
			*firea = cpart->temp - 273.15f;
			*colr += *firer;
			*colg += *fireg;
			*colb += *fireb;
			*pixel_mode |= FIRE_ADD;
		}
		return 0;
}
