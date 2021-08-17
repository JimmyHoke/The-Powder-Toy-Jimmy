--cracker1000 mod script v4.6--
local toggle = Button:new(420,408,50,15, "Settings", "Open Mod Settings.")
local newmenu = Window:new(-15,-15, 610, 303)
local creditstxt1 = Label:new(110,-20,100, 60,"Welcome to the Mod settings. Tip: 'J' can be used as a shortcut.")
newmenu:addComponent(creditstxt1)

local deletesparkButton =  Button:new(10,28,75,30,"Interface", "shows UI related stuff.")
local dellb = Label:new(101, 34, 10, 15, "Shown")

local FPS = Button:new(10,60,75,30, "Frame limiter", "Turns the frame limiter on/off.")
local fplb = Label:new(94, 68, 10, 15, "ON")

local reset= Button:new(10,92,75,30,"Reset", "Reset everything.")

local info= Button:new(10,124,75,30,"Stack tools", "Usefull for subframe.")

local Ruler = Button:new(10,156,75,30, "Ruler", "Toggles in game ruler.")
local rulb = Label:new(94, 162, 10, 15, "OFF")

local rc = Button:new(10,188,75,30,"Record", "Options for recording frames")
local rc1 = Button:new(90,188,80,20,"Start", "Starts recording")
local rc2 = Button:new(90,206,80,20,"Stop","Stops recording")

local bar = Button:new(10,220,75,30,"Top bar", "Toggle top bar")
local barlb = Label:new(94, 228, 10, 15, " Long")
local baropa =  Button:new(116,222,35,20,"Short", "Short and moving")
local baropb =  Button:new(116,242,35,20,"Long", "Long")
local baropc =  Button:new(156,222,35,20,"Move", "Moving")
local baropd =  Button:new(156,242,35,20,"OFF", "Turn off")

local bug = Button:new(10,252,75,30,"Feedback", "Direct to Mod thread for bug report.")
local bug1 = Button:new(90,252,50,30,"Website", "Direct to Mod thread for bug report.")
local bug2 = Button:new(145,252,50,30,"In game", "Direct to Mod thread for bug report.")

local wiki  =  Button:new(203,28,80,30,"Wiki", "Element wiki!")

local bare = Button:new(203,60,80,30,"Hidden Elem.", "Toggle hidden elements.")
local remlabe = Label:new(294, 66, 10, 15, "OFF")

local mp = Button:new(203,92,80,30,"Theme", "Changes game's theme")
local mp1 = Button:new(293,92,75,20,"Dark", "Change the theme to default")
local mp2 = Button:new(293,112,75,20,"Fire", "Change the theme to Blue")
local mp3 = Button:new(293,132,75,20,"Aqua", "Change the theme to Red")
local mp4 = Button:new(293,152,75,20,"Forest", "Change the theme to Green")
local mp5 = Button:new(293,172,75,20,"Sun", "Change the theme to Yellow")
local mp6 = Button:new(293,192,75,20,"Orange", "Change the theme to Orange")
local mp7 = Button:new(293,212,75,20,"Vanilla", "Change the theme back to Plain white")
local mp8 = Button:new(293,232,75,20,"Pulse", "RBG makes everything better.")
local mp9 = Button:new(293,252,75,20,"Custom", "Custom options.")
local als = Label:new(491,198, 10, 15, "Alpha")
local rl = Label:new(486, 218, 10, 15, "Red")
local gl = Label:new(490, 238, 10, 15, "Green")
local bl = Label:new(488, 258, 10, 15, "Blue")

local aSlider = Slider:new(373, 198, 100, 15, 255)
local rSlider = Slider:new(373, 218, 100, 15, 255)
local gSlider = Slider:new(373, 238, 100, 15, 255)
local bSlider = Slider:new(373, 258, 100, 15, 255)

local alb = Label:new(520,198,10, 15)
local rlb = Label:new(520, 218, 10, 15)
local glb = Label:new(520, 238, 10, 15)
local blb = Label:new(520, 258, 10, 15)

local mpop = Button:new(385,275,75,20,"Done", "Custom options.")

local bg = Button:new(203,124,80,30,"Filters", "Sets different backgrounds.")
local bg1 = Button:new(293,124,75,20,"BLACK", "Default")
local bg2 = Button:new(293,146,75,20,"BLUE", "Blue background")
local bg3 = Button:new(293,166,75,20,"RED", "Red background")
local bg4 = Button:new(293,186,75,20,"GREEN", "Green background")
local bg5 = Button:new(293,206,75,20,"YELLOW", "Yellow background")

local autohide= Button:new(203,156,80,30, "Auto Hide HUD", "Hide.")
local autolb = Label:new(294, 162, 10, 15, "OFF")

local chud = Button:new(203,188,80,30, "Texter", "for text.")

local brightness = Button:new(203,220,80,30, "Brightness", "Adjust brightness.")
local brightSlider = Slider:new(293,220, 100, 15, 255)

local brop = Button:new(293,235,45,20,"On", "Save.")
local bropc = Button:new(342,235,45,20,"Off", "Cancel.")
local brlabel = Label:new(340, 210, 10, 15, "Turned: Off")

