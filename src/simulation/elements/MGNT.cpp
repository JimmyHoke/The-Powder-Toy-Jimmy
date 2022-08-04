#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);

void Element::Element_MGNT()
{
	Identifier = "DEFAULT_PT_MGNT";
	Name = "EMGT";
	Colour = PIXPACK(0x708090);
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
	Description = "Strong electro magnet, creates EM fields when powered. Can attract/ repel certain metals or Energy particles. Read WIKI.";

	Properties = TYPE_SOLID | PROP_HOT_GLOW;

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
	if ((RNG::Ref().chance(1, 5)))
	{
		if (parts[i].tmp > 0)
		{
			parts[i].tmp -= 1;
			parts[i].life += 2;
		}
		if (parts[i].tmp2 > 0)
		{
			parts[i].tmp2 -= 1;
			parts[i].life += 2;
		}
		if (parts[i].life > 0)
		{
			parts[i].life -= 1;
		}
	}
	if (parts[i].life > 40||parts[i].life < 0)
	{
		parts[i].life = 40;
	}
	if (parts[i].tmp > 0 && parts[i].tmp2 > 0)
	{
		parts[i].temp += 15.15f;
	}
	int checkrad = parts[i].life;
	int r, rx, ry;
		for (rx = -1; rx <= 2; rx++)
			for (ry = -1; ry <= 2; ry++)
				if (BOUNDS_CHECK && (rx || ry))
				{
					r = pmap[y + ry][x + rx];
					if (!r)
						continue;
					if (nt > 0)
					{
						parts[i].tmp3 = 1;
					}
					if (parts[ID(r)].type == PT_SPRK)
					{
						if (parts[ID(r)].ctype == PT_PSCN)
						{
							if (parts[i].temp < 673.15f)
							{
								parts[i].temp += 3.0f;
							}
							{
								PropertyValue value;
								value.Integer = 3;
								sim->flood_prop(x, y, offsetof(Particle, tmp), value, StructProperty::Integer);
							}
						}
						if (parts[ID(r)].ctype == PT_NSCN)
						{
							if (parts[i].temp < 673.15f)
							{
								parts[i].temp += 3.0f;
							}
							{
								PropertyValue value;
								value.Integer = 3;
								sim->flood_prop(x, y, offsetof(Particle, tmp2), value, StructProperty::Integer);
							}
						}
					}
				}
		if (parts[i].tmp3 == 1)
		{
			for (rx = -checkrad; rx <= checkrad; rx++)
				for (ry = -checkrad; ry <= checkrad; ry++)
					if (x + rx >= 0 && y + ry >= 0 && x + rx < XRES && y + ry < YRES && (rx || ry))
					{
						r = pmap[y + ry][x + rx];
						if (!r)
							r = sim->photons[y + ry][x + rx];
						if (!r)
							continue;
						switch (TYP(r))
						{
						case PT_BRMT:
						case PT_BREC:
						case PT_SLCN:
						case PT_PQRT:
						case PT_COPR:
						case PT_ELEC:
						case PT_NEUT:
						case PT_GRVT:
						case PT_PHOT:
						case PT_PLSM:
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
							if (parts[i].tmp > 0 and parts[i].tmp2 > 0)
							{
								if (parts[ID(r)].life == 0)
								{
									parts[ID(r)].temp += 35.15f;
									parts[ID(r)].life = 4;
									parts[ID(r)].ctype = parts[ID(r)].type;
									sim->part_change_type(ID(r), x + rx, y + ry, PT_SPRK);
								}
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
	if (cpart->tmp3 > 0)
	{
		if (RNG::Ref().chance(1, 3))
		{
			ren->drawcircle((int)(cpart->x), (int)(cpart->y), cpart->life, cpart->life, 40 + cpart->tmp * 70, 0, 40 + cpart->tmp2 * 70, 40);
		}
	}
	return 0;
}