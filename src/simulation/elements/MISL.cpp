#include "simulation/ElementCommon.h"
static int update(UPDATE_FUNC_ARGS);
static int graphics(GRAPHICS_FUNC_ARGS);
static void create(ELEMENT_CREATE_FUNC_ARGS);

void Element::Element_MISL()
{
	Identifier = "DEFAULT_PT_MISL";
	Name = "MISL";
	Colour = PIXPACK(0xFFFFFF);
	MenuVisible = 1;
	MenuSection = SC_FORCE;
	Enabled = 1;

	Advection = 0.0f;
	AirDrag = 0.00f * CFDS;
	AirLoss = 0.00f;
	Loss = 0.00f;
	Collision = 0.0f;
	Gravity = 0.0f;
	Diffusion = 0.00f;
	HotAir = 0.000f	* CFDS;
	Falldown = 0;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 5;

	Weight = 100;

	HeatConduct = 0;
	Description = "Missile, flies to target coordinates (tmp = X, tmp2 = Y) and then goes booom. Activates with PSCN.";

	Properties = TYPE_PART;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = ITH;
	HighTemperatureTransition = NT;
	DefaultProperties.temp = R_TEMP + 30.0f;

	Update = &update;
	Graphics = &graphics;
	Create = &create;
}

static int update(UPDATE_FUNC_ARGS)
{
	//checks for .tmp and .tmp2
	if (parts[i].tmp <= 0 || parts[i].tmp > 610)
		parts[i].tmp = 100;
	if (parts[i].tmp2 <= 0 || parts[i].tmp2 > 380)
		parts[i].tmp2 = 100;

	if (parts[i].life == 20)
	{
		parts[i].pavg[1]++;
		if (parts[i].y > parts[i].tmp2)
		{
			parts[i].vy = -1;
		}
		else if (parts[i].y <= parts[i].tmp2)
		{
			parts[i].life = 10;
		}
		sim->create_part(-1, x, y + 1, PT_FIRE); //Trail Up
	}
	// Motion path
	//pavg[0] 1 = Left , 2 = Right, 3 = Down.
	else if (parts[i].life == 10) //For motion
	{
		parts[i].pavg[1]++;
		if (parts[i].x < parts[i].tmp)
		{
			parts[i].pavg[0] = 2;
			parts[i].vx = 2.0;
			sim->create_part(-1, x-1, y, PT_FIRE); //Trail Left
		}
		else if (parts[i].x > parts[i].tmp)
		{
			parts[i].pavg[0] = 1;
			parts[i].vx = -2.0;
			sim->create_part(-1, x+1, y, PT_FIRE); //Trail Right
		}
		if (parts[i].x == parts[i].tmp)
		{
			if (parts[i].y < parts[i].tmp2)
			{
				parts[i].pavg[0] = 3;
				parts[i].vy = 1.0;
				sim->create_part(-1, x, y - 2, PT_FIRE); //Trail Down
			}
		}
		//Explosion
		if ((parts[i].x == parts[i].tmp) && (parts[i].y == parts[i].tmp2) || parts[i].pavg[1] >= 700)
		{
			sim->pv[(y / CELL)][(x / CELL)] = 270;
			parts[i].life = 1;
			parts[i].tmp = 100;
			sim->part_change_type(i,x,y,PT_SING);
		}
	}
	for (int rx = -2; rx <= 2; rx++)
		for (int ry = -2; ry <= 2; ry++)
			if (BOUNDS_CHECK && (rx || ry))
			{
				int r = pmap[y + ry][x + rx];
				if (!r)
					continue;
				if (parts[ID(r)].type == PT_SPRK && parts[ID(r)].ctype == PT_PSCN && parts[ID(r)].life == 3) //Check for a sprk with ctype PSCN to activate and store the direction.
				{
					parts[i].life = 20;
				}
			}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS) //Flare when activated.
{
	if (cpart->pavg[0] == 0)//Up
	{
		ren->drawrect(cpart->x - 1, cpart->y - 4, 3, 1, 0, 255, 0, 255);
		ren->drawrect(cpart->x, cpart->y - 5, 1, 5, 255, 255, 255, 255);
		ren->drawrect(cpart->x - 2, cpart->y, 5, 1, 255, 0, 0, 255);
	}
	else if (cpart->pavg[0] == 1)//Left
	{
		ren->drawrect(cpart->x - 4, cpart->y - 1, 1, 3, 0, 255, 0, 255);
		ren->drawrect(cpart->x-5, cpart->y, 5, 1, 255, 255, 255, 255);
		ren->drawrect(cpart->x, cpart->y-2, 1, 5, 255, 0, 0, 255);
	}
	else if (cpart->pavg[0] == 2)//Right
	{
		ren->drawrect(cpart->x + 4, cpart->y - 1, 1, 3, 0, 255, 0, 255);
		ren->drawrect(cpart->x+1, cpart->y, 5, 1, 255, 255, 255, 255);
		ren->drawrect(cpart->x, cpart->y-2, 1, 5, 255, 0, 0, 255);
	}
	else if (cpart->pavg[0] == 3)//Down
	{
		ren->drawrect(cpart->x - 2, cpart->y, 5, 1, 255, 0, 0, 255);
		ren->drawrect(cpart->x, cpart->y+1, 1, 5, 255, 255, 255, 255);
		ren->drawrect(cpart->x - 1, cpart->y + 4, 3, 1, 0, 255, 0, 255);
	}
	return 0;
}

static void create(ELEMENT_CREATE_FUNC_ARGS) //Default range and ctype settings.
{
	sim->parts[i].tmp = 300;
	sim->parts[i].tmp2 = 200;
}
