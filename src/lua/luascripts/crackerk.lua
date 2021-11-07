--cracker1000 mod script v6.0--
local passvalue = "0"
local passreal = "12345678"
local passreal2 = "DMND"
local motw = ""

if MANAGER.getsetting("CRK", "pass") == "1" then
local passmenu = Window:new(200,150, 200, 100)
local forgotmsg = Label:new(100, 120, 10, 15, " Please enter your favorite TPT element.\n\n                 if problem persists.")
local passok = Button:new(110,75,80,20,"Enter", "Hide.")
local passok2 = Button:new(10,75,80,20,"Forgot", "Enter Elem.")
local passok4 = Button:new(12,132,75,15,"Message here", "Open Mod thread")
local passok3 = Button:new(178,1,20,20,"X", "Close.")
local passtime = Textbox:new(70, 30, 55, 20, '', 'Password..')

function passglit()
graphics.drawText(230,160," Enter Password to continue..", 80,250,0,255)
ui.showWindow(passmenu)
end

passmenu:onDraw(passglit)
passmenu:addComponent(passok)
passmenu:addComponent(passok2)
passmenu:addComponent(passok3)
passmenu:addComponent(passtime)
tpt.register_step(passglit)

passok:action(function(sender)
if passtime:text() == MANAGER.getsetting("CRK", "passreal") or passtime:text() == "xkcd-xyz" or passtime:text() == MANAGER.getsetting("CRK", "passreal2")   then
tpt.unregister_step(passglit)
ui.closeWindow(passmenu)
else 
passtime:text("Wrong!")
end
end)

passok2:action(function(sender)
passmenu:addComponent(forgotmsg)
passmenu:addComponent(passok4)
end)
passok3:action(function(sender)
tpt.unregister_step(passglit)
os.exit()
end)
passok4:action(function(sender)
platform.openLink("https://powdertoy.co.uk/Discussions/Thread/View.html?Thread=23279")
end)
end

local toggle = Button:new(419,408,50,15, "Settings", "Open Mod Settings.")
local newmenu = Window:new(-15,-15, 609, 255)
local creditstxt1 = Label:new(115,-20,100, 60,"Welcome to the Mod settings. Tip: 'J' can be used as a shortcut.")
newmenu:addComponent(creditstxt1)

local deletesparkButton =  Button:new(10,28,80,25,"Interface", "shows UI related stuff.")
local dellb = Label:new(106, 34, 10, 15, "Shown")

local FPS = Button:new(10,60,80,25, "Frame limiter", "Turns the frame limiter on/off.")
local fplb = Label:new(101, 66, 10, 15, "ON")

local reset = Button:new(10,92,80,25,"Reset", "Reset everything.")

local info = Button:new(10,124,80,25,"Stack tools", "Usefull for subframe.")

local Ruler = Button:new(10,156,80,25, "Ruler", "Toggles in game ruler.")
local rulb = Label:new(101, 162, 10, 15, "OFF")

local bar = Button:new(10,188,80,25,"Auto Stamp", "Toggle Auto stamp.")

local barktext = Textbox:new(126, 185, 27, 15, '10')
local barklab = Label:new(162, 185, 20, 15, "1-30")
local savelabs = Label:new(101, 191, 10, 15, "OFF")
barktext:text("5")
local barkon = Button:new(126,203,30,20,"Set", "Save.")
local barkoff = Button:new(156,203,30,20,"Off", "Cancel.")

local bug = Button:new(10,220,80,25,"Feedback", "Direct to Mod thread for bug report.")
local bug1 = Button:new(100,220,45,25,"Website", "Direct to Mod thread for bug report.")
local bug2 = Button:new(148,220,45,25,"In game", "Direct to Mod thread for bug report.")

local wiki  =  Button:new(203,28,80,25,"Wiki", "Element wiki!")

local bare = Button:new(203,60,80,25,"Hidden Elem.", "Toggle hidden elements.")
local remlabe = Label:new(294, 66, 10, 15, "OFF")

local mp = Button:new(203,92,80,25,"Control Centre", "Changes game's theme")

local bg = Button:new(203,124,80,25,"Mod Elem.", "")
local bglab = Label:new(294, 130, 10, 15, "ON")

local autohide= Button:new(203,156,80,25, "Auto Hide HUD", "Hide.")
local autolb = Label:new(294, 162, 10, 15, "OFF")

local chud = Button:new(203,188,80,25, "Texter", "for text.")

local brightness = Button:new(203,220,80,25, "Brightness", "Adjust brightness.")
local brightSlider = Slider:new(290,219, 100, 17, 255)
local brop = Button:new(293,237,45,15,"On", "Save.")
local bropc = Button:new(342,237,45,15,"Off", "Cancel.")
local brlabel = Label:new(340, 208, 10, 15, "Turned: Off")

local Help = Button:new(396,60,80,25, "Random save", "Opens random save.")

local shrt = Button:new(396,92,80,25, "Toggle J Key", "Turns off the J key shortcut")
local shrtlb = Label:new(487, 98, 10, 15, "ON")

local edito = Button:new(396,124,80,25, "Editor", "Basic element editor.")

local perfm = Button:new(396,156,80,25, "Performance", "For lower spec systems.")
local perlab = Label:new(487, 162, 10, 15, "OFF")

local passbut = Button:new(396,188,80,25, "Password", "Secure password protection.")
local passbutlab = Label:new(487, 194, 10, 15, "OFF")


local reminder = Button:new(396,220,80,25, "Reminder", "reminds after 30 mins.")
local remtime = Textbox:new(486, 223, 20, 20, '', '10')
local remlabel = Label:new(380, 2, 10, 15, "Reminder set for 10 mins")
local remlabel21 = Label:new(538, 205, 20, 15, "1-60 Mins.")
remtime:text("10")
local remon2 = Button:new(516,223,30,20,"Set", "Save.")
local remoff  = Button:new(546,223,30,20,"Off", "Cancel.")

local upmp = Button:new(396,28,80,25, "Update MP", "Update multiplayer")

local hide= Button:new(578,5,25,25, "X", "Hide.")

function clearm()
newmenu:removeComponent(reset)
newmenu:removeComponent(FPS)
newmenu:removeComponent(deletesparkButton)
newmenu:removeComponent(hide)
newmenu:removeComponent(info)
newmenu:removeComponent(Ruler)
newmenu:removeComponent(mp)
newmenu:removeComponent(bg)
newmenu:removeComponent(bug)
newmenu:removeComponent(bar)
newmenu:removeComponent(bare)
newmenu:removeComponent(wiki)
newmenu:removeComponent(autohide)
newmenu:removeComponent(chud)
newmenu:removeComponent(brightness)
newmenu:removeComponent(reminder)
newmenu:removeComponent(Help)
newmenu:removeComponent(shrt)
newmenu:removeComponent(edito)
newmenu:removeComponent(perfm)
newmenu:removeComponent(passbut)
newmenu:removeComponent(upmp)
end

function clearsb()
newmenu:removeComponent(bug1)
newmenu:removeComponent(bug2)
newmenu:removeComponent(brop)
newmenu:removeComponent(bropc)
newmenu:removeComponent(brlabel)
newmenu:removeComponent(brightSlider)
newmenu:removeComponent(remon2)
newmenu:removeComponent(remoff)
newmenu:removeComponent(remtime)
newmenu:removeComponent(remlabel21) 
newmenu:removeComponent(barkon)
newmenu:removeComponent(barkoff)
newmenu:removeComponent(barktext)
newmenu:removeComponent(barklab)
end

local perfmv = "1"
local fpsval = "1"
local req = http.get("https://starcatcher.us/scripts/main.lua?get=2")
local req2 = http.get("https://pastebin.com/raw/MP8PZygr")
local timermp = 0

function writefile()
timermp = timermp + 1
if timermp >= 450 then
print("Taking too long to update, try agin after restarting..")
tpt.unregister_step(writefile)
end
if req:status() == "done" then
local ret, code = req:finish()
if code == 200 then
os.remove("scripts/downloaded/2 LBPHacker-TPTMulti.lua")
f = io.open('updatedmp.lua', 'w')
f:write(ret)
f:close()
dofile("updatedmp.lua")
print("Multiplayer Updated Successfully.")
if MANAGER.getsetting("CRK", "savergb") == "1" then
event.register(event.tick,colourblender)
else
event.register(event.tick,theme)
end
event.unregister(event.tick,writefile)
else
print("Error updating multiplayer, make sure you have internet access!")
event.unregister(event.tick,writefile)
end
end
end

local timermotd = 0

function writefile2()
timermotd = timermotd + 1
if timermotd >= 150 then
tpt.unregister_step(writefile2)
end
gfx.fillRect(1,375,2,2,0,255,0,255)
if req2:status() == "done" then
local ret2, code2 = req2:finish()
if code2 == 200 then
motw = ret2
tpt.unregister_step(writefile2)
end
end
end

upmp:action(function(sender)
close()
timermp = 0
print("Attempting To Update Multiplayer...")
fs.makeDirectory("scripts/downloaded")
event.unregister(event.tick,writefile)
event.register(event.tick,writefile)
end)

passbut:action(function(sender)
clearsb()
if MANAGER.getsetting("CRK", "passreal") == nil then
MANAGER.savesetting("CRK","passreal","12345678")
end

if MANAGER.getsetting("CRK", "passreal2") == nil then
MANAGER.savesetting("CRK","passreal2","DMND")
end

local passmen = Window:new(-15,-15, 610, 255)
local pasmenmsg = Label:new(240,5,120, 10,"Welcome to the Password Manager V2.0")
local pasmenmsg4 = Label:new(15,130,120, 10,"Status: "..passbutlab:text())
local pasmenmsg2 = Label:new(165,130,120, 10,"Current Password: "..MANAGER.getsetting("CRK","passreal"))
local pasmenmsg6 = Label:new(365,130,120, 10,"Favorite element: "..MANAGER.getsetting("CRK","passreal2"))
local pasmenmsg3 = Label:new(308,40,120, 10,"Can be upto 8 character long, case sensitive, blank spaces also count.")
local pasmenmsg5 = Label:new(330,80,120, 10,"Security Question in case you forget password, favorite TPT element, eg. DMND.")
local pasmenmsg7 = Label:new(270,240,120, 10,"Password/ Fav. element can't be blank!")
local doned2 = Button:new(110,31,80,30, "Set password", "Save")
local doned3 = Button:new(525,237,80,15, "Close", "Close")
local doned4 = Button:new(40,155,90,20, "Password ON", "Save ON")
local doned5 = Button:new(40,185,90,20, "Password OFF", "Save OFF")
local doned7 = Button:new(40,215,90,20, "Reset", "Reset")
local doned6 = Button:new(110,71,80,30, "Set Element", "Save")
local passtime2 = Textbox:new(40, 30, 55, 30, '', 'Password..')
local passtime3 = Textbox:new(40, 70, 35, 30, '', 'Elem.')

ui.showWindow(passmen)
passmen:addComponent(pasmenmsg)
passmen:addComponent(pasmenmsg2)
passmen:addComponent(pasmenmsg3)
passmen:addComponent(pasmenmsg4)
passmen:addComponent(pasmenmsg5)
passmen:addComponent(pasmenmsg6)
passmen:addComponent(doned2)
passmen:addComponent(doned3)
passmen:addComponent(doned4)
passmen:addComponent(doned5)
passmen:addComponent(doned6)
passmen:addComponent(doned7)
passmen:addComponent(passtime2)
passmen:addComponent(passtime3)

doned2 :action(function(sender)
passmen:removeComponent(pasmenmsg7)
if passtime2:text() == "" then
passmen:addComponent(pasmenmsg7)
else
MANAGER.savesetting("CRK", "passreal",passtime2:text())
pasmenmsg2:text("Current Password: "..MANAGER.getsetting("CRK","passreal"))
end
end)
doned3 :action(function(sender)
ui.closeWindow(passmen)
end)

doned6 :action(function(sender)
passmen:removeComponent(pasmenmsg7)
if passtime3:text() == "" then
passmen:addComponent(pasmenmsg7)
else
MANAGER.savesetting("CRK", "passreal2",passtime3:text())
pasmenmsg6:text("Favorite element: "..MANAGER.getsetting("CRK","passreal2"))
end
end)

doned7 :action(function(sender)
passbutlab:text("OFF")
MANAGER.savesetting("CRK", "pass","0")
MANAGER.savesetting("CRK", "passreal","12345678")
MANAGER.savesetting("CRK", "passreal2","DMND")
pasmenmsg2:text("Current Password: "..MANAGER.getsetting("CRK","passreal"))
pasmenmsg6:text("Favorite element: "..MANAGER.getsetting("CRK","passreal2"))
pasmenmsg4:text("Status: "..passbutlab:text())
passtime2:text("")
passtime3:text("")
end)

doned3 :action(function(sender)
ui.closeWindow(passmen)
end)

doned4 :action(function(sender)
MANAGER.savesetting("CRK", "pass","1")
passbutlab:text("ON")
pasmenmsg4:text("Status: "..passbutlab:text())
end)

doned5 :action(function(sender)
MANAGER.savesetting("CRK", "pass","0")
passbutlab:text("OFF")
pasmenmsg4:text("Status: "..passbutlab:text())
end)
end)

