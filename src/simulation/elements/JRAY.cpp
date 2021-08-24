#include "simulation/ElementCommon.h"
#include "simulation/Air.h"

static int graphics(GRAPHICS_FUNC_ARGS);
static int update(UPDATE_FUNC_ARGS);

void Element::Element_JRAY()
{
	Identifier = "DEFAULT_PT_JRAY";
	Name = "JRAY";
	Colour = PIXPACK(0xFFFFFF);
	MenuVisible = 1;
	MenuSection = SC_NUCLEAR;
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
	Hardness = 0;

	Weight = 100;

	HeatConduct = 0;
	Description = "Jimmy's forcefield.";

	Properties = TYPE_SOLID;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = ITH;
	HighTemperatureTransition = NT;

	DefaultProperties.life = 300;

	Graphics = &graphics;
	Update = &update;
}

static int update(UPDATE_FUNC_ARGS)
{
	int ttan = 0;
	if (nt <= 2)
		ttan = 2;
	else if (parts[i].tmp)
		ttan = 2;
	else if (nt <= 6)
	{
		for (int rx = -1; rx <= 1; rx++)
			for (int ry = -1; ry <= 1; ry++)
				if ((!rx != !ry) && BOUNDS_CHECK)
				{
					if (TYP(pmap[y + ry][x + rx]) == PT_TTAN)
						ttan++;
				}
	}

	if (ttan >= 2)
	{
		sim->air->bmap_blockair[y / CELL][x / CELL] = 1;
		sim->air->bmap_blockairh[y / CELL][x / CELL] = 0x8;
	}
	return 0;
}

static int graphics(GRAPHICS_FUNC_ARGS)
{
	int x, trans = 255;
	if(cpart->tmp==0)
	{
		trans = cpart->life * 7;
		if (trans>255) trans = 255;
		if (cpart->ctype&0x3FFFFFFF) {
			*colg = 0;
			*colb = 0;
			*colr = 0;
			for (x=0; x<12; x++) {
				*colr += (cpart->ctype >> (x+18)) & 1;
				*colb += (cpart->ctype >>  x)	 & 1;
			}
			for (x=0; x<12; x++)
				*colg += (cpart->ctype >> (x+9))  & 1;
			x = 624/(*colr+*colg+*colb+1);
			*colr *= x;
			*colg *= x;
			*colb *= x;
		}
	}
	else if(cpart->tmp==1)
	{
		trans = cpart->life/4;
		if (trans>255) trans = 255;
		if (cpart->ctype&0x3FFFFFFF) {
			*colg = 0;
			*colb = 0;
			*colr = 0;
			for (x=0; x<12; x++) {
				*colr += (cpart->ctype >> (x+18)) & 1;
				*colb += (cpart->ctype >>  x)	 & 1;
			}
			for (x=0; x<12; x++)
				*colg += (cpart->ctype >> (x+9))  & 1;
			x = 624/(*colr+*colg+*colb+1);
			*colr *= x;
			*colg *= x;
			*colb *= x;
		}
	}
	else if(cpart->tmp==2)
	{
		trans = cpart->life*100;
		if (trans>255) trans = 255;
		*colr = 255;
		*colg = 150;
		*colb = 50;
	}
	*cola = trans;
	*pixel_mode &= ~PMODE;
	*pixel_mode |= PMODE_BLEND | PMODE_GLOW;
	return 0;
}
