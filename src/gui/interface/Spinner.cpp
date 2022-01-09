#include "Spinner.h"

#include <cmath>

#include "graphics/Graphics.h"
#include "src/common/tpt-compat.h"

using namespace ui;

Spinner::Spinner(Point position, Point size):
	Component(position, size), cValue(0),
	tickInternal(0)
{
}

void Spinner::Tick(float dt) {
	tickInternal++;
	if (tickInternal == 4) {
		cValue += 0.25f; // 0.05f;
		tickInternal = 0;
	}
}

void Spinner::Draw(const Point& screenPos) {
	Graphics * g = GetGraphics();
	
	int baseX = screenPos.X + (Size.X/2);
	int baseY = screenPos.Y + (Size.Y/2) - 16;
	int endAngle = (int)(cValue * 30 + sin(cValue / 3) * 45) % 360;
	int startAngle = (int)(endAngle - (sin(cValue / 3) * 120) - 150) % 360;
	int ringSize = 16;
	int ringWidth = 4;

	if (startAngle > endAngle) endAngle += 360;

	g->fillrect(baseX-18, baseY-18, 36, 36, 0, 0, 0, 255); // Background of the ProgressRing

	for (double i = 0; i < 360; i = i + 0.5) {
		for (double j = ringSize; j >= ringSize - ringWidth + 1; j = j - 0.5) {
			g->blendpixel((int)(baseX+cos((i-90)*M_PI/180)*j), (int)(baseY+sin((i-90)*M_PI/180)*j), 63, 63, 63, 255);
		}
	}

	for (double i = startAngle; i <= endAngle; i = i + 0.5) {
		for (double j = ringSize; j >= ringSize - ringWidth + 1; j = j - 0.5) {
			g->blendpixel((int)(baseX+cos((i-90)*M_PI/180)*j), (int)(baseY+sin((i-90)*M_PI/180)*j), 0, 192, 255, 255);
		}
	}
	g->fillcircle((int)(baseX+cos((startAngle-90)*M_PI/180)*(ringSize-ringWidth/2)), (int)(baseY+sin((startAngle-90)*M_PI/180)*(ringSize-ringWidth/2)), ringWidth/2, ringWidth/2, 0, 192, 255, 255);
	g->fillcircle((int)(baseX+cos((endAngle-90)*M_PI/180)*(ringSize-ringWidth/2)), (int)(baseY+sin((endAngle-90)*M_PI/180)*(ringSize-ringWidth/2)), ringWidth/2, ringWidth/2, 0, 192, 255, 255);

	for (double i = 0; i < 360; i = i + 0.5) {
		if ((baseX+cos((i-90)*M_PI/180)*12) < baseX+12 && baseY+sin((i-90)*M_PI/180)*12 < baseY+12)
			g->blendpixel((int)(baseX+cos((i-90)*M_PI/180)*12), (int)(baseY+sin((i-90)*M_PI/180)*12), 0, 0, 0, 255);
	}
	g->drawrect(baseX-17, baseY-17, 34, 34, 0, 0, 0, 255);
}

Spinner::~Spinner() {}
