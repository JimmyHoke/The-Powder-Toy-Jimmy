#include "simulation/ElementCommon.h"

int Element_EBCL_update(UPDATE_FUNC_ARGS);
int Element_COAL_graphics(GRAPHICS_FUNC_ARGS);

void Element::Element_EBCL()
{
	Identifier = "DEFAULT_PT_EBCL";
	Name = "EBCL";
	Colour = PIXPACK(0x333333);
	MenuVisible = 1;
	MenuSection = SC_POWDERS;
	Enabled = 1;

	Advection = 0.4f;
	AirDrag = 0.04f * CFDS;
	AirLoss = 0.94f;
	Loss = 0.95f;
	Collision = -0.1f;
	Gravity = 0.3f;
	Diffusion = 0.00f;
	HotAir = 0.000f	* CFDS;
	Falldown = 1;

	Flammable = 0;
	Explosive = 0;
	Meltable = 0;
	Hardness = 2;
	PhotonReflectWavelengths = 0x00000000;

	Weight = 90;

	HeatConduct = 150;
	Description = "Enriched Broken Coal";

	Properties = TYPE_PART;

	LowPressure = IPL;
	LowPressureTransition = NT;
	HighPressure = IPH;
	HighPressureTransition = NT;
	LowTemperature = ITL;
	LowTemperatureTransition = NT;
	HighTemperature = ITH;
	HighTemperatureTransition = NT;

	DefaultProperties.life = 510;

	Update = &Element_EBCL_update;
	Graphics = &Element_COAL_graphics;
}
int Element_EBCL_update(UPDATE_FUNC_ARGS)
{
	if (parts[i].life<=0) {
		sim->create_part(i, x, y, PT_FIRE);
		return 1;
	} else if (parts[i].life < 501) {
		parts[i].life--;
		sim->create_part(-1, x + RNG::Ref().between(-1, 1), y + RNG::Ref().between(-1, 1), PT_FIRE);
		sim->create_part(-1, x + RNG::Ref().between(-1, 1), y + RNG::Ref().between(-1, 1), PT_PLSM);
		sim->create_part(-1, x + RNG::Ref().between(-1, 1), y + RNG::Ref().between(-1, 1), PT_O2);
	}
	if (parts[i].type == PT_COAL)
	{
		if ((sim->pv[y/CELL][x/CELL] > 4.3f)&&parts[i].tmp>40)
			parts[i].tmp=39;
		else if (parts[i].tmp<40&&parts[i].tmp>0)
			parts[i].tmp--;
		else if (parts[i].tmp<=0) {
			sim->part_change_type(i, x, y, PT_FIRE);
			return 1;
		}
	}
	if(parts[i].temp > parts[i].tmp2)
		parts[i].tmp2 = int(parts[i].temp);
	return 0;
}