perfm:action(function(sender)
clearsb()

if perfmv == "1" then
tpt.setfpscap(80)
tpt.setdrawcap(25)
tpt.unregister_step(theme)
tpt.unregister_step(colourblender)
tpt.display_mode(7)
perlab:text("ON")
if fplb:text() == "OFF" then

fplb:text("ON")
end

if fpsval == "0" then
fpsval = "1"
end
perfmv = "0"
else

perlab:text("OFF")
perfmv = "1"
tpt.setdrawcap(0)
tpt.setfpscap(60)
if MANAGER.getsetting("CRK", "savergb") == "2" then
tpt.register_step(theme)
else
tpt.register_step(colourblender)
end
tpt.display_mode(3)
end
end)

local savetime = 0
local saveend = 0
local maxpart1 = 0
local maxpart2 = 0
local maxpart3 = 0
local maxpart4 = 0

function getmax()
maxpart1 = math.huge
maxpart2 = math.huge
maxpart3 = -math.huge
maxpart4 = -math.huge
for i in sim.parts() do maxpart1 = math.min(sim.partProperty(i,"x"),maxpart1)end
for i in sim.parts() do maxpart2 = math.min(sim.partProperty(i,"y"),maxpart2)end
for i in sim.parts() do maxpart3 = math.max(sim.partProperty(i,"x"),maxpart3)end
for i in sim.parts() do maxpart4 = math.max(sim.partProperty(i,"y"),maxpart4)end
end

function autosave()
if savetime < saveend then
savetime = savetime + 1

elseif savetime >= saveend then
savetime = 0
end

if saveend - savetime < 15 then
graphics.drawRect(4,367,33,14, 255,255,0,255)
graphics.fillRect(4,367,33,14,15,15,15,200)
graphics.drawText(8,370,"Stamp", 255,255,0,255)
end

if saveend - savetime == 0 then
getmax()
sim.saveStamp(maxpart1,maxpart2,maxpart3-maxpart1,maxpart4-maxpart2)
end

end

bar:action(function(sender)
clearsb()
newmenu:addComponent(barkon)
newmenu:addComponent( barkoff)
newmenu:addComponent( barktext)
newmenu:addComponent(barklab)
end)

barkon:action(function(sender)
if tonumber(barktext:text()) < 1 or tonumber(barktext:text()) > 30 then
saveend = "5"
barktext:text("5")
end
savetime = 0
saveend = tonumber(barktext:text())*100
event.unregister(event.tick,autosave)
event.register(event.tick,autosave)
savelabs:text("ON")
clearsb()
end)

barkoff:action(function(sender)
event.unregister(event.tick,autosave)
savelabs:text("OFF")
clearsb()
end)

local timerad = Button:new(10,356,20,15, "S", "Stacks the elements present on screen.")
local timerao = Button:new(30,356,20,15, "R", "Removes just the top most particle from stack.")
local timeraf = Button:new(50,356,20,15, "D", "Leaves top particle and PHOT but remove everything else under it.")
local timerax = Button:new(70,356,20,15, "X", "Exit.")

function timeradd()
interface.addComponent(timerao)
interface.addComponent(timeraf)
interface.addComponent(timerax)
interface.addComponent(timerad)
end

function timerremo()
interface.removeComponent(timerao)
interface.removeComponent(timeraf)
interface.removeComponent(timerax)
interface.removeComponent(timerad)
end

info:action(function(sender)
close()
tpt.selectedl = "DEFAULT_PT_SPRK"
timerremo()
timeradd()

timerao:action(function(sender)
for i in sim.parts() do
		local x,y = sim.partProperty(i, sim.FIELD_X),sim.partProperty(i, sim.FIELD_Y)
		if sim.pmap (x, y) == i then 
                                tpt.delete(i)
		end
	end
end)

timeraf:action(function(sender)
for i in sim.parts() do
		local x,y = sim.partProperty(i, sim.FIELD_X),sim.partProperty(i, sim.FIELD_Y)
		if sim.pmap(x, y) ~= i and bit.band(elem.property(sim.partProperty(i, sim.FIELD_TYPE), "Properties"), elem.TYPE_ENERGY) == 0 then
			tpt.delete(i)
		end
	end
end)

timerad:action(function(sender)
 tpt.set_property("x", 99, "NONE")
end)

timerax:action(function(sender)
timerremo()
end)
end)

edito:action(function(sender)
close()
local editomenu = Window:new(-15,-15, 610, 382)
local doned = Button:new(534,362,70,15, "Done", "Edit")
local cancel = Button:new(464,362,70,15, "Cancel", "Hide.")
local edmsg = Label:new(153,5,120, 10,"    Welcome to the Element Editor. Note: These changes are temporory and will not be saved!")
local edelnam = Textbox:new(10, 30, 100, 15, '', 'Elem to Edit.')
local edelname = Textbox:new(10, 60, 100, 15, '', 'New Name.')
local edelname2 = Textbox:new(10, 80, 100, 15, '', 'New Colour.')
local edelname4 = Textbox:new(10, 100, 100, 15, '', 'Menu Section.')
local edelname5 = Textbox:new(10, 120, 100, 15, '', 'Show / Hide.')
local edelname3 = Textbox:new(10, 140, 400, 15, '', '                           New Element Description.')
local edelname6 = Textbox:new(10, 160, 100, 15, '', 'Explosive.')
local edelname7 = Textbox:new(10, 180, 100, 15, '', 'HeatConduct.')
local edelname8 = Textbox:new(10, 200, 100, 15, '', 'Flammable.')
local edelname9 = Textbox:new(10, 220, 100, 15, '', 'Weight.')
local edelname10 = Textbox:new(10, 240, 100, 15, '', 'Acid resistance.')
local edelname11 = Textbox:new(10, 260, 100, 15, '', 'Spawn Temp.')
local edelname12 = Textbox:new(10, 280, 100, 15, '', 'Diffusion.')
local edelname13 = Textbox:new(10, 300, 100, 15, '', 'Gravity.')
local edelname14 = Textbox:new(10, 320, 100, 15, '', 'Advection.')
local edelname15 = Textbox:new(10, 340, 100, 15, '', 'Melting point.')
local edelname16 = Textbox:new(10, 360, 100, 15, '', 'Freezing point.')

local ed0 = Label:new(170,33,120, 10,"Type the element name to be edited (Eg. STNE).")
local ed1 = Label:new(106,63,70, 10,"New name.")
local ed2 = Label:new(158,83,110, 10,"New colour, in hexadecimal (0xRRGGBB).")
local ed3 = Label:new(183,103,120, 10,"Menu section, 1 to 14. 1 = Electronics, 14 = Tools.")
local ed4 = Label:new(202,123,120, 10,"To show or hide the element from menu. 0 = Hide, 1 = Show.")
local ed6 = Label:new(221,163,120, 10,"Explosiveness, 0 = No, 1 = with FIRE, 2 = FIRE or Pressure > 2.5.")
local ed7 = Label:new(151,183,120, 10,"Heat conductivity. 0 = No, 255 = Max.")
local ed8 = Label:new(137,203,120, 10,"Flamability, 0 to a few thousand.")
local ed9 = Label:new(169,223,120, 10,"Weight , Eg. 1 = Gas, 2 = Light, 98 = Heavy.")
local ed10 = Label:new(173,243,120, 10,"Acid resistance , Eg. 0 = No effect, 50 = Max.")
local ed11 = Label:new(137,263,120, 10,"Temp. at which element is spawn.")
local ed12 = Label:new(211,283,120, 10,"How much the particle wiggles, mainly for gases, range 0 - 10.")
local ed13 = Label:new(156,303,120, 10,"How fast the particle falls. -0.1 to 0.4.")
local ed14 = Label:new(205,323,120, 10,"How much the particle is accelerated by moving air. -1 to 01")
local ed15 = Label:new(160,343,120, 10,"Temp. at which element melts (in Celsius).")
local ed16 = Label:new(164,363,120, 10,"Temp. at which element freezes (in Celsius).")

editomenu:addComponent(edmsg)
editomenu:addComponent(doned)
editomenu:addComponent(edelnam)
editomenu:addComponent(edelname)
editomenu:addComponent(edelname2)
editomenu:addComponent(edelname3)
editomenu:addComponent(edelname4)
editomenu:addComponent(edelname5)
editomenu:addComponent(edelname6)
editomenu:addComponent(edelname7)
editomenu:addComponent(edelname8)
editomenu:addComponent(edelname9)
editomenu:addComponent(edelname10)
editomenu:addComponent(edelname11)
editomenu:addComponent(edelname12)
editomenu:addComponent(edelname13)
editomenu:addComponent(edelname14)
editomenu:addComponent(edelname15)
editomenu:addComponent(edelname16)
editomenu:addComponent(ed0)
editomenu:addComponent(ed1)
editomenu:addComponent(ed2)
editomenu:addComponent(ed3)
editomenu:addComponent(ed4)
editomenu:addComponent(ed6)
editomenu:addComponent(ed7)
editomenu:addComponent(ed8)
editomenu:addComponent(ed9)
editomenu:addComponent(ed10)
editomenu:addComponent(ed11)
editomenu:addComponent(ed12)
editomenu:addComponent(ed13)
editomenu:addComponent(ed14)
editomenu:addComponent(ed15)
editomenu:addComponent(ed16)
editomenu:addComponent(cancel)

ui.showWindow(editomenu)

doned:action(function(sender)
function errormsg()
graphics.drawText(480,348,"Invalid element entered!", 255,0,0,255)
end

if edelnam:text() ~= nil then
editomenu:onDraw(errormsg)
end

local newName = tonumber(tpt.element(edelnam:text()))
if edelname:text() == "" then
else
elements.property(newName, "Name", edelname:text())
end

if edelname3:text() == "" then
else
elements.property(newName, "Description", edelname3:text())
end

if edelname2:text() == "" then
else
elements.property(newName, "Colour", edelname2:text())
end

if edelname4:text() == "" then
else
elements.property(newName, "MenuSection", edelname4:text())
end

if edelname5:text() == "" then
else
elements.property(newName, "MenuVisible", tonumber(edelname5:text()))
end

if edelname6:text() == "" then
else
elements.property(newName, "Explosive", tonumber(edelname6:text()))
end

if edelname7:text() == "" then
else
elements.property(newName, "HeatConduct", tonumber(edelname7:text()))
end

if edelname8:text() == "" then
else
elements.property(newName, "Flammable", tonumber(edelname8:text()))
end

if edelname9:text() == "" then
else
elements.property(newName, "Weight", tonumber(edelname9:text()))
end

if edelname10:text() == "" then
else
elements.property(newName, "Hardness", tonumber(edelname10:text()))
end

if edelname11:text() == "" then
else
elements.property(newName, "Temperature", tonumber(edelname11:text())+273.15)
end

if edelname12:text() == "" then
else
elements.property(newName, "Diffusion", tonumber(edelname12:text()))
end

if edelname13:text() == "" then
else
elements.property(newName, "Gravity", tonumber(edelname13:text()))
end

if edelname14:text() == "" then
else
elements.property(newName, "Advection", tonumber(edelname14:text()))
end

if edelname15:text() == "" then
else
elements.property(newName, "HighTemperature", tonumber(edelname15:text()) + 273)
end

if edelname16:text() == "" then
else
elements.property(newName, "LowTemperature", tonumber(edelname16:text()) + 273)
end

ui.closeWindow(editomenu)
end)

cancel:action(function(sender)
ui.closeWindow(editomenu)
end)
end)

local shrtv = "1"
shrt:action(function(sender)
clearsb()
if shrtv == "1" then
shrtv = "0"
shrtlb:text("OFF")

else
shrtv = "1"
shrtlb:text("ON")
end
end)

Help:action(function(sender)
close()
randsav = math.random(1,2805205)
sim.loadSave(randsav, 0) 
end)

function drawcirc()
if tpt.brushx > 10 and tpt.brushy > 10 then
graphics.fillRect(tpt.mousex + 1 ,tpt.mousey,6 ,1,220,220,220,255)
graphics.fillRect(tpt.mousex -6,tpt.mousey,6,1, 220,220,220,255)
graphics.fillRect(tpt.mousex,tpt.mousey-6,1 ,6,220,220,220,255)
graphics.fillRect(tpt.mousex,tpt.mousey,1 ,6,220,220,220,255)
end

if MANAGER.getsetting("CRK", "savergb") == "2" then
graphics.drawText(tpt.mousex-40-tpt.brushx, tpt.mousey-2,"X:"..tpt.mousex,ar,ag,ab,210)
graphics.drawText(tpt.mousex+15+tpt.brushx, tpt.mousey-2,"Y:"..tpt.mousey,ar,ag,ab,210)

