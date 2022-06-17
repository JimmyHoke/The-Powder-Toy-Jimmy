#include "simulation/ElementCommon.h"

static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);

void Element::Element_FRCF()
{
	Identifier = "DEFAULT_PT_FRCF";
	Name = "FRCF";
	Colour = PIXPACK(0xff00ea);
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
	Description = "Shield Generator.";

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
	if (parts[i].life > 20||parts[i].life < 0)
	{
		parts[i].life = 20;
	}
	if (parts[i].tmp > 0 && parts[i].tmp2 > 0)
	{
		parts[i].temp += 15.15f;
	}
	int checkrad = parts[i].life + parts[i].tmp3;
	int r, rx, ry;
		for (rx = -1; rx <= 2; rx++)
			for (ry = -1; ry <= 2; ry++)
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
								parts[i].temp += 3.0f;
							}
							{
								PropertyValue value;
								value.Integer = 4;
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
								value.Integer = 4;
								sim->flood_prop(x, y, offsetof(Particle, tmp2), value, StructProperty::Integer);
							}
						}
					}
				}
			for (rx = -checkrad; rx <= checkrad; rx++)
				for (ry = -checkrad; ry <= checkrad; ry++)
					if (x + rx >= 0 && y + ry >= 0 && x + rx < XRES && y + ry < YRES && (rx || ry))
					{
						r = pmap[y + ry][x + rx];
						if (!r)
							r = sim->photons[y + ry][x + rx];
						if (!r)
							continue;
						if (parts[i].tmp > 0)
							{
								if (parts[ID(r)].y > parts[i].y)
									parts[ID(r)].vy = -0.5 - parts[i].tmp4;
								else if (parts[ID(r)].y < parts[i].y)
									parts[ID(r)].vy = 0.5 + parts[i].tmp4;

								if (parts[ID(r)].x > parts[i].x)
									parts[ID(r)].vx = -0.5 - parts[i].tmp4;
								else if (parts[ID(r)].x < parts[i].x)
									parts[ID(r)].vx = 0.5 + parts[i].tmp4;
							}
							if (parts[i].tmp2 > 0)
							{
								if (parts[ID(r)].y > parts[i].y)
									parts[ID(r)].vy = 1 +  parts[i].tmp4;
								else if (parts[ID(r)].y < parts[i].y)
									parts[ID(r)].vy = -1 - parts[i].tmp4;

								if (parts[ID(r)].x > parts[i].x)
									parts[ID(r)].vx = 0.5 + parts[i].tmp4;
								else if (parts[ID(r)].x < parts[i].x)
									parts[ID(r)].vx = -0.5 - parts[i].tmp4;
							}
					}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	if (RNG::Ref().chance(1, 3))
	{

	ren->drawcircle((int)(cpart->x), (int)(cpart->y), cpart->life, cpart->life, 80+cpart->tmp*40, 0, 80+cpart->tmp2 *40, 20);

	}
	return 0;
}