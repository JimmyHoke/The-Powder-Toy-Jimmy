--Fail safe protection module v2.0
function warningmsg()
gfx.drawRect(177,367,330,14,255,0,0,255)
if tpt.mousex >176 and tpt.mousex <= 505 and tpt.mousey > 367 and tpt.mousey <= 380 then
gfx.fillRect(177,367,330,14,255,20,20,80)
else
gfx.fillRect(177,367,330,14,255,20,20,30)
end
gfx.drawText(180,370,"Fail safe: Uh oh something went wrong, click here to reset the mod!",255,0,0,255)
end

function warningmsgclick()
gfx.drawRect(177,367,300,14,255,0,0,255)
if tpt.mousex >176 and tpt.mousex <= 505 and tpt.mousey > 367 and tpt.mousey <= 380 then
os.remove("dlf3.txt")
os.remove("scripts/downloaded/2 LBPHacker-TPTMulti.lua")
os.remove("scripts/downloaded/219 Maticzpl-Notifications.lua")
os.remove("scripts/autorunsettings.txt")
platform.restart()
end
return false
end

if failsafe == nil then
event.register(event.tick, warningmsg)
event.register(event.mousedown, warningmsgclick)
end