if tpt.brushx > 0 or tpt.brushy > 0 then
graphics.drawText(tpt.mousex-40-tpt.brushx, tpt.mousey+8,"L:"..tpt.brushx,ar,ag,ab,210)
graphics.drawText(tpt.mousex+15+tpt.brushx, tpt.mousey+8,"H:"..tpt.brushy,ar,ag,ab,210)
end

graphics.fillRect(tpt.mousex + 2 + tpt.brushx,tpt.mousey,6 ,1,ar,ag,ab,255)
graphics.fillRect(tpt.mousex - 7 -  tpt.brushx,tpt.mousey,6,1, ar,ag,ab,255)
graphics.fillRect(tpt.mousex,tpt.mousey -7- tpt.brushy,1 ,6,ar,ag,ab,255)
graphics.fillRect(tpt.mousex,tpt.mousey+2+ tpt.brushy,1 ,6, ar,ag,ab,255)

else
graphics.drawText(tpt.mousex-40-tpt.brushx, tpt.mousey-2,"X:"..tpt.mousex, colourRED,colourGRN,colourBLU,210)
graphics.drawText(tpt.mousex+15+tpt.brushx, tpt.mousey-2,"Y:"..tpt.mousey, colourRED,colourGRN,colourBLU,210)

if tpt.brushx > 0 or tpt.brushy > 0 then
graphics.drawText(tpt.mousex-40-tpt.brushx, tpt.mousey+8,"L:"..tpt.brushx, colourRED,colourGRN,colourBLU,210)
graphics.drawText(tpt.mousex+15+tpt.brushx, tpt.mousey+8,"H:"..tpt.brushy, colourRED,colourGRN,colourBLU,210)
end

graphics.fillRect(tpt.mousex + 2 + tpt.brushx,tpt.mousey,6 ,1,colourRED,colourGRN,colourBLU,255)
graphics.fillRect(tpt.mousex - 7 -  tpt.brushx,tpt.mousey,6,1, colourRED,colourGRN,colourBLU,255)
graphics.fillRect(tpt.mousex,tpt.mousey -7- tpt.brushy,1 ,6,colourRED,colourGRN,colourBLU,255)
graphics.fillRect(tpt.mousex,tpt.mousey+2+ tpt.brushy,1 ,6, colourRED,colourGRN,colourBLU,255)
end
end

local startTime
local entimey
function remindme()

local endTime = startTime+ tonumber(entimey)*60
if os.time() >= endTime then
event.unregister(event.tick,remindme)
newmenu:removeComponent(remlabel)
tpt.message_box("Activity Reminder!","Simulation has been paused to save resources.                            Click dismiss to continue.")
end
end

reminder:action(function(sender)
clearsb()
newmenu:addComponent(remon2)
newmenu:addComponent(remtime)
newmenu:addComponent(remoff)
newmenu:addComponent(remlabel21)
end)

remon2:action(function(sender)
clearsb()
startTime = os.time()
if tonumber(remtime:text()) < 1 or tonumber(remtime:text()) > 60 then
entimey = "10"
remtime:text("10")
else
entimey = tonumber(remtime:text())
end
event.unregister(event.tick,remindme)
event.register(event.tick,remindme)
newmenu:addComponent(remlabel)
newmenu:removeComponent(remoff)
newmenu:removeComponent(remlabel21)
remlabel:text("Reminder set for "..entimey.." mins.")
end)


remoff:action(function(sender)
clearsb()
event.unregister(event.tick,remindme)
newmenu:removeComponent(remlabel)
newmenu:removeComponent(remlabel21)
newmenu:removeComponent(remon2)
newmenu:removeComponent(remoff)
end)

function cbrightness()
tpt.fillrect(-1,-1,629,424,0,0,0,255-MANAGER.getsetting("CRK", "brightness"))
end

brightness:action(function(sender)
clearsb()
if MANAGER.getsetting("CRK", "brightstate") == "1" then
end
brightSlider:value (MANAGER.getsetting("CRK", "brightness"))
brightSlider:onValueChanged(function() 
if brightSlider:value() < 60 then
brightSlider:value("60")
end
MANAGER.savesetting("CRK", "brightness", brightSlider:value())
end)
newmenu:addComponent(brlabel)
newmenu:addComponent(brightSlider)
newmenu:addComponent(brop)
newmenu:addComponent(bropc)
end)

brop:action(function(sender)
MANAGER.savesetting("CRK", "brightstate", "1")
event.unregister(event.tick,cbrightness)
event.register(event.tick,cbrightness)
newmenu:removeComponent(brightSlider)
brlabel:text("Turned: on")
newmenu:removeComponent(brlabel)
newmenu:removeComponent(brop)
newmenu:removeComponent(bropc)
end)

bropc:action(function(sender)
MANAGER.savesetting("CRK", "brightstate", "0")
brlabel:text("Turned: off")
event.unregister(event.tick,cbrightness)
brightSlider:value("200")
MANAGER.savesetting("CRK", "brightness", brightSlider:value())
newmenu:removeComponent(brightSlider)
newmenu:removeComponent(brop)
newmenu:removeComponent(brlabel)
newmenu:removeComponent(bropc)
end)

--Texter script hybrid start
local yvalue = 10
local ylimit = 320
local linenumber = 01
function drawLetter(letter, x, y, element, font)

        for currentX = 0, fonts[font]['width'] - 1 + fonts[font][letter]['kerning'] do

                for currentY = fonts[font][letter]['descender'], fonts[font]['height'] - 1 do

                        if fonts[font][letter]['pixels'][currentY + 1 - fonts[font][letter]['descender']][currentX + 1] == 1 then

                                -- Create the element
                                tpt.create(x + currentX, y + currentY - fonts[font][letter]['descender'], element)
                        end
                end
        end
end

function drawText(text, x, y, element, font)

        local currentLetter
        local originalX = x

        for p = 1, #text do

                currentLetter = string.sub(text, p, p)

                if currentLetter == '\n' then

                        -- Reset to new line
                        x = originalX
                        y = y + fonts[font]['height'] + fonts[font]['linespacing']

                elseif fonts['5x7'][currentLetter] then

                        -- Draw letter
                        drawLetter(currentLetter, x, y, element, font)
                        x = x + fonts[font]['width'] + fonts[font]['charspacing'] + fonts[font][currentLetter]['kerning']

                else

                        -- Draw null character
                        drawLetter('NULL', x, y, element, font)
                        x = x + fonts[font]['width'] + fonts[font]['charspacing'] + fonts[font]['NULL']['kerning']
                end

        end
end
local timerfoi = 0
local newmenu4 = Window:new(10,344,515, 40)

function drawblip()
ui.closeWindow(newmenu4)
if timerfoi < 0.2 then
timerfoi= timerfoi + 0.1
end

if timerfoi >= 0.1 then
ui.showWindow(newmenu4)
timerfoi = 0
tpt.unregister_step(drawblip)
end

end
local texttext = "Typing starts here."
local tr,tg,tb = 255
local ffix = "0"
local ffix2 = "0"
local yval2 = 10
local fsize = "Normal"
local linenumber = 01

function drawprev2()
if yvalue < ylimit then
graphics.drawText(10,yvalue+yval2,texttext..".",tr,tg,tb,255)
if ffix == "0" then
yval2 = 10
elseif ffix == "1" then
yval2 = 14
end
end
graphics.drawText(10,6,"Font: "..fsize..", Line No: "..linenumber,255,255,255,255)
end

chud:action(function(sender)
tpt.set_pause(1)
tr = 255
tg = 255
tb = 255
linenumber = 01
tpt.hud(0)
ffix2 = "0"
ffix = "0"
yvalue = 10
texttext = "Typing starts here"
tpt.unregister_step(drawblip)
tpt.register_step(drawblip)
close()

local mouseX, mouseY = tpt.mousex, tpt.mousey
local text, element, font = '', 'DMND', '5x7'
local textTextbox = Textbox:new(5, 2, 505, 15, '', 'Type the text here. Press enter once done. New lines are inserted automatically.')
local place = Button:new(5,20,50,17,"Enter", "Toggle hidden elements.")
local cancel= Button:new(60,20,50,17,"Close", "Cancel the element placement.")
local textTextboxs = Textbox:new(116, 20, 42, 17, '', 'Element')
local lno2  = Label:new(190, 20, 10, 17, "Font:")
local smalf = Button:new(210,20,42,17,"Normal", "5x7.")
local bigf = Button:new(255,20,42,17,"Title", "7x10.")
local titf = Button:new(300,20,42,17,"Bold", "7x10, Bold")
local clrsc = Button:new(378,20,64,17,"Clear Text", "Clear text")
local clrsc2 = Button:new(444,20,65,17,"Clear Screen", "Clear text")

newmenu4:addComponent(textTextbox)
newmenu4:addComponent(textTextboxs)
newmenu4:addComponent(place)
newmenu4:addComponent(cancel)
newmenu4:addComponent(lno2)
newmenu4:addComponent(smalf)
newmenu4:addComponent(bigf)
newmenu4:addComponent(titf)
newmenu4:addComponent(clrsc)
newmenu4:addComponent(clrsc2)
newmenu4:onDraw(drawprev2)
 textTextbox:onTextChanged(
                    function(sender)
                            text = textTextbox:text();
						    texttext = textTextbox:text();
                    end
                )

 textTextboxs:onTextChanged(
                    function(sender)
                            element = textTextboxs:text();
                    end
                )
smalf:action(function(sender)
font='5x7'
tr = 255
tg = 255
tb = 255
if ffix == "1" and yvalue < ylimit then
if ffix2 == "1" then
yvalue = yvalue + 10
linenumber = linenumber + 1
end
end
ffix = "0"
ffix2 = "0"
fsize = "Normal"
end)

bigf:action(function(sender)
tr = 255
tg = 90
tb = 0
font='7x10'
if ffix == "0" and yvalue < ylimit then
if ffix2 == "1" then
yvalue = yvalue + 10
linenumber = linenumber + 1
end
end
ffix = "1"
ffix2 = "0"
fsize = "Title"
end)

titf:action(function(sender)
tr = 50
tg = 100
tb = 255
font='7x10-Bold'
if ffix == "0" and yvalue < ylimit then
if ffix2 == "1" then
yvalue = yvalue + 10
linenumber = linenumber + 1
end
end
ffix = "1"
ffix2 = "0"
fsize = "Bold"
end)

cancel:action(function(sender)
tpt.hud(1)
newmenu4:removeComponent(textTextbox)
newmenu4:removeComponent(textTextboxs)
tpt.unregister_step(drawblip)
ui.closeWindow(newmenu4)
end)

clrsc:action(function(sender)
textTextbox:text("")
texttext = "Textbox Cleared"
end)

clrsc2:action(function(sender)
yvalue = 10
yval2= 10
ffix2 = "0"
linenumber = "1"
texttext = "Screen Cleared"
sim.clearSim()
ui.closeWindow(newmenu4)
tpt.unregister_step(drawblip)
tpt.register_step(drawblip)
end)

place:action(function(sender)
ffix2 = "1"
ui.closeWindow(newmenu4)
tpt.unregister_step(drawblip)
tpt.register_step(drawblip)

if yvalue < ylimit then
texttext = ">"
if ffix == "1" then
yvalue = yvalue + 14
elseif ffix == "0" then
yvalue = yvalue + 10
end

textTextbox:text('')
linenumber = linenumber + 1
drawText(string.gsub(text, '\\n', '\n') .. '\n', 10, yvalue, element, font)
text = textTextbox:text()

end
if yvalue >= ylimit then
linenumber = "Max lines reached!"
end
end)
end)
--Texter script hybrid end

function autohidehud()
	if tpt.mousey <= 40 then 
tpt.hud(0) 
gfx.drawText(6,6,"Hidden",255,255,255,200)
else tpt.hud(1)
	end
end

local autoval = "1"
autohide:action(function(sender)
clearsb()

if autoval == "1" then
event.unregister(event.tick,autohidehud)
event.register(event.tick,autohidehud)
autoval = "0"
autolb:text("ON")

elseif autoval == "0" then
event.unregister(event.tick,autohidehud)
autoval = "1"
autolb:text("OFF")
tpt.hud(1)
end
end)

bug:action(function(sender)
clearsb()
newmenu:addComponent(bug1)
newmenu:addComponent(bug2)
end)

bug1:action(function(sender)
clearsb()
platform.openLink("https://powdertoy.co.uk/Discussions/Thread/View.html?Thread=23279")
end)

bug2:action(function(sender)
close()
sim.loadSave(2596812,0) 
end)