local reminder = Button:new(203,252,80,30, "Reminder", "reminds after 30 mins.")
local remtime = Textbox:new(293, 255, 80, 15, '', 'Time in min.')
remtime:text("10")
local remon2 = Button:new(333,272,40,20,"On", "Save.")
local remoff  = Button:new(293,272,40,20,"Off", "Cancel.")
local remlabel = Label:new(63, 287, 10, 15, "Reminder is on 10 mins")
local remlabel21 = Label:new(413, 255, 20, 15, "Time in min. (0-60)")

local fancur = Button:new(396,28,80,30, "Crosshair", "Draws graphics around cursor.")
local fanlb = Label:new(487, 34, 10, 15, "OFF")

local Help = Button:new(396,60,80,30, "Random save", "Opens random save.")

local shrt = Button:new(396,92,80,30, "Toggle J Key", "Turns off the J key shortcut")
local shrtlb = Label:new(485, 98, 10, 15, "ON")
local edito = Button:new(396,124,80,30, "Editor", "Basic element editor.")

local perfm = Button:new(396,156,80,30, "Performance", "For lower spec systems.")
local perlab = Label:new(485, 162, 10, 15, "OFF")

local hide= Button:new(528,281,80,20, "Close Menu", "Hide.")

function clearm()
newmenu:removeComponent(reset)
newmenu:removeComponent(FPS)
newmenu:removeComponent(deletesparkButton)
newmenu:removeComponent(hide)
newmenu:removeComponent(info)
newmenu:removeComponent(Ruler)
newmenu:removeComponent(mp)
newmenu:removeComponent(rc)
newmenu:removeComponent(bg)
newmenu:removeComponent(bug)
newmenu:removeComponent(bar)
newmenu:removeComponent(bare)
newmenu:removeComponent(wiki)
newmenu:removeComponent(autohide)
newmenu:removeComponent(chud)
newmenu:removeComponent(brightness)
newmenu:removeComponent(reminder)
newmenu:removeComponent(fancur)
newmenu:removeComponent(Help)
newmenu:removeComponent(shrt)
newmenu:removeComponent(edito)
newmenu:removeComponent(perfm)
end

function clearsb()
newmenu:removeComponent(rc1)
newmenu:removeComponent(rc2)
newmenu:removeComponent(bug1)
newmenu:removeComponent(bug2)
newmenu:removeComponent(bg1)
newmenu:removeComponent(bg2)
newmenu:removeComponent(bg3)
newmenu:removeComponent(bg4)
newmenu:removeComponent(bg5)
newmenu:removeComponent(mp1)
newmenu:removeComponent(mp2)
newmenu:removeComponent(mp3)
newmenu:removeComponent(mp4)
newmenu:removeComponent(mp5)
newmenu:removeComponent(mp6)
newmenu:removeComponent(mp7)
newmenu:removeComponent(mp8)
newmenu:removeComponent(mp9)
newmenu:removeComponent(rSlider)
newmenu:removeComponent(gSlider)
newmenu:removeComponent(bSlider)
newmenu:removeComponent(aSlider)
newmenu:removeComponent(als)
newmenu:removeComponent(rl)
newmenu:removeComponent(gl)
newmenu:removeComponent(bl)
newmenu:removeComponent(rlb)
newmenu:removeComponent(glb)
newmenu:removeComponent(blb)
newmenu:removeComponent(alb)
newmenu:removeComponent(mpop)
newmenu:removeComponent(brop)
newmenu:removeComponent(bropc)
newmenu:removeComponent(brlabel)
newmenu:removeComponent(brightSlider)
newmenu:removeComponent(remon2)
newmenu:removeComponent(remoff)
newmenu:removeComponent(remtime)
newmenu:removeComponent(remlabel21) 
newmenu:removeComponent(baropa)
newmenu:removeComponent(baropb)
newmenu:removeComponent(baropc)
newmenu:removeComponent(baropd)
newmenu:onDraw(drawglitch)
end

local perfmv = "1"
local fpsval = "1"

