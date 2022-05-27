if failsafe == nil then
function warningmsg()
gfx.drawRect(177,367,340,14,255,0,0,255)
gfx.fillRect(177,367,340,14,255,0,0,50)
gfx.drawText(180,370,"Failed to perform startup checks, click the reset button to restore.",255,0,0,255)
end
local failtoggle = Button:new(419,408,50,15, "Reset", "Reset mod to original state")
tpt.register_step(warningmsg)
interface.addComponent(failtoggle)
failtoggle:action(function(sender)
os.remove("scripts/updatedmp.lua")
os.remove("updatedmp.lua")
os.remove("dlf3.txt")
os.remove("scripts/downloaded/2 LBPHacker-TPTMulti.lua")
os.remove("scripts/downloaded/219 Maticzpl-Notifications.lua")
os.remove("scripts/autorunsettings.txt")
platform.restart()
end)
end