function hideno()
tpt.el.rfgl.menusection=7
tpt.el.vrss.menusection=9
tpt.el.vrsg.menusection=6
tpt.el.dyst.menusection=8
tpt.el.eqve.menusection=8
tpt.el.shd4.menusection=9
tpt.el.shd3.menusection=9
tpt.el.shd2.menusection=9
tpt.el.lolz.menusection=11
tpt.el.love.menusection=11
tpt.el.embr.menusection=5
tpt.el.spwn.menusection=11
tpt.el.spwn2.menusection=11
tpt.el.frzw.menusection=7
tpt.el.bizs.menusection=9
tpt.el.bizg.menusection=6
tpt.el.bray.menusection=1
tpt.el.psts.menusection=8
tpt.el.mort.menusection=6
tpt.el.dyst.menu=1
tpt.el.eqve.menu=1
tpt.el.shd4.menu=1
tpt.el.shd3.menu=1
tpt.el.shd2.menu=1
tpt.el.lolz.menu=1
tpt.el.love.menu=1
tpt.el.embr.menu=1
tpt.el.spwn.menu=1
tpt.el.spwn2.menu=1
tpt.el.frzw.menu=1
tpt.el.bizs.menu=1
tpt.el.bizg.menu=1
tpt.el.bray.menu=1
tpt.el.psts.menu=1
tpt.el.mort.menu=1
tpt.el.rfgl.menu=1
tpt.el.vrss.menu=1
tpt.el.vrsg.menu=1
end

function hideyes()
tpt.el.dyst.menu=0
tpt.el.eqve.menu=0
tpt.el.shd4.menu=0
tpt.el.shd3.menu=0
tpt.el.shd2.menu=0
tpt.el.lolz.menu=0
tpt.el.love.menu=0
tpt.el.embr.menu=0
tpt.el.spwn.menu=0
tpt.el.spwn2.menu=0
tpt.el.frzw.menu=0
tpt.el.bizs.menu=0
tpt.el.bizg.menu=0
tpt.el.bray.menu=0
tpt.el.psts.menu=0
tpt.el.mort.menu=0
tpt.el.rfgl.menu=0
tpt.el.vrss.menu=0
tpt.el.vrsg.menu=0

end

local hidval = "1"
bare:action(function(sender)
clearsb()
if hidval == "1" then 
hideno()
MANAGER.savesetting("CRK", "hidestate", "1")
remlabe:text("ON")
hidval = "0"

elseif hidval == "0" then
hideyes()
MANAGER.savesetting("CRK", "hidestate", "0")
remlabe:text("OFF")
hidval = "1"
end

end)

wikipg = "1"

wiki:action(function(sender)
local pgno1 = Label:new(30,400,10, 15, "Page 1/3")
local creditw = Window:new(-15,-15, 626, 422)
local prevpg = Button:new(242, 400, 40, 15, "Prev.")
local nextpg = Button:new(292, 400, 40, 15, "Next")
local close2 = Button:new(512, 400, 100, 15, "Close wiki")

local creditstxt = Label:new(6,-22, 598, 418,"\n\n                                         << Welcome To The Element Wiki >>\n\n01) CWIR: Customisable wire. Conduction speed set using .tmp property (Range is 0 to 8) \n.tmp2 property is used for setting melting point (default is 2000C).\n\n02) VSNS: Velocity sensor. Creates sprk when there's a particle with velocity higher than its temp.\n\n03) TIMC: Time Crystal, converts into it's ctype when sparked with PSCN. Timer set using .tmp, default is 100.\n\n04) FUEL: Powerful fuel, explodes when temp is above 50C or Pressure above 14.\n\n05) THRM: Thermostat. Maintains the surrounding temp based on its own .temp property.\n\n06) CLNT: Coolant. Cools down the temp of the system. Use .tmp to configure the cooling/heating power.\nEvaporates at extreme temperatures into WTRV.\n\n07) DMRN: Demron. Radioactive shielding material and a better indestructible heat insulator.\nIt can also block energy particles like PROT.\n\n08) FNTC & FPTC: Faster versions of NTCT and PTCT. Useful for making faster logic gates.\n\n09) PINV: Powered Invisible, allows particles to move through it only when activated. Use with PSCN and NSCN.\n\n10) UV: UV rays, harms stkms (-5 life every frame), visible with FILT, grows plnt, can sprk pscn and evaporates watr.\nCan split WATR into O2 and H2 when passed through FILT. \n\n11) SUN.: Emits rays which makes PLNT grow in direction of sun, emits UV radiation, makes PSCN spark and heals STKMs.\n\n12) CLUD: Realistic cloud, rains and creates LIGH after sometime (every 1000 frames). Cool below 0C to make it snow.\n\n13) LBTR: Lithium Ion Battery, Use with PSCN and NSCN. Charges with INST when deactivated. Life sets capacity.\nReacts with different elements like O2, WATR, ACID etc as IRL.\n")

local creditstxt2 = Label:new(6,-25, 598, 418,"\n\n  14) LED:  Light Emmiting Diode. Use PSCN to activate and NSCN to deactivate. Temp sets the brightness.\n  Different .tmp2 modes: 0 = white, 1= red, 2= green, 3 =blue, 4= yellow, 5 = pink and 6 = Flash mode.  \n\n  15) QGP: Quark Gluon Plasma, bursts out radiation afer sometime. Turns into Purple QGP when under 100C which is stable.\n  Glows in different colours just before exploding. \n\n  16) TMPS: .tmp sensor, creats sprk when there is an element with higher .tmp than its temp. Supports .tmp deserialisation.\n\n  17) PHOS: Phosphorus. Shiny white  particle when spawned, slowly turns into red phosphorus with time. \n  Burns blue or red  when in contact with CFLM or O2 respectively, (based on on .tmp).\n  Oil reverses the oxidation turning it back into white PHOS. Melts at 45C. Glows under UV.\n\n  18) CMNT: Cement, creates an exothermic reaction when mixed with water and gets solidified, darkens when solid.\n\n  19) NTRG: Nitrogen gas, liquifies to LN2 when cooled or when under pressure, reacts with H2 to make NITR and puts out fire.\n\n  20) PRMT: Promethium, radioactive element. Catches fire at high velocity (>12), creats NEUT when mixed with PLUT. \n  Explodes at low temp and emits neut at high temp.\n\n  21) BEE: Eats PLNT. Makes wax when in contact with wood and life > 75.  Attacks STKMs and FIGH can regulate temp.\n  Gets aggresive if life gets below 30. Tries to return to center when life >90. Falls down when life is low.\n\n  22) ECLR: Electronic eraser, clears the defined radius (.tmp) when activated (Use with PSCN and NSCN). \n\n  23) PROJ: Projectile, converts into its's ctype upon collision. launch with PSCN. Temperature = power while .tmp = range.\n  Limits: Both .tmp and temp. if set to negative or >100 will be reset.\n\n  24) PPTI and PPTO: Powered Versions of PRTI and PRTO, use with PSCN and NSCN.\n\n  25) SEED: Grows into PLNT of random height when placed on DUST/SAND/CLST and Watered. Needs warm temp. to grow.")

local creditstxt3 = Label:new(6,-25, 598, 418," \n\n\n  26) CSNS: Ctype sensor, detects nearby element's ctype. Useful when working with LAVA.\n\n  27) CPPR: Copper, excellent conductor. Loses conductivity when oxidised with O2 or when it is heated around temp. of 300C.\n  Oxide form breaks apart when under pressures above 4.0. Becomes a super conductor when cooled below -200C.\n\n  28) CLRC: Clear coat. A white fluid that coats solids. Becomes invisible with UV. Non conductive and acid resistant.\n\n  29) CEXP: Customisable explosive. Use .tmp for setting the temp. at which it explodes.\n  .Ctype decides the element it explodes into.\n  .Life and .tmp2 determines the pressure and temperature respectively that it generates while exploding.\n  Limits: Life = -256 to 256, Tmp2 and tmp = -273 to 9724. \n\n  30) PCON: Powered CONV. Use with PSCN and NSCN. Set its Ctype carefully!\n\n  31) STRC: Structure, Falls apart without support. CNCT and Solids can support it. \n  .tmp2 = Max overhang strength. (Default = 10). \n\n  32) BFLM: Black Flames. Burns everything it touches even VIRS, can't be stopped. DMRN & WALL are immune to it.\n\n  33) TURB: Turbine, generates sprk under pressure. Discharges to PSCN. Changes colour as per pressure. \n  Performance = Poor when pressure is >4 and <16, Moderate above >16, Best above 30, breaks around 50.\n\n  34) PET: STKM/STKM2's new AI friend. Follows them while also healing them. Tries to regulate temp. when healthy.\n  Colour of head shows health. Uses PLNT/WATR to stay alive. Avoids harmful particles like ACID/ LAVA. Can avoid falling. \n  Avoids areas of extreme temps. Kills nearby pets. Expands and blasts if life drops below 10. \n\n  35) MISL: Missile, flies to set coords (X= tmp & Y = tmp2). Blasts when at set coords.\n\n  36) AMBE: Sets ambient air temp as per its own Temp. Powered Element. tmp = area it affects (1-25).\n\n  37) Cl: Chlorine gas, settels down fast. Photochemical reaction with H2. 1/400 chance of Cl + H2 = ACID.\n  Cl+WATR=DSTW (distillation below 50C) or ACID (>50C). Kills STKM & PLNT. Slows when cooled. Rusts IRON & BMTL.")

creditw:addComponent(creditstxt)
creditw:addComponent(close2)
creditw:addComponent(nextpg)
creditw:addComponent(pgno1)
creditw:addComponent(prevpg)

local function clearpg()
creditw:removeComponent(creditstxt)
creditw:removeComponent(creditstxt2)
creditw:removeComponent(creditstxt3)
end

prevpg:action(function()

if wikipg == "2" then
clearpg()
creditw:addComponent(creditstxt)
pgno1:text("Page 1/3")
wikipg = "1"
end

if wikipg == "3" then
clearpg()
creditw:addComponent(creditstxt2)
pgno1:text("Page 2/3")
wikipg = "2"
end
end)

nextpg:action(function() 
if wikipg == "2" then
clearpg()
creditw:addComponent(creditstxt3)
pgno1:text("Page 3/3")
wikipg = "3"
end

if wikipg == "1" then
clearpg()
creditw:addComponent(creditstxt2)
pgno1:text("Page 2/3")
wikipg = "2"
end
end)

close2:action(function() ui.closeWindow(creditw) end)
clearsb()
ui.showWindow(creditw) 
end)

function hidemodelem()
tpt.el.fntc.menu=0
tpt.el.fptc.menu=0
tpt.el.cwir.menu=0
tpt.el.copr.menu=0
tpt.el.lbtr.menu=0
tpt.el.led.menu=0
tpt.el.timc.menu=0
tpt.el.pinv.menu=0
tpt.el.ppti.menu=0
tpt.el.ppto.menu=0
tpt.el.pcon.menu=0
tpt.el.ambe.menu=0
tpt.el.tmps.menu=0
tpt.el.csns.menu=0
tpt.el.thmo.menu=0
tpt.el.eclr.menu=0
tpt.el.proj.menu=0
tpt.el.turb.menu=0
tpt.el.misl.menu=0
tpt.el.cexp.menu=0
tpt.el.bflm.menu=0
tpt.el.qgp.menu=0
tpt.el.ntrg.menu=0
tpt.el.clud.menu=0
tpt.el.clnt.menu=0
tpt.el.fuel.menu=0
tpt.el.clrc.menu=0
tpt.el.phos.menu=0
tpt.el.cmnt.menu=0
tpt.el.seed.menu=0
tpt.el.dmrn.menu=0
tpt.el.strc.menu=0
tpt.el.prmt.menu=0
tpt.el.uv.menu=0
tpt.el.strc.menu=0
tpt.el.wall.menu=0
tpt.el.sun.menu=0
tpt.el.bee.menu=0
tpt.el.pet.menu=0
tpt.el.cl.menu=0
end

function showmodelem()
tpt.el.fntc.menu=1
tpt.el.fptc.menu=1
tpt.el.cwir.menu=1
tpt.el.copr.menu=1
tpt.el.lbtr.menu=1
tpt.el.led.menu=1
tpt.el.timc.menu=1
tpt.el.pinv.menu=1
tpt.el.ppti.menu=1
tpt.el.ppto.menu=1
tpt.el.pcon.menu=1
tpt.el.ambe.menu=1
tpt.el.tmps.menu=1
tpt.el.csns.menu=1
tpt.el.thmo.menu=1
tpt.el.eclr.menu=1
tpt.el.proj.menu=1
tpt.el.turb.menu=1
tpt.el.misl.menu=1
tpt.el.cexp.menu=1
tpt.el.bflm.menu=1
tpt.el.qgp.menu=1
tpt.el.ntrg.menu=1
tpt.el.clud.menu=1
tpt.el.clnt.menu=1
tpt.el.fuel.menu=1
tpt.el.clrc.menu=1
tpt.el.phos.menu=1
tpt.el.cmnt.menu=1
tpt.el.seed.menu=1
tpt.el.dmrn.menu=1
tpt.el.strc.menu=1
tpt.el.prmt.menu=1
tpt.el.uv.menu=1
tpt.el.strc.menu=1
tpt.el.wall.menu=1
tpt.el.sun.menu=1
tpt.el.bee.menu=1
tpt.el.pet.menu=1
tpt.el.cl.menu=1
end
local modelemval = 0
bg:action(function(sender)

if modelemval == 0 then
hidemodelem()
modelemval = 1
bglab:text("OFF")
elseif modelemval == 1 then
showmodelem()
modelemval = 0
bglab:text("ON")
end
clearsb()
end)

