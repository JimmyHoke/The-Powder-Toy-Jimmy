#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);

void Element::Element_MGNT()
{
	Identifier = "DEFAULT_PT_MGNT";
	Name = "EMGT";
	Colour = PIXPACK(0x333333);
	MenuVisible = 1;
	MenuSection = SC_FORCE;
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
	Meltable = 1;
	Hardness = 1;

	Weight = 100;

	HeatConduct = 251;
	Description = "Electro Magnet, creates electromagnetic fields when sparked. Can attract/ repel certain metal powders. Read WIKI.";

	Properties = TYPE_SOLID| PROP_LIFE_DEC | PROP_HOT_GLOW;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = 1573.0f;
	HighTemperatureTransition = PT_LAVA;
	Update = &update;
	Graphics = &graphics;
}
static int update(UPDATE_FUNC_ARGS)
{
	if (parts[i].tmp < 0 || parts[i].tmp > 20)
		parts[i].tmp = 20;

	if (parts[i].tmp > 0)
	{
		if (RNG::Ref().chance(1, 3))
		{
			parts[i].tmp -= 1;
		}
	}

	if (parts[i].tmp2 < 0 || parts[i].tmp2 > 20)
		parts[i].tmp2 = 20;

	if (parts[i].tmp2 > 0)
	{
		if (RNG::Ref().chance(1, 3))
		{
			parts[i].tmp2 -= 1;
		}
	}
	if (parts[i].tmp3 > 0)
		parts[i].tmp3 -= 1;

	if (parts[i].life > 0 && parts[i].tmp3 > 0)
	{
		parts[i].temp += 10.15f;
	}

	int r, rx, ry;
	int ar = abs(parts[i].tmp - parts[i].tmp2);

		for (rx = -2; rx <= 3; rx++)
			for (ry = -2; ry <= 3; ry++)
				if (BOUNDS_CHECK && (rx || ry))
				{
					r = pmap[y + ry][x + rx];
					if (!r)
						continue;
					if (parts[ID(r)].type == PT_SPRK)
					{
						if (parts[ID(r)].ctype == PT_PSCN)
						{
							if (parts[i].temp < 673.15f)
							{
								parts[i].temp += 5.0f;
							}

							{
								PropertyValue value;
								value.Integer = 2;
								sim->flood_prop(x, y, offsetof(Particle, life), value, StructProperty::Integer);
							}
						}
						if (parts[ID(r)].ctype == PT_NSCN)
						{
							if (parts[i].temp < 673.15f)
							{
								parts[i].temp += 5.0f;
							}
							{
								PropertyValue value;
								value.Integer = 2;
								sim->flood_prop(x, y, offsetof(Particle, tmp3), value, StructProperty::Integer);
							}
						}
					}
					if (parts[ID(r)].life > 0)
					{
						if (RNG::Ref().chance(1, 30))
						{
							parts[i].tmp += 1;
						}
					}
				    if (parts[ID(r)].tmp3 > 0)
					{
						if (RNG::Ref().chance(1, 30))
						{
							parts[i].tmp2 += 1;
						}
					}
				}
		if (RNG::Ref().chance(1, 8))
		{
			for (rx = -ar; rx <= ar; rx++)
				for (ry = -ar; ry <= ar; ry++)
					if (x + rx >= 0 && y + ry >= 0 && x + rx < XRES && y + ry < YRES && (rx || ry))
					{
						r = pmap[y + ry][x + rx];
						if (!r)
							continue;
						switch (TYP(r))
						{
						case PT_BRMT:
						case PT_BREC:
						case PT_SLCN:
						case PT_PQRT:
						case PT_COPR:
						{
							if (parts[i].tmp > 0)
							{
								if (parts[ID(r)].y > parts[i].y)
									parts[ID(r)].vy = -0.5;
								else if (parts[ID(r)].y < parts[i].y)
									parts[ID(r)].vy = 0.5;

								if (parts[ID(r)].x > parts[i].x)
									parts[ID(r)].vx = -0.5;
								else if (parts[ID(r)].x < parts[i].x)
									parts[ID(r)].vx = 0.5;
							}
							if (parts[i].tmp2 > 0)
							{
								if (parts[ID(r)].y > parts[i].y)
									parts[ID(r)].vy = 1;
								else if (parts[ID(r)].y < parts[i].y)
									parts[ID(r)].vy = -1;

								if (parts[ID(r)].x > parts[i].x)
									parts[ID(r)].vx = 0.5;
								else if (parts[ID(r)].x < parts[i].x)
									parts[ID(r)].vx = -0.5;
							}
						}
						break;
						case PT_METL:
						case PT_BMTL:
						case PT_IRON:
						case PT_TUNG:
						case PT_GOLD:
						{
							if (parts[i].tmp> 0 and parts[i].tmp2 > 0)
							{
									parts[ID(r)].temp += 5.15f;
							}
						}
						break;
						}
					}
		}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	if (cpart->tmp > 0)
	{
		ren->drawcircle((int)(cpart->x), (int)(cpart->y), cpart->tmp, cpart->tmp, 248, 98, 98, 10);
	}
	if (cpart->tmp2 > 0)
	{
		ren->drawcircle((int)(cpart->x), (int)(cpart->y), cpart->tmp2, cpart->tmp2, 98, 98, 248, 10);
	}
	return 0;
}