perfm:action(function(sender)
clearsb()

if perfmv == "1" then
tpt.setfpscap(80)
tpt.setdrawcap(35)
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
local editomenu = Window:new(-15,-15, 610, 365)
local doned = Button:new(310,347,80,15, "Done", "Edit")
local cancel = Button:new(210,347,80,15, "Cancel", "Hide.")
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
editomenu:addComponent(cancel)

ui.showWindow(editomenu)


doned:action(function(sender)
function errormsg()
graphics.drawText(400,351,"Please Enter Valid Element Name!", 255,0,0,255)
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
randsav = math.random(1,2731295)
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

local fanval = "1"
fancur:action(function(sender)
clearsb()
if fanval == "1" then
MANAGER.savesetting("CRK", "fancurs","1") 
event.register(event.tick,drawcirc)
fanlb:text("ON")
fanval = "0"
if MANAGER.getsetting("CRK", "brightstate") == "1" then
event.unregister(event.tick,cbrightness)
event.register(event.tick,cbrightness)
end

elseif fanval == "0" then
MANAGER.savesetting("CRK", "fancurs","0") 
event.unregister(event.tick,drawcirc)
fanval = "1"
fanlb:text("OFF")
end
end)

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
if tonumber(remtime:text()) <= 0 or tonumber(remtime:text()) > 60 then
entimey = "10"
else
entimey = tonumber(remtime:text())
end
event.unregister(event.tick,remindme)
event.register(event.tick,remindme)
newmenu:addComponent(remlabel)
newmenu:removeComponent(remoff)
newmenu:removeComponent(remlabel21)
remlabel:text("Reminder is on "..entimey.." mins.")
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
fs.makeDirectory("scripts")
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
yvalue = 50
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

chud:action(function(sender)

function drawglitch2()
graphics.drawLine(12,85,560,85,ar,ag,ab,250)
end

close()
local newmenu4 = Window:new(1,1, 610, 405)
local scripthelp2 = Label:new(13,5,120, 20,"Welcome to the texter 4.0")
ui.showWindow(newmenu4)
local yvalue = 30
linenumber = 01
local mouseX, mouseY = tpt.mousex, tpt.mousey
local text, element, font = '', 'DMND', '5x7'
local textTextbox = Textbox:new(10, 30, 505, 20, '', 'Type the text here. Press enter once done. New lines are inserted automatically.')
local textTextboxs = Textbox:new(96, 55, 42, 20, '', 'Element')
local scripthelp23 = Label:new(10,90,40, 10,"Preview:")
local scripthelp = Label:new(10,90,630, 300,"")
local place = Button:new(10,55,40,20,"Enter", "Toggle hidden elements.")
local cancel= Button:new(52,55,40,20,"Close", "Cancel the element placement.")
local lno  = Label:new(473, 58, 10, 15, "| Line No:")
local lnol  = Label:new(505, 58, 10, 15, linenumber)
local lno2  = Label:new(160, 58, 10, 15, "Font:")
local smalf = Button:new(180,55,46,20,"Normal", "5x7.")
local bigf = Button:new(230,55,46,20,"Big", "7x10.")
local fsize  = Label:new(415, 58, 10, 15, "Font: Normal")
local clrsc = Button:new(520,30,40,20,"Clear", "Clear text")

newmenu4:addComponent(textTextbox)
newmenu4:addComponent(textTextboxs)
newmenu4:addComponent(scripthelp) 
newmenu4:addComponent(scripthelp2) 
newmenu4:addComponent(scripthelp23) 
newmenu4:addComponent(place)
newmenu4:addComponent(cancel)
newmenu4:addComponent(lno)
newmenu4:addComponent(lno2)
newmenu4:addComponent(lnol)
newmenu4:addComponent(smalf)
newmenu4:addComponent(bigf)
newmenu4:addComponent(fsize)
newmenu4:addComponent(clrsc)
newmenu4:onDraw(drawglitch2)

 textTextbox:onTextChanged(
                    function(sender)
                            text = textTextbox:text();
                    end
                )

 textTextboxs:onTextChanged(
                    function(sender)
                            element = textTextboxs:text();
                    end
                )

local ffix = "0"
local fx = "1"
local fontdis = "N"

smalf:action(function(sender)
font='5x7'
ffix = "0"
fontdis = "N"
fsize:text("Font: Normal")
end)

bigf:action(function(sender)
font='7x10'
ffix = "1"
fontdis = "B"
fsize:text("Font:  Big")
end)

cancel:action(function(sender)
newmenu4:removeComponent(scripthelp)
newmenu4:removeComponent(scripthelp2)
newmenu4:removeComponent(scripthelp23)
newmenu4:removeComponent(textTextbox)
newmenu4:removeComponent(textTextboxs)
newmenu4:removeComponent(place)
newmenu4:removeComponent(cancel)
newmenu4:removeComponent(lno)
newmenu4:removeComponent(lno2)
newmenu4:removeComponent(lnol)
newmenu4:removeComponent(smalf)
newmenu4:removeComponent(bigf)
newmenu4:removeComponent(fsize)
newmenu4:removeComponent(clrsc)

ui.closeWindow(newmenu4)
end)
local texth = scripthelp:text()
local valueplace = 0

clrsc:action(function(sender)
textTextbox:text("")
end)

place:action(function(sender)
if linenumber >22 and valueplace == 0 then
scripthelp:text("")
valueplace = 1
end
 
if yvalue < 360 then
text = textTextbox:text();
texth = scripthelp:text()
if ffix == "1" then
scripthelp:text(texth..text.." L:"..linenumber.." ("..fontdis..") \n")
else
scripthelp:text(texth..text.." L:"..linenumber.." ("..fontdis..") \n")
end

if ffix == "1" then
yvalue = yvalue + 14
else
yvalue = yvalue + 12
end

textTextbox:text('')
linenumber = linenumber + 1
lnol:text(linenumber)

if linenumber <=  33 then
drawText(string.gsub(text, '\\n', '\n') .. '\n', 10, yvalue, element, font)
end

if linenumber == 2 then 
scripthelp:text("                                                                                                                            .\n"..texth..text.." L:1".." ("..fontdis..") \n")
end

if linenumber == 24 then 
scripthelp:text("                                                                                                                            .\n"..texth..text.." L:24".." ("..fontdis..") \n")
end

if yvalue > 355 then
scripthelp:text(texth..text.." Max lines reached.")
end
end
end)
end)
--Texter script hybrid end

function autohidehud()
	if tpt.mousey <= 38 then tpt.hud(0) else tpt.hud(1)
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

local creditstxt = Label:new(6,-22, 598, 418,"\n\n                                         << Welcome To The Element Wiki >>\n\n01) CWIR: Customisable wire. Conduction speed set using .tmp property (Range is 0 to 8) \n.tmp2 property is used for setting melting point (default is 2000C).\n\n02) VSNS: Velocity sensor. Creates sprk when there's a particle with velocity higher than its temp.\n\n03) TIMC: Time Crystal, converts into it's ctype when sparked with PSCN. Timer set using .tmp, default is 100.\n\n04) FUEL: Powerful fuel, explodes when temp is above 50C or Pressure above 14.\n\n05) THRM: Thermostat. Maintains the surrounding temp based on its own .temp property.\n\n06) CLNT: Coolant. Cools down the temp of the system. Use .tmp to configure the cooling/heating power.\nEvaporates at extreme temperatures into WTRV.\n\n07) DMRN: Demron. Radioactive shielding material and a better indestructible heat insulator.\nIt can also block energy particles like PROT.\n\n08) FNTC & FPTC: Faster versions of NTCT and PTCT. Useful for making faster logic gates.\n\n09) PINV: Powered Invisible, allows particles to move through it only when activated. Use with PSCN and NSCN.\n\n10) UV: UV rays, harms stkms (-5 life every frame), visible with FILT, grows plnt, can sprk pscn and evaporates watr.\nCan split WATR into O2 and H2 when passed through FILT. \n\n11) SUN.: Emits rays which makes PLNT grow in direction of sun, emits UV radiation, makes PSCN spark and heals STKMs.\n\n12) CLUD: Realistic cloud, rains and creates LIGH after sometime (every 1000 frames). Cool below 0C to make it snow.\n\n13) LITH2: Lithium ion battery, Use with PSCN and NSCN. Charges with INST when deactivated. Life sets capacity.\nReacts with different elements like O2, WATR, ACID etc as IRL.\n")

local creditstxt2 = Label:new(6,-25, 598, 418,"\n\n  14) LED:  Light Emmiting Diode. Use PSCN to activate and NSCN to deactivate. Temp sets the brightness.\n  Different .tmp2 modes: 0 = white, 1= red, 2= green, 3 =blue, 4= yellow, 5 = pink and 6 = Flash mode.  \n\n  15) QGP: Quark Gluon Plasma, bursts out radiation afer sometime. Turns into Purple QGP when under 100C which is stable.\n  Glows in different colours just before exploding. \n\n  16) TMPS: .tmp sensor, creats sprk when there is an element with higher .tmp than its temp. Supports .tmp deserialisation.\n\n  17) PHOS: Phosphorus. Shiny white  particle when spawned, slowly turns into red phosphorus with time. \n  Burns blue or red  when in contact with CFLM or O2 respectively, (based on on .tmp).\n  Oil reverses the oxidation turning it back into white PHOS. Melts at 45C. Glows under UV.\n\n  18) CMNT: Cement, creates an exothermic reaction when mixed with water and gets solidified, darkens when solid.\n\n  19) NTRG: Nitrogen gas, liquifies to LN2 when cooled or when under pressure, reacts with H2 to make NITR and puts out fire.\n\n  20) PRMT: Promethium, radioactive element. Catches fire at high velocity (>12), creats NEUT when mixed with PLUT. \n  Explodes at low temp and emits neut at high temp.\n\n  21) BEE: Eats PLNT. Makes wax when in contact with wood and life > 75.  Attacks STKMs and FIGH can regulate temp.\n  Gets aggresive if life gets below 30. Tries to return to center when life >90. Falls down when life is low.\n\n  22) ECLR: Electronic eraser, clears the defined radius (.tmp) when activated (Use with PSCN and NSCN). \n\n  23) PROJ: Projectile, converts into its's ctype upon collision. launch with PSCN. Temperature = power while .tmp = range.\n  Limits: Both .tmp and temp. if set to negative or >100 will be reset.\n\n  24) PPTI and PPTO: Powered Versions of PRTI and PRTO, use with PSCN and NSCN.\n\n  25) SEED: Grows into PLNT of random height when placed on DUST/SAND/CLST and Watered. Needs warm temp. to grow.")

local creditstxt3 = Label:new(6,-25, 598, 418," \n\n\n  26) CSNS: Ctype sensor, detects nearby element's ctype. Useful when working with LAVA.\n\n  27) CPPR: Copper, excellent conductor. Loses conductivity when oxidised with O2 or when it is heated around temp. of 300C.\n  Oxide form breaks apart when under pressures above 4.0. Becomes a super conductor when cooled below -200C.\n\n  28) CLRC: Clear coat. A white fluid that coats solids. Becomes invisible with UV. Non conductive and acid resistant.\n\n  29) CEXP: Customisable explosive. Use .tmp for setting the temp. at which it explodes.\n\n  .Ctype decides the element it explodes into.\n  .Life and .tmp2 determines the pressure and temperature respectively that it generates while exploding.\n  Limits: Life = -256 to 256, Tmp2 and tmp = -273 to 9724. \n\n  30) PCON: Powered CONV. Use with PSCN and NSCN. Set its Ctype carefully!\n\n  31) STRC: Structure, Falls apart without support. CNCT and Solids can support it. \n  .tmp2 = Max overhang strength. (Default = 10). \n\n  32) BFLM: Black Flames. Burns everything it touches even VIRS, can't be stopped. DMRN & energy particles are immune to it.\n\n  33) TURB: Turbine, generates sprk under pressure. Discharges to PSCN. Changes colour as per pressure. \n  Performance = Poor when pressure is >4 and <16, Moderate above >16, Best above 30, breaks around 50.\n\n\n  You have reached the end of wiki. \n \n\n\n\n\n\n")

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

bg:action(function(sender)
clearsb()
newmenu:addComponent(bg1)
newmenu:addComponent(bg2)
newmenu:addComponent(bg3)
newmenu:addComponent(bg4)
newmenu:addComponent(bg5)
end)

backvr = 0
backvg = 0
backvb = 0

function backg()
if MANAGER.getsetting("CRK", "brightstate") == "1" then
as = brightSlider:value()
else
as = 60
end

if(as<30)then
as = 30
end

if(as>110)then
as = 110
end

tpt.fillrect(0,-1,610,385,backvr,backvg,backvb,as)
end

function clearback()
clearsb()
event.unregister(event.tick,backg)
event.register(event.tick,backg)
if MANAGER.getsetting("CRK", "brightstate") == "1" then
event.unregister(event.tick,cbrightness)
event.register(event.tick,cbrightness)
end
end

bg1:action(function(sender)
clearsb()
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
backvr = 200
backvg = 200
backvb = 0
clearback()
end)

rc:action(function(sender)
clearsb()
newmenu:addComponent(rc1)
newmenu:addComponent(rc2)
end)

rc1:action(function(sender)
tpt.record(true)
ui.closeWindow(newmenu) 
newmenu:removeComponent(rc1)
newmenu:removeComponent(rc2)
end)

rc2:action(function(sender)
ui.closeWindow(newmenu) 
tpt.record(false)
ui.closeWindow(newmenu) 
newmenu:removeComponent(rc1)
newmenu:removeComponent(rc2)
end)

local barval = MANAGER.getsetting("CRK","barval")
bar:action(function(sender)
clearsb()
fs.makeDirectory("scripts")
newmenu:addComponent(baropa)
newmenu:addComponent(baropb)
newmenu:addComponent(baropc)
newmenu:addComponent(baropc)
newmenu:addComponent(baropd)

baropa:action(function(sender)
barlb:text(" Short")
clearsb()
MANAGER.savesetting("CRK","barval","1")
end)

baropb:action(function(sender)
barlb:text(" Long")
MANAGER.savesetting("CRK","barval","2")
clearsb()
end)

baropc:action(function(sender)
barlb:text(" Move")
MANAGER.savesetting("CRK","barval","3")
clearsb()
end)

baropd:action(function(sender)
barlb:text("OFF")
barlength = 1
MANAGER.savesetting("CRK","barval","4")
clearsb()
end)

end)

local barlength = "1"
function theme()
ar = MANAGER.getsetting("CRK", "ar")
ag = MANAGER.getsetting("CRK", "ag")
ab = MANAGER.getsetting("CRK", "ab")

if MANAGER.getsetting("CRK", "brightstate") ~= "1" then
al = MANAGER.getsetting("CRK", "al")
else
al = brightSlider:value()
end

tpt.drawrect(613,103,14,14,ar,ag,ab,al)

--Topbar
barval = MANAGER.getsetting("CRK","barval")
if barval == nil then
tpt.fillrect(1,0,610,3, ar,ag,ab,al)
end

if barval ~= "4" then

if barval == "1" then
if tonumber(barlength) <= 202 then
barlength = barlength + "2"
end
tpt.fillrect(tonumber(barlength),0,tonumber(barlength),3, ar,ag,ab,al)
end

if barval == "2" then
tpt.fillrect(1,0,610,3, ar,ag,ab,al)
end

if barval == "3" then
if tonumber(barlength) <= 294 then
barlength = barlength + "2"
end

if tonumber(barlength) >= 290 then
barlength = "1"
end
tpt.fillrect(tonumber(barlength),0,tonumber(barlength)+ 20,3, ar,ag,ab,al)
end
end
--Topbarend

tpt.drawline(419,408,419,421,ar,ag,ab,al)

tpt.drawrect(613,119,14,15,ar,ag,ab,al)
tpt.drawrect(613,1,14,95,ar,ag,ab,al)
tpt.drawrect(613,136,14,269,ar,ag,ab,al)
tpt.drawline(612,408,612,421,ar,ag,ab,al)
tpt.drawline(187,409,187,422,ar,ag,ab,al)
tpt.drawline(469,408,469,421,ar,ag,ab,al)
tpt.drawline(487,408,487,421,ar,ag,ab,al)
tpt.drawline(241,408,241,421,ar,ag,ab,al)
tpt.drawline(36,408,36,421,ar,ag,ab,al)
tpt.drawline(18,408,18,421,ar,ag,ab,al)
tpt.drawline(580,409,580,422,ar,ag,ab,al)
tpt.drawline(596,409,596,422,ar,ag,ab,al)
tpt.drawrect(1,408,626,14,ar,ag,ab,al)
tpt.drawline(613,16,627,16,ar,ag,ab,al)
tpt.drawline(613,32,627,32,ar,ag,ab,al)
tpt.drawline(613,48,627,48,ar,ag,ab,al)
tpt.drawline(613,64,627,64,ar,ag,ab,al)
tpt.drawline(613,80,627,80,ar,ag,ab,al)
tpt.drawline(613,151,627,151,ar,ag,ab,al)
tpt.drawline(613,167,627,167,ar,ag,ab,al)
tpt.drawline(613,183,627,183,ar,ag,ab,al)
tpt.drawline(613,199,627,199,ar,ag,ab,al)
tpt.drawline(613,215,627,215,ar,ag,ab,al)
tpt.drawline(613,231,627,231,ar,ag,ab,al)
tpt.drawline(613,247,627,247,ar,ag,ab,al)
tpt.drawline(613,263,627,263,ar,ag,ab,al)
tpt.drawline(613,279,627,279,ar,ag,ab,al)
tpt.drawline(613,295,627,295,ar,ag,ab,al)
tpt.drawline(613,311,627,311,ar,ag,ab,al)
tpt.drawline(613,327,627,327,ar,ag,ab,al)
tpt.drawline(613,343,627,343,ar,ag,ab,al)
tpt.drawline(613,359,627,359,ar,ag,ab,al)
tpt.drawline(613,375,627,375,ar,ag,ab,al)
tpt.drawline(613,391,627,391,ar,ag,ab,al)

end

frameCount,colourRED,colourGRN,colourBLU = 0,0,0,0
function colourblender()
if MANAGER.getsetting("CRK", "brightstate") ~= "1" then
al = 220
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

tpt.drawrect(613,103,14,14,colourRED,colourGRN,colourBLU,al)


--Topbar
barval = MANAGER.getsetting("CRK","barval")
if barval == nil then
tpt.fillrect(1,0,610,3, colourRED,colourGRN,colourBLU,al)
end

if barval ~= "4" then
if barval == "1" then
if tonumber(barlength) <= 202 then
barlength = barlength + "2"
end
tpt.fillrect(tonumber(barlength),0,tonumber(barlength),3, colourRED,colourGRN,colourBLU,al)
end

if barval == "2" then
tpt.fillrect(1,0,610,3, colourRED,colourGRN,colourBLU,al)
end

if barval == "3" then
if tonumber(barlength) <= 294 then
barlength = barlength + "2"
end

if tonumber(barlength) >= 290 then
barlength = "1"
end
tpt.fillrect(tonumber(barlength),0,tonumber(barlength)+ 20,3, colourRED,colourGRN,colourBLU,al)
end
end
--Topbarend

tpt.drawline(419,408,419,421,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,119,14,15,colourRED,colourGRN,colourBLU,al)

tpt.drawrect(613,1,14,95,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(613,136,14,269,colourRED,colourGRN,colourBLU,al)
tpt.drawline(612,408,612,421,colourRED,colourGRN,colourBLU,al)
tpt.drawline(187,409,187,422,colourRED,colourGRN,colourBLU,al)
tpt.drawline(469,408,469,421,colourRED,colourGRN,colourBLU,al)
tpt.drawline(487,408,487,421,colourRED,colourGRN,colourBLU,al)

tpt.drawline(241,408,241,421,colourRED,colourGRN,colourBLU,al)
tpt.drawline(36,408,36,421,colourRED,colourGRN,colourBLU,al)
tpt.drawline(18,408,18,421,colourRED,colourGRN,colourBLU,al)
tpt.drawline(580,409,580,422,colourRED,colourGRN,colourBLU,al)
tpt.drawline(596,409,596,422,colourRED,colourGRN,colourBLU,al)
tpt.drawrect(1,408,626,14,colourRED,colourGRN,colourBLU,al)

tpt.drawline(613,16,627,16,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,32,627,32,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,48,627,48,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,64,627,64,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,80,627,80,colourRED,colourGRN,colourBLU,al)

tpt.drawline(613,151,627,151,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,167,627,167,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,183,627,183,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,199,627,199,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,215,627,215,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,231,627,231,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,247,627,247,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,263,627,263,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,279,627,279,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,295,627,295,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,311,627,311,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,327,627,327,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,343,627,343,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,359,627,359,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,375,627,375,colourRED,colourGRN,colourBLU,al)
tpt.drawline(613,391,627,391,colourRED,colourGRN,colourBLU,al)
end

function mpnolag()
if perlab:text() == "OFF" then
event.unregister(event.tick,theme)
event.register(event.tick,theme)
end
barlength = 1
event.unregister(event.tick,colourblender)
end

mp:action(function(sender)
clearsb()
fs.makeDirectory("scripts")
newmenu:addComponent(mp1)
newmenu:addComponent(mp2)
newmenu:addComponent(mp3)
newmenu:addComponent(mp4)
newmenu:addComponent(mp5)
newmenu:addComponent(mp6)
newmenu:addComponent(mp7)
newmenu:addComponent(mp8)
newmenu:addComponent(mp9)
end)

mp1:action(function(sender)
MANAGER.savesetting("CRK","savergb",2)
MANAGER.savesetting("CRK","ar",40)
MANAGER.savesetting("CRK","ag",40)
MANAGER.savesetting("CRK","ab",40)
MANAGER.savesetting("CRK","al",200)
mpnolag()
clearsb()
end)

mp2:action(function(sender)
MANAGER.savesetting("CRK","savergb",2)
MANAGER.savesetting("CRK","ar",255)
MANAGER.savesetting("CRK","ag",0)
MANAGER.savesetting("CRK","ab",0)
MANAGER.savesetting("CRK","al",200)
mpnolag()
clearsb()
end)

mp3:action(function(sender)
MANAGER.savesetting("CRK","savergb",2)
MANAGER.savesetting("CRK","ar",0)
MANAGER.savesetting("CRK","ag",0)
MANAGER.savesetting("CRK","ab",255)
MANAGER.savesetting("CRK","al",200)
mpnolag()
clearsb()
end)

mp4:action(function(sender)
MANAGER.savesetting("CRK","savergb",2)
MANAGER.savesetting("CRK","ar",0)
MANAGER.savesetting("CRK","ag",255)
MANAGER.savesetting("CRK","ab",0)
MANAGER.savesetting("CRK","al",200)
mpnolag()
clearsb()
end)

mp5:action(function(sender)
MANAGER.savesetting("CRK","savergb",2)
MANAGER.savesetting("CRK","ar",250)
MANAGER.savesetting("CRK","ag",250)
MANAGER.savesetting("CRK","ab",0)
MANAGER.savesetting("CRK","al",200)
mpnolag()
clearsb()
end)

mp6:action(function(sender)
MANAGER.savesetting("CRK","savergb",2)
MANAGER.savesetting("CRK","ar",255)
MANAGER.savesetting("CRK","ag",150)
MANAGER.savesetting("CRK","ab",0)
MANAGER.savesetting("CRK","al",200)
mpnolag()
clearsb()
end)

mp7:action(function(sender)
MANAGER.savesetting("CRK","savergb",2)
MANAGER.savesetting("CRK","ar",210)
MANAGER.savesetting("CRK","ag",210)
MANAGER.savesetting("CRK","ab",210)
MANAGER.savesetting("CRK","al",200)
mpnolag()
clearsb()
end)

mp8:action(function(sender)
MANAGER.savesetting("CRK","savergb",1)
event.unregister(event.tick,colourblender)
event.register(event.tick,colourblender)
event.unregister(event.tick,theme)
barlength = 1
clearsb()
end)

mp9:action(function(sender)
mpnolag()
MANAGER.savesetting("CRK","savergb",2)
if MANAGER.getsetting("CRK","ar") == nil then
MANAGER.savesetting("CRK","ar",70)
end
if MANAGER.getsetting("CRK","ag") == nil then
MANAGER.savesetting("CRK","ag",70)
end
if MANAGER.getsetting("CRK","ab") == nil then
MANAGER.savesetting("CRK","ab",70)
end
if MANAGER.getsetting("CRK","al") == nil then
MANAGER.savesetting("CRK","al",255)
end

function drawprev()

graphics.drawRect(558,218,24,24,255,255,255,255)
graphics.fillRect(560,220,20,20,MANAGER.getsetting("CRK", "ar"),MANAGER.getsetting("CRK", "ag"),MANAGER.getsetting("CRK", "ab"),MANAGER.getsetting("CRK", "al"))
end
newmenu:onDraw(drawprev)

rlb:text(MANAGER.getsetting("CRK", "ar"))
glb:text(MANAGER.getsetting("CRK", "ag"))
blb:text(MANAGER.getsetting("CRK", "ab"))
alb:text(MANAGER.getsetting("CRK", "al"))

rSlider:onValueChanged(function() rclr = rSlider:value() rlb:text(rclr) MANAGER.savesetting("CRK","ar", rSlider:value()) end)
gSlider:onValueChanged(function() gclr = gSlider:value() glb:text(gclr) MANAGER.savesetting("CRK","ag",gSlider:value()) end)
bSlider:onValueChanged(function() bclr = bSlider:value() blb:text(bclr) MANAGER.savesetting("CRK","ab",bSlider:value())  end)

aSlider:onValueChanged(function()
if aSlider:value() < 100 then
aSlider:value("100")
end
aclr = aSlider:value() 
alb:text(aclr) 
MANAGER.savesetting("CRK","al",aSlider:value()) 
end)

aSlider:value(MANAGER.getsetting("CRK", "al"))
rSlider:value(MANAGER.getsetting("CRK", "ar"))
gSlider:value(MANAGER.getsetting("CRK", "ag"))
bSlider:value(MANAGER.getsetting("CRK", "ab"))

if MANAGER.getsetting("CRK", "brightstate") ~= "1" then
newmenu:addComponent(aSlider)
newmenu:addComponent(als)
newmenu:addComponent(alb)
end

newmenu:addComponent(rSlider)
newmenu:addComponent(gSlider)
newmenu:addComponent(bSlider)
newmenu:addComponent(rl)
newmenu:addComponent(gl)
newmenu:addComponent(bl)
newmenu:addComponent(rlb)
newmenu:addComponent(glb)
newmenu:addComponent(blb)
newmenu:addComponent(mpop)

mpop:action(function(sender)
newmenu:removeComponent(rSlider)
newmenu:removeComponent(gSlider)
newmenu:removeComponent(bSlider)
newmenu:removeComponent(rl)
newmenu:removeComponent(gl)
newmenu:removeComponent(bl)
newmenu:removeComponent(rlb)
newmenu:removeComponent(glb)
newmenu:removeComponent(blb)
newmenu:removeComponent(mpop)
clearsb()
end)
end)

function startupcheck()
interface.addComponent(toggle)
if MANAGER.getsetting("CRK", "savergb") == "2" then
event.register(event.tick,theme)
else
event.register(event.tick,colourblender)
end

if MANAGER.getsetting("CRK", "hidestate") == "1" then
hideno()
hidval = "0"
remlabe:text("ON")
end

if MANAGER.getsetting("CRK", "fancurs") == "1" then
event.register(event.tick,drawcirc)
fanval = "0"
fanlb:text("ON")
end

if MANAGER.getsetting("CRK", "brightstate") == "1" then
brightSlider:value(MANAGER.getsetting("CRK", "brightness"))
event.register(event.tick,cbrightness)
brlabel:text("Turned: on")
else
MANAGER.savesetting("CRK", "brightness",200)
end

if MANAGER.getsetting("CRK", "barval") == "1" then
barlb:text(" Short")

elseif MANAGER.getsetting("CRK", "barval") == "2" then
barlb:text(" Long")

elseif MANAGER.getsetting("CRK", "barval") == "3" then
barlb:text(" Move")

elseif MANAGER.getsetting("CRK", "barval") == "4" then
barlb:text(" OFF")

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

local uival = "1"
local unhd = Button:new(315,1,40,20, "Unhide", "Unhides The Interface.")
unhd:action(function(sender)
tpt.hud(1)
event.unregister(event.tick,UIhide)
uival = "1"
barval = "0"
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
barval = "1"
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
clearsb()
interface.removeComponent(unhd)
timerremo()
tpt.setdrawcap(0)
perfmv = "1"
autoval = "1"
fanval = "1"
shrtv = "1"
fpsval = "1"
uival = "1"
rulval = "1"
hidval = "1"
barval = "2"
autolb:text("OFF")
perlab:text("OFF")
shrtlb:text("ON")
fplb:text("ON")
rulb:text("OFF")
dellb:text("Shown")
barlb:text(" Long")
remlabe:text("OFF")
fanlb:text("OFF")
event.unregister(event.tick,drawcirc)
event.unregister(event.tick,remindme)
event.unregister(event.tick,backg)
event.unregister(event.tick,cbrightness)
event.unregister(event.tick,UIhide)
event.unregister(event.tick,autohidehud)
event.register(event.tick,colourblender)
newmenu:removeComponent(remlabel)
newmenu:removeComponent(remlabe)
brlabel:text("Turned: off")
brightSlider:value("200")
MANAGER.savesetting("CRK", "brightstate", "0")
MANAGER.savesetting("CRK","savergb",1)
MANAGER.savesetting("CRK","hidestate", "0")
MANAGER.savesetting("CRK", "fancurs","0")
MANAGER.savesetting("CRK", "barval", "2")
tpt.hud(1)
ui.closeWindow(newmenu) 
hideyes()
tpt.display_mode(3)
tpt.watertest(0)
sim.edgeMode(0) 
tpt.setfpscap(60)
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
end

function drawglitch()

if perlab:text() == "OFF" then
if MANAGER.getsetting("CRK", "savergb") == "2" then
theme()
graphics.drawLine(7, 18,314,18,ar,ag,ab,al)
graphics.drawRect(1,1, 610, 303,ar,ag,ab,al-20)
else
colourblender()
graphics.drawLine(7, 18,314,18,colourRED,colourGRN,colourBLU,al)
graphics.drawRect(1,1, 610, 303,colourRED,colourGRN,colourBLU,al-20)
end
end
backg()
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
newmenu:addComponent(rc)
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
newmenu:addComponent(fancur)
newmenu:addComponent(Help)
newmenu:addComponent(shrt)
newmenu:addComponent(shrtlb)
newmenu:addComponent(remlabe)
newmenu:addComponent(fanlb)
newmenu:addComponent(barlb)
newmenu:addComponent(dellb)
newmenu:addComponent(fplb)
newmenu:addComponent(rulb)
newmenu:addComponent(autolb)
newmenu:addComponent(edito)
newmenu:addComponent(perfm)
newmenu:addComponent(perlab)
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
--fontstop
-- Lower Case

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

-- Upper Case

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

-- Numbers

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
--fontstop