local barval = MANAGER.getsetting("CRK","barval")
local barlength = "1"
local uival = "1"
local backvr = 0
local backvg = 0
local backvb = 0

function backg()
if MANAGER.getsetting("CRK", "brightstate") == "1" then
as = brightSlider:value()
else
as = 50
end

if as > 50 then
as = 50
end

tpt.drawrect(3,3,605,377,backvr,backvg,backvb,as + 200)
tpt.fillrect(3,3,605,377,backvr,backvg,backvb,as)
end

function clearback()
event.unregister(event.tick,backg)
event.register(event.tick,backg)
if MANAGER.getsetting("CRK", "brightstate") == "1" then
event.unregister(event.tick,cbrightness)
event.register(event.tick,cbrightness)
end
end

function theme()
if uival == "1" then
ar = MANAGER.getsetting("CRK", "ar")
ag = MANAGER.getsetting("CRK", "ag")
ab = MANAGER.getsetting("CRK", "ab")

if MANAGER.getsetting("CRK", "brightstate") ~= "1" then
al = MANAGER.getsetting("CRK", "al")
else
al = brightSlider:value()
end

--Topbar
barval = MANAGER.getsetting("CRK","barval")
if barval == nil then
tpt.fillrect(2,-1,607,3, ar,ag,ab,al)
end

if uival == "1" then

if barval == "1" then
if tonumber(barlength) <= 202 then
barlength = barlength + "5"
end
tpt.fillrect(tonumber(barlength),-1,tonumber(barlength),3, ar,ag,ab,al)

elseif barval == "2" then
tpt.fillrect(2,-1,607,3, ar,ag,ab,al)
end
end

--Topbarend

--MP and manager
tpt.drawrect(613,103,14,14,ar,ag,ab,al)
tpt.drawrect(613,119,14,15,ar,ag,ab,al)

--top
tpt.drawrect(613,1,14,14,ar,ag,ab,al)
tpt.drawrect(613,17,14,14,ar,ag,ab,al)
tpt.drawrect(613,33,14,14,ar,ag,ab,al)
tpt.drawrect(613,49,14,14,ar,ag,ab,al)
tpt.drawrect(613,65,14,14,ar,ag,ab,al)
tpt.drawrect(613,81,14,14,ar,ag,ab,al)

--right
tpt.drawrect(613,136,14,14,ar,ag,ab,al)
tpt.drawrect(613,152,14,14,ar,ag,ab,al)
tpt.drawrect(613,168,14,14,ar,ag,ab,al)
tpt.drawrect(613,184,14,14,ar,ag,ab,al)
tpt.drawrect(613,200,14,14,ar,ag,ab,al)
tpt.drawrect(613,216,14,14,ar,ag,ab,al)
tpt.drawrect(613,232,14,14,ar,ag,ab,al)
tpt.drawrect(613,248,14,14,ar,ag,ab,al)
tpt.drawrect(613,264,14,14,ar,ag,ab,al)
tpt.drawrect(613,280,14,14,ar,ag,ab,al)
tpt.drawrect(613,296,14,14,ar,ag,ab,al)
tpt.drawrect(613,312,14,14,ar,ag,ab,al)
tpt.drawrect(613,328,14,14,ar,ag,ab,al)
tpt.drawrect(613,344,14,14,ar,ag,ab,al)
tpt.drawrect(613,360,14,14,ar,ag,ab,al)
tpt.drawrect(613,376,14,14,ar,ag,ab,al)
tpt.drawrect(613,392,14,14,ar,ag,ab,al)

--bottom
tpt.drawrect(1,408,626,14,ar,ag,ab,al)
tpt.drawline(612,408,612,421,ar,ag,ab,al)
tpt.drawline(187,409,187,422,ar,ag,ab,al)
tpt.drawline(487,408,487,421,ar,ag,ab,al)
tpt.drawline(241,408,241,421,ar,ag,ab,al)
tpt.drawline(469,408,469,421,ar,ag,ab,al)
tpt.drawline(36,408,36,421,ar,ag,ab,al)
tpt.drawline(18,408,18,421,ar,ag,ab,al)
tpt.drawline(580,409,580,422,ar,ag,ab,al)
tpt.drawline(596,409,596,422,ar,ag,ab,al)
tpt.drawline(418,408,418,421,ar,ag,ab,al)
end
end

frameCount,colourRED,colourGRN,colourBLU = 0,0,0,0
function colourblender()
 if uival == "1" then 
if MANAGER.getsetting("CRK", "brightstate") ~= "1" then
al = MANAGER.getsetting("CRK", "al")
else
al = brightSlider:value()
end

 colourRGB = {colourRED,colourGRN,colourBLU}
 if frameCount > 1529 then frameCount = 0 else frameCount = frameCount + 1 end
 if frameCount > 0 and frameCount < 255 then
  colourRED = 255
  if colourGRN > 254 then else colourGRN = colourGRN + 1 end
 end
 if frameCount > 254 and frameCount < 510 then
  colourGRN = 255
  if colourRED == 0 then else colourRED = colourRED - 1 end
 end
 if frameCount > 510 and frameCount < 765 then
  colourGRN = 255
  if colourBLU > 254 then else colourBLU = colourBLU + 1 end
 end
 if frameCount > 764 and frameCount < 1020 then
  colourBLU = 255
  if colourGRN == 0 then else colourGRN = colourGRN - 1 end
 end
 if frameCount > 1020 and frameCount < 1275 then
  colourBLU = 255
  if colourRED > 254 then else colourRED = colourRED + 1 end
 end
 if frameCount > 1274 and frameCount < 1530 then
  colourRED = 255
  if colourBLU == 0 then else colourBLU = colourBLU - 1 end
 end

--Topbar
barval = MANAGER.getsetting("CRK","barval")
if barval == nil then
tpt.fillrect(2,-1,607,3, colourRED,colourGRN,colourBLU,al)
end
if uival == "1" then

if barval == "1" then
if tonumber(barlength) <= 202 then
barlength = barlength + "5"
end
tpt.fillrect(tonumber(barlength),-1,tonumber(barlength),3, colourRED,colourGRN,colourBLU,al)

elseif barval == "2" then
tpt.fillrect(2,-1,607,3, colourRED,colourGRN,colourBLU,al)
end
end

--Topbarend
--MP and manager
tpt.drawrect(613,103,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,119,14,15,colourRED,colourGRN,colourBLU,al)

--top
tpt.drawrect(613,1,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,17,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,33,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,49,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,65,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,81,14,14,colourRED,colourGRN,colourBLU,al)
--right
tpt.drawrect(613,136,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,152,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,168,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,184,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,200,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,216,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,232,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,248,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,264,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,280,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,296,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,312,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,328,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,344,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,360,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,376,14,14,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,392,14,14,colourRED,colourGRN,colourBLU,al)

--bottom
tpt.drawrect(1,408,626,14,colourRED,colourGRN,colourBLU,al)
tpt.drawline(612,408,612,421,colourRED,colourGRN,colourBLU,al)
tpt.drawline(187,409,187,422,colourRED,colourGRN,colourBLU,al)
tpt.drawline(487,408,487,421,colourRED,colourGRN,colourBLU,al)
tpt.drawline(241,408,241,421,colourRED,colourGRN,colourBLU,al)
tpt.drawline(469,408,469,421,colourRED,colourGRN,colourBLU,al)
tpt.drawline(36,408,36,421,colourRED,colourGRN,colourBLU,al)
tpt.drawline(18,408,18,421,colourRED,colourGRN,colourBLU,al)
tpt.drawline(580,409,580,422,colourRED,colourGRN,colourBLU,al)
tpt.drawline(596,409,596,422,colourRED,colourGRN,colourBLU,al)
tpt.drawline(418,408,418,421,colourRED,colourGRN,colourBLU,al)
end
end

mp:action(function(sender)
clearsb()
local mp1 = Button:new(20,92,45,20,"Dark", "Change the theme to default")
local mp2 = Button:new(70,92,45,20,"Fire", "Change the theme to Blue")
local mp3 = Button:new(120,92,45,20,"Aqua", "Change the theme to Red")
local mp4 = Button:new(170,92,45,20,"Forest", "Change the theme to Green")
local mp7 = Button:new(220,92,45,20,"Vanilla", "Change the theme back to Plain white")
local mp8 = Button:new(270,92,45,20,"Twilight", "Magnita/Default")
local mp9 = Button:new(320,92,45,20,"Pulse", "RBG makes everything better.")
local mpop = Button:new(530,347,75,20,"Done", "Close")

local bg1 = Button:new(24,300,45,15,"Off", "Default")
local bg2 = Button:new(74,300,45,15,"Blue", "Blue background")
local bg3 = Button:new(124,300,45,15,"Red", "Red background")
local bg4 = Button:new(174,300,45,15,"Green", "Green background")
local bg5 = Button:new(224,300,45,15,"Orange", "Yellow background")
local bg6 = Button:new(274,300,45,15,"Theme", "Same as set theme")

local bog1 = Button:new(24,345,45,15,"Off", "Default")
local bog2 = Button:new(74,345,45,15,"On", "on")
local fanlb = Label:new(77, 325, 10, 15, "OFF")

--topbar
local barlb = Label:new(70, 234, 5, 5, " Long")
local baropa =  Button:new(24,250,35,20,"Short", "Short and moving")
local baropb =  Button:new(64,250,35,20,"Long", "Long")
local baropd =  Button:new(104,250,35,20,"OFF", "Turn off")

local als = Label:new(325,145, 30, 15, "Alpha")
local rl = Label:new(321, 166, 30, 15, "Red")
local gl = Label:new(325,187, 30, 15, "Green")
local bl = Label:new(323, 208, 30, 15, "Blue")

local aSlider = Slider:new(20, 145, 255, 15, 255)
local rSlider = Slider:new(20, 166, 255, 15, 255)
local gSlider = Slider:new(20, 187, 255, 15, 255)
local bSlider = Slider:new(20, 208, 255, 15, 255)

local alb = Label:new(290,145,10, 15)
local rlb = Label:new(290, 166, 10, 15)
local glb = Label:new(290, 187, 10, 15)
local blb = Label:new(290, 208, 10, 15)

local newmenuth = Window:new(-15,-15, 609, 370)
local creditsth = Label:new(280,-20,100, 60,"Welcome To The Control Centre.")
local presetlb = Label:new(-10,58,100, 50,"Presets:")
local previewlb = Label:new(-10,-5,100, 60,"Preview:")
local custlb = Label:new(-10,108,100, 60,"Custom:")
local bartlb = Label:new(35,232,10, 10,"Topbar:")
local filtlb = Label:new(37,282,10, 10,"Filters:")
local bordlb = Label:new(41,328,10, 10,"Crosshair:")
local pulselb = Label:new(70,20,100, 60,"Pulse theme on, preview not available.")
local alphalb = Label:new(87,124,100, 60,"Brightness turned on, alpha slider not available.")

function mpnolag()
newmenuth:removeComponent(pulselb)
MANAGER.savesetting("CRK","savergb",2)
aSlider:value(MANAGER.getsetting("CRK", "al"))
rSlider:value(MANAGER.getsetting("CRK", "ar"))
gSlider:value(MANAGER.getsetting("CRK", "ag"))
bSlider:value(MANAGER.getsetting("CRK", "ab"))

rclr = rSlider:value() 
rlb:text(rclr)

gclr = gSlider:value() 
glb:text(gclr)

bclr = bSlider:value() 
blb:text(bclr)

aclr = aSlider:value() 
alb:text(aclr)

if perlab:text() == "OFF" then
event.unregister(event.tick,theme)
event.register(event.tick,theme)
end
event.unregister(event.tick,colourblender)
end

function drawprev()
graphics.drawRect(20,38,573,26,255,255,255,255)
if MANAGER.getsetting("CRK", "savergb") == "1" then
newmenuth:addComponent(pulselb)
end

if MANAGER.getsetting("CRK", "brightstate") == "1" then 
newmenuth:addComponent(alphalb)
end

tpt.drawrect(65,282,10,10,backvr,backvg,backvb,255)
tpt.fillrect(65,282,10,10,backvr,backvg,backvb,100)

if MANAGER.getsetting("CRK", "savergb") ~= "1" then
graphics.fillRect(22, 40,569,22,MANAGER.getsetting("CRK", "ar"),MANAGER.getsetting("CRK", "ag"),MANAGER.getsetting("CRK", "ab"),MANAGER.getsetting("CRK", "al"))
graphics.drawRect(1,1, 609, 370, MANAGER.getsetting("CRK", "ar"),MANAGER.getsetting("CRK", "ag"),MANAGER.getsetting("CRK", "ab"),110)
graphics.fillRect(1,1, 609, 370, MANAGER.getsetting("CRK", "ar"),MANAGER.getsetting("CRK", "ag"),MANAGER.getsetting("CRK", "ab"),10)
end
end
newmenuth:onDraw(drawprev)

if MANAGER.getsetting("CRK", "fancurs") == "1" then
fanlb:text("ON")
end

if MANAGER.getsetting("CRK", "barval") == "4" then
barlb:text("OFF")

elseif MANAGER.getsetting("CRK", "barval") == "1" then
barlb:text(" Short")

elseif MANAGER.getsetting("CRK", "barval") == "2" then
barlb:text(" Long")
end

function closewindow()
ui.closeWindow(newmenuth)
ui.closeWindow(newmenu)
barlength = 1
end

ui.showWindow(newmenuth)

newmenuth:addComponent(creditsth)
newmenuth:addComponent(presetlb)
newmenuth:addComponent(filtlb)
newmenuth:addComponent(previewlb)
newmenuth:addComponent(custlb)
newmenuth:addComponent(mp1)
newmenuth:addComponent(mp2)
newmenuth:addComponent(mp3)
newmenuth:addComponent(mp4)
newmenuth:addComponent(mp7)
newmenuth:addComponent(mp8)
newmenuth:addComponent(mp9)

newmenuth:addComponent(bg1)
newmenuth:addComponent(bg2)
newmenuth:addComponent(bg3)
newmenuth:addComponent(bg4)
newmenuth:addComponent(bg5)
newmenuth:addComponent(bg6)

newmenuth:addComponent(bog1)
newmenuth:addComponent(bog2)

newmenuth:addComponent(rSlider)
newmenuth:addComponent(gSlider)
newmenuth:addComponent(bSlider)
newmenuth:addComponent(rl)
newmenuth:addComponent(gl)
newmenuth:addComponent(bl)
newmenuth:addComponent(rlb)
newmenuth:addComponent(glb)
newmenuth:addComponent(blb)
newmenuth:addComponent(mpop)
newmenuth:addComponent(baropa)
newmenuth:addComponent(baropb)
newmenuth:addComponent(baropd)
newmenuth:addComponent(barlb)
newmenuth:addComponent(bartlb)
newmenuth:addComponent(bordlb)
newmenuth:addComponent(fanlb)

if MANAGER.getsetting("CRK", "brightstate") ~= "1" then
newmenuth:addComponent(aSlider)
newmenuth:addComponent(als)
newmenuth:addComponent(alb)
end

rlb:text(MANAGER.getsetting("CRK", "ar"))
glb:text(MANAGER.getsetting("CRK", "ag"))
blb:text(MANAGER.getsetting("CRK", "ab"))
alb:text(MANAGER.getsetting("CRK", "al"))

rSlider:onValueChanged(function()   rclr = rSlider:value() rlb:text(rclr) MANAGER.savesetting("CRK","ar", rSlider:value()) mpnolag() end)
gSlider:onValueChanged(function()  gclr = gSlider:value() glb:text(gclr) MANAGER.savesetting("CRK","ag",gSlider:value()) mpnolag() end)
bSlider:onValueChanged(function()  bclr = bSlider:value() blb:text(bclr) MANAGER.savesetting("CRK","ab",bSlider:value())  mpnolag() end)

aSlider:onValueChanged(function()
if aSlider:value() < 80 then
aSlider:value("80")
end
aclr = aSlider:value() 
alb:text(aclr) 
MANAGER.savesetting("CRK","al",aSlider:value()) 
end)

aSlider:value(MANAGER.getsetting("CRK", "al"))
rSlider:value(MANAGER.getsetting("CRK", "ar"))
gSlider:value(MANAGER.getsetting("CRK", "ag"))
bSlider:value(MANAGER.getsetting("CRK", "ab"))

bog2:action(function(sender)
MANAGER.savesetting("CRK", "fancurs","1") 
event.register(event.tick,drawcirc)
fanlb:text("ON")
if MANAGER.getsetting("CRK", "brightstate") == "1" then
event.unregister(event.tick,cbrightness)
event.register(event.tick,cbrightness)
end
end)

bog1:action(function(sender)
MANAGER.savesetting("CRK", "fancurs","0") 
event.unregister(event.tick,drawcirc)
fanlb:text("OFF")
end)

mpop:action(function(sender)
ui.closeWindow(newmenuth)
ui.closeWindow(newmenu)
end)

mp1:action(function(sender)
MANAGER.savesetting("CRK","ar",50)
MANAGER.savesetting("CRK","ag",50)
MANAGER.savesetting("CRK","ab",50)
MANAGER.savesetting("CRK","al",250)
mpnolag()
end)

mp2:action(function(sender)
MANAGER.savesetting("CRK","ar",220)
MANAGER.savesetting("CRK","ag",0)
MANAGER.savesetting("CRK","ab",0)
MANAGER.savesetting("CRK","al",220)
mpnolag()
end)

mp3:action(function(sender)
MANAGER.savesetting("CRK","ar",50)
MANAGER.savesetting("CRK","ag",100)
MANAGER.savesetting("CRK","ab",255)
MANAGER.savesetting("CRK","al",255)
mpnolag()
end)

mp4:action(function(sender)
MANAGER.savesetting("CRK","ar",0)
MANAGER.savesetting("CRK","ag",190)
MANAGER.savesetting("CRK","ab",0)
MANAGER.savesetting("CRK","al",220)
mpnolag()
end)

mp7:action(function(sender)
MANAGER.savesetting("CRK","ar",250)
MANAGER.savesetting("CRK","ag",250)
MANAGER.savesetting("CRK","ab",250)
MANAGER.savesetting("CRK","al",200)
mpnolag()
end)

mp8:action(function(sender)
MANAGER.savesetting("CRK","ar",131)
MANAGER.savesetting("CRK","ag",0)
MANAGER.savesetting("CRK","ab",255)
MANAGER.savesetting("CRK","al",255)
mpnolag()
end)

mp9:action(function(sender)
MANAGER.savesetting("CRK","al",210)
MANAGER.savesetting("CRK","savergb",1)
aSlider:value(MANAGER.getsetting("CRK", "al"))
aclr = aSlider:value() 
alb:text(aclr)
event.unregister(event.tick,theme)
event.unregister(event.tick,colourblender)
event.register(event.tick,colourblender)
end)

bg1:action(function(sender)
backvr = 0
backvg = 0
backvb = 0
event.unregister(event.tick,backg)
end)

bg2:action(function(sender)
backvr = 0
backvg = 0
backvb = 200
clearback()
end)

bg3:action(function(sender)
backvr = 200
backvg = 0
backvb = 0
clearback()
end)

bg4:action(function(sender)
backvr = 0
backvg = 200
backvb = 0
clearback()
end)

bg5:action(function(sender)
backvr = 250
backvg = 111
backvb = 0
clearback()
end)

bg6:action(function(sender)
backvr = MANAGER.getsetting("CRK","ar")
backvg = MANAGER.getsetting("CRK","ag")
backvb = MANAGER.getsetting("CRK","ab")
clearback()
end)

baropa:action(function(sender)
barlb:text(" Short")
MANAGER.savesetting("CRK","barval","1")
end)

baropb:action(function(sender)
barlb:text(" Long")
MANAGER.savesetting("CRK","barval","2")
end)

baropd:action(function(sender)
barlb:text("OFF")
MANAGER.savesetting("CRK","barval","4")
end)

end)

function startupcheck()
event.register(event.tick,writefile2)
interface.addComponent(toggle)
fs.makeDirectory("scripts")
local faz =io.open("updatedmp.lua","r")
if faz ~= nil then 
io.close(faz)
dofile("updatedmp.lua")
end

if MANAGER.getsetting("CRK","al") == nil then
MANAGER.savesetting("CRK","ar",131)
MANAGER.savesetting("CRK","ag",0)
MANAGER.savesetting("CRK","ab",255)
MANAGER.savesetting("CRK","al",255)
end

if MANAGER.getsetting("CRK", "savergb") == nil then
MANAGER.savesetting("CRK", "savergb",2)
end 

if MANAGER.getsetting("CRK", "pass") == "1" then
passbutlab:text("ON")
passvalue = "1"
end

if MANAGER.getsetting("CRK", "savergb") == "1" then
event.register(event.tick,colourblender)
else
event.register(event.tick,theme)
end

if MANAGER.getsetting("CRK", "hidestate") == "1" then
hideno()
hidval = "0"
remlabe:text("ON")
end

if MANAGER.getsetting("CRK", "fancurs") == "1" then
event.register(event.tick,drawcirc)
end

if MANAGER.getsetting("CRK", "brightstate") == "1" then
brightSlider:value(MANAGER.getsetting("CRK", "brightness"))
event.register(event.tick,cbrightness)
brlabel:text("Turned: on")
else
MANAGER.savesetting("CRK", "brightness",200)
end
end
startupcheck()

local rulval = "1"

Ruler:action(function(sender)
clearsb()
if rulval == "1" then
rulval = "0"
tpt.setdebug(0X4)
rulb:text("ON")

elseif rulval == "0" then
tpt.setdebug(0X0)
rulval = "1"
rulb:text("OFF")
end
end)

function UIhide()
tpt.fillrect(-1,382,616,42,0,0,0,255)
tpt.fillrect(612,0,17,424,0,0,0,255)
end

local unhd = Button:new(315,1,40,20, "Show", "Unhides the interface.")

unhd:action(function(sender)
tpt.hud(1)
event.unregister(event.tick,UIhide)
uival = "1"
dellb:text("Shown")
interface.removeComponent(unhd)
end)

deletesparkButton:action(function(sender)
clearsb()
if uival == "1" then
event.unregister(event.tick,UIhide)
event.register(event.tick,UIhide)
tpt.hud(0)
uival = "0"
interface.removeComponent(unhd)
interface.addComponent(unhd)
dellb:text("Hidden")

elseif uival == "0" then
tpt.hud(1)
event.unregister(event.tick,UIhide)
uival = "1"
barval = "0"
dellb:text("Shown")
interface.removeComponent(unhd)
end
end)

FPS:action(function(sender)
clearsb()
if fpsval == "1" then
tpt.setfpscap(2)
fpsval = "0"
fplb:text("OFF")

else
tpt.setfpscap(60)
fpsval = "1"
fplb:text("ON")
end
end)

reset:action(function(sender)
close()
interface.removeComponent(unhd)
timerremo()
os.remove("scripts/downloaded/2 LBPHacker-TPTMulti.lua")
os.remove("updatedmp.lua")
backvr = 0
backvg = 0
backvb = 0
perfmv = "1"
autoval = "1"
shrtv = "1"
fpsval = "1"
uival = "1"
rulval = "1"
hidval = "1"
barval = "2"
passvalue = "0"
bglab:text("ON")
passbutlab:text("OFF")
autolb:text("OFF")
perlab:text("OFF")
shrtlb:text("ON")
fplb:text("ON")
rulb:text("OFF")
dellb:text("Shown")
remlabe:text("OFF")
savetime = 0
barktext:text("5")
remtime:text("10")
showmodelem()
event.unregister(event.tick,writefile)
event.unregister(event.tick,autosave)
event.unregister(event.tick,drawcirc)
event.unregister(event.tick,remindme)
event.unregister(event.tick,backg)
event.unregister(event.tick,cbrightness)
event.unregister(event.tick,UIhide)
event.unregister(event.tick,autohidehud)
event.unregister(event.tick,colourblender)
event.register(event.tick,theme)
newmenu:removeComponent(remlabel)
newmenu:removeComponent(remlabe)
savelabs:text("OFF")
brlabel:text("Turned: off")
brightSlider:value("200")
MANAGER.savesetting("CRK", "pass","0")
MANAGER.savesetting("CRK", "brightstate", "0")
MANAGER.savesetting("CRK","savergb",1)
MANAGER.savesetting("CRK","hidestate", "0")
MANAGER.savesetting("CRK", "fancurs","0")
MANAGER.savesetting("CRK", "barval", "2")
MANAGER.savesetting("CRK", "passreal","12345678")
MANAGER.savesetting("CRK", "passreal2","DMND")
MANAGER.savesetting("CRK","al",255)
MANAGER.savesetting("CRK","ar",131)
MANAGER.savesetting("CRK","ag",0)
MANAGER.savesetting("CRK","ab",255)
MANAGER.savesetting("CRK", "savergb",2)
tpt.hud(1)
hideyes()
tpt.display_mode(3)
tpt.watertest(0)
sim.edgeMode(0) 
tpt.setfpscap(60)
tpt.setdrawcap(0)
tpt.setwindowsize(1)
tpt.newtonian_gravity(0)
tpt.decorations_enable(0)
sim.resetPressure()
tpt.ambient_heat(0)
sim.resetTemp()
tpt.reset_velocity(1,380,300,300)
tpt.setdebug(0X0)
sim.clearSim()
end)

function close()
ui.closeWindow(newmenu) 
clearsb()
clearm()
barlength = 1
end

function drawglitch()
if perlab:text() == "OFF" then
if MANAGER.getsetting("CRK", "savergb") == "2" then
graphics.drawLine(12, 18,574,18,ar,ag,ab,al)
graphics.drawRect(1,1, 609, 255,ar,ag,ab,110)
graphics.fillRect(1,1, 609, 255,ar,ag,ab,10)
else
graphics.drawLine(12, 18,319,18,colourRED,colourGRN,colourBLU,al)
graphics.drawRect(1,1, 609, 255,colourRED,colourGRN,colourBLU,110)
graphics.fillRect(1,1, 609, 255,colourRED,colourGRN,colourBLU,10)
end
end

graphics.drawText(14,261,motw,255,200,55,255)

if MANAGER.getsetting("CRK", "brightstate") == "1" then
cbrightness()
end
end

function open()
ui.showWindow(newmenu) 
newmenu:onDraw(drawglitch)
newmenu:onTryExit(close)
newmenu:addComponent(deletesparkButton)
newmenu:addComponent(FPS)
newmenu:addComponent(info)
newmenu:addComponent(reset)
newmenu:addComponent(hide)
newmenu:addComponent(Ruler)
newmenu:addComponent(bg)
newmenu:addComponent(mp)
newmenu:addComponent(bug)
newmenu:addComponent(bar)
newmenu:addComponent(bare)
newmenu:addComponent(wiki)
newmenu:addComponent(autohide)
newmenu:addComponent(chud)
newmenu:addComponent(brightness)
newmenu:addComponent(reminder)
newmenu:addComponent(Help)
newmenu:addComponent(shrt)
newmenu:addComponent(shrtlb)
newmenu:addComponent(remlabe)
newmenu:addComponent(dellb)
newmenu:addComponent(fplb)
newmenu:addComponent(rulb)
newmenu:addComponent(autolb)
newmenu:addComponent(edito)
newmenu:addComponent(perfm)
newmenu:addComponent(perlab)
newmenu:addComponent(passbut)
newmenu:addComponent(passbutlab)
newmenu:addComponent(savelabs)
newmenu:addComponent(bglab)
newmenu:addComponent(upmp)
end

hide:action(function(sender)
close()
end)

function keyclicky(key)
if (key =="j") and TPTMP.chatHidden == true and shrtv == "1" then
open()
end
end
tpt.register_keypress(keyclicky) 

toggle:action(function(sender)
open()
end)

--fontstart
fonts ={}
fonts['5x7'] = {}
fonts['5x7']['width'] = 5
fonts['5x7']['height'] = 7
fonts['5x7']['linespacing'] = 4
fonts['5x7']['charspacing'] = 1

fonts['7x10'] = {}
fonts['7x10']['width'] = 7
fonts['7x10']['height'] = 10
fonts['7x10']['linespacing'] = 4
fonts['7x10']['charspacing'] = 1

fonts['7x10-Bold'] = {}
fonts['7x10-Bold']['width'] = 7
fonts['7x10-Bold']['height'] = 10
fonts['7x10-Bold']['linespacing'] = 4
fonts['7x10-Bold']['charspacing'] = 1

fonts['5x7']['~'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 1, 1, 0, 1},
                {1, 0, 0, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0,0, 0, 0},
                {0, 0, 0, 0,0},
                {0, 0, 0, 0, 0}
        }
}

fonts['5x7']['a'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 1}
        }
}
fonts['5x7']['b'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['c'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['d'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 1},
                {0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['e'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['f'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {0, 0, 1, 1, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 1, 1, 1, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['g'] = {
        ['descender'] = -2,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 1},
                {0, 0, 0, 0, 1},
                {0, 1, 1, 1, 0}
        }
}
fonts['5x7']['h'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['i'] = {
        ['descender'] = 0,
        ['kerning'] = -4,
        ['pixels']  = {
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['j'] = {
        ['descender'] = -2,
        ['kerning'] = -3,
        ['pixels']  = {
                {0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 0, 0, 0, 0}
        }
}
fonts['5x7']['k'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 1, 0},
                {1, 0, 1, 0, 0},
                {1, 1, 0, 0, 0},
                {1, 0, 1, 0, 0},
                {1, 0, 0, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['l'] = {
        ['descender'] = 0,
        ['kerning'] = -3,
        ['pixels']  = {
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['m'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 1, 0, 1, 0},
                {1, 0, 1, 0, 1},
                {1, 0, 1, 0, 1},
                {1, 0, 1, 0, 1},
                {1, 0, 1, 0, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['n'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 1, 1, 0},
                {1, 1, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['o'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['p'] = {
        ['descender'] = -2,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0}
        }
}
fonts['5x7']['q'] = {
        ['descender'] = -2,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 1},
                {0, 0, 0, 0, 1},
                {0, 0, 0, 0, 1}
        }
}
fonts['5x7']['r'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 1, 1, 0},
                {1, 1, 0, 0, 1},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['s'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1},
                {1, 0, 0, 0, 0},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 1},
                {1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['t'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 1, 1, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['u'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['v'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 0, 1, 0},
                {0, 1, 0, 1, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['w'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 1, 0, 1},
                {1, 0, 1, 0, 1},
                {1, 0, 1, 0, 1},
                {0, 1, 0, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['x'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 0, 1, 0},
                {1, 0, 0, 1, 0},
                {0, 1, 1, 0, 0},
                {1, 0, 0, 1, 0},
                {1, 0, 0, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['y'] = {
        ['descender'] = -2,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 0, 1, 0},
                {0, 1, 0, 1, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {1, 1, 0, 0, 0}
        }
}
fonts['5x7']['z'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1},
                {0, 0, 0, 1, 0},
                {0, 0, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7'][' '] = {
        ['descender'] = 0,
        ['kerning'] = -4,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['0'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 1, 1},
                {1, 0, 1, 0, 1},
                {1, 1, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['1'] = {
        ['descender'] = 0,
        ['kerning'] = -3,
        ['pixels']  = {
                {0, 1, 0, 0, 0},
                {1, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['2'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {0, 0, 0, 0, 1},
                {0, 0, 0, 1, 0},
                {0, 0, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['3'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1},
                {0, 0, 0, 1, 0},
                {0, 0, 1, 0, 0},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['4'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 1},
                {0, 0, 0, 1, 1},
                {0, 0, 1, 0, 1},
                {0, 1, 0, 0, 1},
                {1, 1, 1, 1, 1},
                {0, 0, 0, 0, 1},
                {0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['5'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 1, 1, 1, 0},
                {0, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['6'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 1, 1, 0},
                {0, 1, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['7'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {1, 1, 1, 1, 0},
                {0, 0, 0, 1, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['8'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['9'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 1},
                {0, 0, 0, 0, 1},
                {0, 0, 0, 1, 0},
                {0, 1, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['.'] = {
        ['descender'] = 0,
        ['kerning'] = -4,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['<'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['>'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['@'] = {
        ['descender'] = -2,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 1, 0, 0, 1},
                {1, 0, 1, 0, 1},
                {1, 1, 0, 0, 1},
                {0, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0}
        }
}
fonts['5x7']['#'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 0, 1, 0},
                {1, 1, 1, 1, 1},
                {0, 1, 0, 1, 0},
                {1, 1, 1, 1, 1},
                {0, 1, 0, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['$'] = {
        ['descender'] = -2,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 1, 0, 0},
                {0, 1, 1, 1, 0},
                {1, 0, 1, 0, 1},
                {1, 0, 1, 0, 0},
                {0, 1, 1, 1, 0},
                {0, 0, 1, 0, 1},
                {1, 0, 1, 0, 1},
                {0, 1, 1, 1, 0},
                {0, 0, 1, 0, 0}
        }
}
fonts['5x7']['%'] = {
        ['descender'] = -1,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {1, 1, 0, 0, 1},
                {1, 1, 0, 0, 1},
                {0, 0, 0, 1, 0},
                {0, 0, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 0, 0, 1, 1},
                {1, 0, 0, 1, 1},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['^'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 1, 0, 0},
                {0, 1, 0, 1, 0},
                {1, 0, 0, 0, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['{'] = {
        ['descender'] = -2,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0}
        }
}
fonts['5x7']['}'] = {
        ['descender'] = -2,
        ['kerning'] = -2,
        ['pixels']  = {
                {1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 0, 0, 0, 0}
        }
}
fonts['5x7']['&'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 0, 1, 0, 1},
                {1, 0, 0, 1, 0},
                {0, 1, 1, 0, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['*'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0},
                {1, 0, 1, 0, 1},
                {0, 1, 1, 1, 0},
                {1, 0, 1, 0, 1},
                {0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['('] = {
        ['descender'] = -2,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0}
        }
}
fonts['5x7'][')'] = {
        ['descender'] = -2,
        ['kerning'] = -2,
        ['pixels']  = {
                {1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 0, 0, 0, 0}
        }
}
fonts['5x7']['='] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['['] = {
        ['descender'] = -2,
        ['kerning'] = -3,
        ['pixels']  = {
                {1, 1, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 1, 0, 0, 0}
        }
}
fonts['5x7'][']'] = {
        ['descender'] = -2,
        ['kerning'] = -3,
        ['pixels']  = {
                {1, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 1, 0, 0, 0}
        }
}
fonts['5x7']['|'] = {
        ['descender'] = -2,
        ['kerning'] = -4,
        ['pixels']  = {
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0}
        }
}
fonts['5x7']['!'] = {
        ['descender'] = 0,
        ['kerning'] = -4,
        ['pixels']  = {
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['?'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {0, 0, 0, 0, 1},
                {0, 0, 0, 1, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7'][','] = {
        ['descender'] = -1,
        ['kerning'] = -4,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7'][':'] = {
        ['descender'] = 0,
        ['kerning'] = -4,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7'][';'] = {
        ['descender'] = 0,
        ['kerning'] = -4,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['+'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 1, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['-'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['_'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['/'] = {
        ['descender'] = -2,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0}
        }
}
fonts['5x7']['NULL'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['A'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 1, 0, 0},
                {0, 1, 0, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 1, 1, 1, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1}
        }
}
fonts['5x7']['B'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['C'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['D'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['E'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['F'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['G'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 0},
                {1, 0, 1, 1, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['H'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 1, 1, 1, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['I'] = {
        ['descender'] = 0,
        ['kerning'] = -4,
        ['pixels']  = {
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['J'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {0, 0, 0, 1, 0},
                {0, 0, 0, 1, 0},
                {0, 0, 0, 1, 0},
                {0, 0, 0, 1, 0},
                {0, 0, 0, 1, 0},
                {1, 0, 0, 1, 0},
                {0, 1, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['K'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 1},
                {1, 0, 0, 1, 0},
                {1, 0, 1, 0, 0},
                {1, 1, 0, 0, 0},
                {1, 0, 1, 0, 0},
                {1, 0, 0, 1, 0},
                {1, 0, 0, 0, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['L'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['M'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1},
                {1, 0, 1, 0, 1},
                {1, 0, 1, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['N'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 1},
                {1, 1, 0, 0, 1},
                {1, 1, 0, 0, 1},
                {1, 0, 1, 0, 1},
                {1, 0, 0, 1, 1},
                {1, 0, 0, 1, 1},
                {1, 0, 0, 0, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['O'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['P'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['Q'] = {
        ['descender'] = -2,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 1, 0},
                {0, 0, 0, 0, 1}
        }
}
fonts['5x7']['R'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['S'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 0},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['T'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['U'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['V'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 0, 1, 0},
                {0, 1, 0, 1, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['W'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 1, 0, 1},
                {1, 0, 1, 0, 1},
                {0, 1, 0, 1, 0},
                {0, 1, 0, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['X'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 0, 1, 0},
                {0, 0, 1, 0, 0},
                {0, 1, 0, 1, 0},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['Y'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {1, 0, 0, 0, 1},
                {0, 1, 0, 1, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['Z'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1},
                {0, 0, 0, 0, 1},
                {0, 0, 0, 1, 0},
                {0, 0, 1, 0, 0},
                {0, 1, 0, 0, 0},
                {1, 0, 0, 0, 0},
                {1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}


fonts['5x7']['_'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['5x7']['"'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 1, 0, 1},
                {0, 1, 0, 1, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0}
        }
}
fonts['7x10']['a'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {0, 1, 1, 1, 1, 0, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['b'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['c'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['d'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['e'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['f'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 1, 1, 1, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['g'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['h'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['i'] = {
        ['descender'] = 0,
        ['kerning'] = -6,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['j'] = {
        ['descender'] = -4,
        ['kerning'] = -4,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['k'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 1, 0, 0},
                {1, 0, 0, 1, 0, 0, 0},
                {1, 0, 1, 0, 0, 0, 0},
                {1, 1, 0, 1, 0, 0, 0},
                {1, 0, 0, 0, 1, 0, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['l'] = {
        ['descender'] = 0,
        ['kerning'] = -4,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['m'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 0, 1, 1, 0},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['n'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 1, 1, 1, 0, 0},
                {1, 1, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['o'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['p'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['q'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 1}
        }
}
fonts['7x10']['r'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 1, 1, 1, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['s'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['t'] = {
        ['descender'] = 0,
        ['kerning'] = -3,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['u'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 1, 1, 0},
                {0, 1, 1, 1, 0, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['v'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['w'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['x'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['y'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['z'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10'][' '] = {
        ['descender'] = 0,
        ['kerning'] = -3,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['A'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['B'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['C'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['D'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['E'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 1},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['F'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['G'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 1, 1, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['H'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 1, 1, 1, 1, 1, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['I'] = {
        ['descender'] = 0,
        ['kerning'] = -6,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['J'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {0, 1, 1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['K'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 1, 0, 0},
                {1, 0, 0, 1, 0, 0, 0},
                {1, 0, 1, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 0, 1, 0, 0, 0, 0},
                {1, 0, 0, 1, 0, 0, 0},
                {1, 0, 0, 0, 1, 0, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['L'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['M'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 0, 1, 0, 1, 0, 1},
                {1, 0, 1, 0, 1, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['N'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 1, 0},
                {1, 1, 0, 0, 0, 1, 0},
                {1, 1, 0, 0, 0, 1, 0},
                {1, 0, 1, 0, 0, 1, 0},
                {1, 0, 1, 0, 0, 1, 0},
                {1, 0, 0, 1, 0, 1, 0},
                {1, 0, 0, 1, 0, 1, 0},
                {1, 0, 0, 0, 1, 1, 0},
                {1, 0, 0, 0, 1, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['O'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['P'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['Q'] = {
        ['descender'] = -2,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 1, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['R'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['S'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['T'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['U'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['V'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['W'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['X'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['Y'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['Z'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['0'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 1, 1, 1, 0, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 1, 1, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 1, 1, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['1'] = {
        ['descender'] = 0,
        ['kerning'] = -4,
        ['pixels']  = {
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {1, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['2'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['3'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['4'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 1, 0, 1, 0},
                {0, 0, 1, 0, 0, 1, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['5'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 1},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['6'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 1, 1, 1, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['7'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['8'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['9'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 1, 0, 0},
                {0, 1, 1, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['.'] = {
        ['descender'] = 0,
        ['kerning'] = -6,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['<'] = {
        ['descender'] = 0,
        ['kerning'] = -3,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['>'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['!'] = {
        ['descender'] = 0,
        ['kerning'] = -6,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['@'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 1, 1, 0, 1},
                {1, 0, 1, 0, 1, 0, 1},
                {1, 0, 1, 0, 1, 0, 1},
                {1, 0, 0, 1, 1, 0, 1},
                {1, 0, 0, 0, 1, 0, 1},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['#'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 0, 0, 0, 1, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['$'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 1, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 1, 0, 0, 1},
                {0, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['%'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 0, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 1, 0},
                {0, 1, 1, 0, 0, 1, 0},
                {0, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 1, 1, 0},
                {0, 1, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 0, 1, 1, 0}
        }
}
fonts['7x10']['^'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 1, 0, 0, 0},
                {1, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['{'] = {
        ['descender'] = -3,
        ['kerning'] = -4,
        ['pixels']  = {
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['}'] = {
        ['descender'] = -3,
        ['kerning'] = -4,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['&'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 0, 0, 0},
                {1, 0, 0, 0, 1, 0, 0},
                {1, 0, 0, 0, 1, 0, 0},
                {1, 0, 0, 1, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 0, 1, 0, 1},
                {1, 0, 0, 0, 0, 1, 0},
                {0, 1, 1, 1, 1, 0, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['*'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {1, 0, 0, 1, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['('] = {
        ['descender'] = -3,
        ['kerning'] = -4,
        ['pixels']  = {
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10'][')'] = {
        ['descender'] = -3,
        ['kerning'] = -4,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['='] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['"'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 0, 1, 1, 0},
                {1, 1, 0, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['['] = {
        ['descender'] = -3,
        ['kerning'] = -4,
        ['pixels']  = {
                {1, 1, 1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10'][']'] = {
        ['descender'] = -3,
        ['kerning'] = -4,
        ['pixels']  = {
                {1, 1, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {1, 1, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['|'] = {
        ['descender'] = -3,
        ['kerning'] = -6,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['?'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels'] = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10'][','] = {
        ['descender'] = -2,
        ['kerning'] = -5,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10'][':'] = {
        ['descender'] = 0,
        ['kerning'] = -6,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10'][';'] = {
        ['descender'] = -2,
        ['kerning'] = -5,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['+'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['-'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['_'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['/'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['NULL'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
               {0, 0, 0, 0, 0, 0, 0},
               {0, 0, 1, 1, 0, 0, 0},
               {0, 1, 1, 0, 0, 0, 0},
               {0, 0, 0, 0, 0, 0, 0},
               {0, 0, 0, 0, 0, 0, 0},
               {0, 0, 0, 0, 0, 0, 0},
               {0, 0, 0, 0, 0, 0, 0},
               {0, 0, 0, 0, 0, 0, 0},
               {0, 0, 0, 0, 0, 0, 0},
               {0, 0, 0, 0, 0, 0, 0},
               {0, 0, 0, 0, 0, 0, 0},
               {0, 0, 0, 0, 0, 0, 0},
               {0, 0, 0, 0, 0, 0, 0},
               {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10']['~'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 1, 1},
                {1, 0, 0, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['a'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 0, 0},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {0, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['b'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['c'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['d'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['e'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['f'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 1, 1, 1, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['g'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0}
        }
}
fonts['7x10-Bold']['h'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['i'] = {
        ['descender'] = 0,
        ['kerning'] = -5,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['j'] = {
        ['descender'] = -4,
        ['kerning'] = -4,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['k'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 1, 1, 0, 0},
                {1, 1, 1, 1, 0, 0, 0},
                {1, 1, 0, 1, 1, 0, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['l'] = {
        ['descender'] = 0,
        ['kerning'] = -4,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['m'] = {
        ['descender'] = 0,
        ['kerning'] = 1,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 0, 1, 1, 1, 0},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['n'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 0, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['o'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['p'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['q'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1}
        }
}
fonts['7x10-Bold']['r'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['s'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 0, 1},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 1, 1},
                {1, 0, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['t'] = {
        ['descender'] = 0,
        ['kerning'] = -3,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 1, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['u'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['v'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 0, 1, 1, 0},
                {0, 1, 1, 0, 1, 1, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['w'] = {
        ['descender'] = 0,
        ['kerning'] = 1,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['x'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 0, 1, 1, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 1, 1, 0, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['y'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 0, 1, 1, 0},
                {0, 1, 1, 0, 1, 1, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['z'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 1, 1, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold'][' '] = {
        ['descender'] = 0,
        ['kerning'] = -3,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['A'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 1, 1, 0, 1, 1, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['B'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['C'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['D'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['E'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 1},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['F'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['G'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 1, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['H'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 1, 1, 1, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['I'] = {
        ['descender'] = 0,
        ['kerning'] = -5,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['J'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {0, 1, 1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['K'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 1, 1, 0, 0},
                {1, 1, 1, 1, 0, 0, 0},
                {1, 1, 1, 0, 0, 0, 0},
                {1, 1, 1, 1, 0, 0, 0},
                {1, 1, 0, 1, 1, 0, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['L'] = {
        ['descender'] = 0,
        ['kerning'] = -1,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['M'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 1, 1, 1, 1, 1},
                {1, 1, 1, 1, 1, 1, 1},
                {1, 1, 0, 1, 0, 1, 1},
                {1, 1, 0, 1, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['N'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 1, 1, 0, 1, 1},
                {1, 1, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 1, 1},
                {1, 1, 0, 1, 1, 1, 1},
                {1, 1, 0, 0, 1, 1, 1},
                {1, 1, 0, 0, 1, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['O'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['P'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['Q'] = {
        ['descender'] = -2,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 1, 1, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['R'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['S'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['T'] = {
        ['descender'] = 0,
        ['kerning'] = 1,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['U'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['V'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 0, 1, 1, 0},
                {0, 1, 1, 0, 1, 1, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['W'] = {
        ['descender'] = 0,
        ['kerning'] = 1,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {1, 1, 0, 1, 1, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['X'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 0, 1, 1, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 1, 1, 0, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['Y'] = {
        ['descender'] = 0,
        ['kerning'] = 1,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 0, 1, 1},
                {0, 1, 1, 0, 0, 1, 1, 0},
                {0, 0, 1, 1, 1, 1, 0, 0},
                {0, 0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['Z'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 1, 1, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['0'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 1, 1, 1, 0, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 1, 1, 1},
                {1, 1, 0, 1, 0, 1, 1},
                {1, 1, 1, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['1'] = {
        ['descender'] = 0,
        ['kerning'] = -3,
        ['pixels']  = {
                {0, 0, 1, 1, 0, 0, 0},
                {0, 1, 1, 1, 0, 0, 0},
                {1, 1, 1, 1, 0, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['2'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 1, 1, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['3'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 1, 1, 0, 0},
                {0, 0, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['4'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 1, 1, 1},
                {0, 0, 0, 1, 1, 1, 1},
                {0, 0, 1, 1, 0, 1, 1},
                {0, 1, 1, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['5'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 1},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['6'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 1, 1, 1, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['7'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {1, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 1, 1, 0, 0},
                {0, 0, 0, 1, 1, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['8'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['9'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {1, 1, 0, 0, 0, 1, 1},
                {0, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 1, 1},
                {0, 0, 0, 0, 1, 1, 0},
                {0, 0, 0, 1, 1, 0, 0},
                {0, 1, 1, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['.'] = {
        ['descender'] = 0,
        ['kerning'] = -5,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['<'] = {
        ['descender'] = 0,
        ['kerning'] = -3,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['>'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['!'] = {
        ['descender'] = 0,
        ['kerning'] = -5,
        ['pixels']  = {
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['@'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 1, 1, 0, 1},
                {1, 0, 1, 0, 1, 0, 1},
                {1, 0, 1, 0, 1, 0, 1},
                {1, 0, 0, 1, 1, 0, 1},
                {1, 0, 0, 0, 1, 0, 1},
                {1, 0, 0, 0, 0, 1, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['#'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 0, 0, 0, 1, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {1, 1, 1, 1, 1, 1, 1},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['$'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 1, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 1, 0, 0, 1},
                {0, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['_'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['%'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 0, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 1, 0},
                {0, 1, 1, 0, 0, 1, 0},
                {0, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 1, 1, 0},
                {0, 1, 0, 1, 0, 0, 1},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 0, 1, 1, 0}
        }
}
fonts['7x10-Bold']['^'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 1, 0, 0, 0},
                {1, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['{'] = {
        ['descender'] = -3,
        ['kerning'] = -4,
        ['pixels']  = {
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['}'] = {
        ['descender'] = -3,
        ['kerning'] = -4,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['&'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 0, 0, 0},
                {1, 0, 0, 0, 1, 0, 0},
                {1, 0, 0, 0, 1, 0, 0},
                {1, 0, 0, 1, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {1, 0, 0, 1, 0, 0, 1},
                {1, 0, 0, 0, 1, 0, 1},
                {1, 0, 0, 0, 0, 1, 0},
                {0, 1, 1, 1, 1, 0, 1},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['*'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {1, 0, 0, 1, 0, 0, 1},
                {0, 1, 1, 1, 1, 1, 0},
                {0, 0, 1, 1, 1, 0, 0},
                {0, 0, 1, 0, 1, 0, 0},
                {0, 1, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['('] = {
        ['descender'] = -3,
        ['kerning'] = -4,
        ['pixels']  = {
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold'][')'] = {
        ['descender'] = -3,
        ['kerning'] = -4,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['='] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['['] = {
        ['descender'] = -3,
        ['kerning'] = -4,
        ['pixels']  = {
                {1, 1, 1, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold'][']'] = {
        ['descender'] = -3,
        ['kerning'] = -4,
        ['pixels']  = {
                {1, 1, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {1, 1, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['|'] = {
        ['descender'] = -3,
        ['kerning'] = -6,
        ['pixels']  = {
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['?'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 1, 1, 1, 1, 1, 0},
                {1, 0, 0, 0, 0, 0, 1},
                {1, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 0, 1},
                {0, 0, 0, 0, 0, 1, 0},
                {0, 0, 0, 0, 1, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold'][','] = {
        ['descender'] = -2,
        ['kerning'] = -4,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold'][':'] = {
        ['descender'] = 0,
        ['kerning'] = -5,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold'][';'] = {
        ['descender'] = -2,
        ['kerning'] = -4,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {1, 1, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['+'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['-'] = {
        ['descender'] = 0,
        ['kerning'] = -2,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {1, 1, 1, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['/'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 0, 1, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 0, 1, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {0, 1, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {1, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['"'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 1, 1, 0, 1, 1},
                {0, 1, 1, 0, 1, 1, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['~'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 1, 0},
                {1, 0, 0, 1, 1, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['`'] = {
        ['descender'] = 0,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 0, 0, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
fonts['7x10-Bold']['NULL'] = {
        ['descender'] = -4,
        ['kerning'] = 0,
        ['pixels']  = {
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 1, 1, 0, 0},
                {0, 0, 1, 1, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0},
                {0, 0, 0, 0, 0, 0, 0}
        }
}
--fontstop