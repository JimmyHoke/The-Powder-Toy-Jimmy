The Cracker1000's Mod - 2021
=======
The Powder Toy - July 2021

Get the latest version [from here](https://powdertoy.co.uk/Discussions/Thread/View.html?Thread=23279) 

Build instructions
===========================================================================

See the _Powder Toy Development Help_ section [on the main page of the wiki](https://powdertoy.co.uk/Wiki/W/Main_Page.html).

Thanks
===========================================================================

* Cracker1000
* jacob1
* Maticzpl
* LBPHacker

Libraries and other assets used
===========================================================================

* [BSON](https://github.com/interactive-matter/bson-c)
* [bzip2](http://www.bzip.org/)
* [FFTW](http://fftw.org/)
* [JsonCpp](https://github.com/open-source-parsers/jsoncpp)
* [libcurl](https://curl.se/libcurl/)
* [Lua](https://www.lua.org/)
* [LuaJIT](https://luajit.org/)
* [LuaSocket](http://w3.impa.br/~diego/software/luasocket/)
* [Mallangche](https://github.com/JammPark/Mallangche)
* [SDL](https://libsdl.org/)
* [zlib](https://www.zlib.net/)

Instructions
===========================================================================

Click on the elements with the mouse and draw in the field, like in MS Paint. The rest of the game is learning what happens next.


Controls
===========================================================================

| Key                     | Action                                                          |
| ----------------------- | --------------------------------------------------------------- |
| TAB                     | Switch between circle/square/triangle brush                     |
| Space                   | Pause                                                           |
| Q / Esc                 | Quit                                                            |
| Z                       | Zoom                                                            |
| S                       | Save stamp (use with Ctrl when STK2 is out)                     |
| L                       | Load last saved stamp                                           |
| K                       | Stamp library                                                   |
| 0-9                     | Set view mode                                                   |
| P / F2                  | Save screenshot as .png                                         |
| E                       | Bring up element search                                         |
| F                       | Pause and step to next frame                                    |
| G                       | Increase grid size                                              |
| Shift + G               | Decrease grid size                                              |
| H                       | Show/Hide HUD                                                   |
| Ctrl + H / F1           | Show intro text                                                 |
| D / F3                  | Debug mode (use with Ctrl when STK2 is out)                     |
| I                       | Invert Pressure and Velocity map                                |
| W                       | Cycle gravity modes (use with Ctrl when STK2 is out)            |
| Y                       | Cycle air modes                                                 |
| B                       | Enter decoration editor menu                                    |
| Ctrl + B                | Toggle decorations on/off                                       |
| N                       | Toggle Newtonian Gravity on/off                                 |
| U                       | Toggle ambient heat on/off                                      |
| Ctrl + I                | Install powder toy, for loading saves/stamps by double clicking |
| Backtick                | Toggle console                                                  |
| =                       | Reset pressure and velocity map                                 |
| Ctrl + =                | Reset Electricity                                               |
| \[                      | Decrease brush size                                             |
| \]                      | Increase brush size                                             |
| Alt + \[                | Decrease brush size by 1                                        |
| Alt + \]                | Increase brush size by 1                                        |
| Ctrl + C/V/X            | Copy/Paste/Cut                                                  |
| Ctrl + Z                | Undo                                                            |
| Ctrl + Y                | Redo                                                            |
| Ctrl + Cursor drag      | Rectangle                                                       |
| Shift + Cursor drag     | Line                                                            |
| Middle click            | Sample element                                                  |
| Alt + Left click        | Sample element                                                  |
| Mouse scroll            | Change brush size                                               |
| Ctrl + Mouse scroll     | Change vertical brush size                                      |
| Shift + Mouse scroll    | Change horizontal brush size                                    |
| Shift + R               | Horizontal mirror for selected area when pasting stamps         |
| Ctrl + Shift + R        | Vertical mirror for selected area when pasting stamps           |
| R                       | Rotate selected area counterclockwise when pasting stamps       |



Command Line
---------------------------------------------------------------------------

| Command               | Description                                      | Example                           |
| --------------------- | ------------------------------------------------ | --------------------------------- |
| `scale:SIZE`          | Change window scale factor                       | `scale:2`                         |
| `kiosk`               | Fullscreen mode                                  |                                   |
| `proxy:SERVER[:PORT]` | Proxy server to use                              | `proxy:wwwcache.lancs.ac.uk:8080` |
| `open FILE`           | Opens the file as a stamp or game save           |                                   |
| `ddir DIRECTORY`      | Directory used for saving stamps and preferences |                                   |
| `ptsave:SAVEID`       | Open online save, used by ptsave: URLs           | `ptsave:2198`                     |
| `disable-network`     | Disables internet connections                    |                                   |
| `redirect`            | Redirects output to stdout.txt / stderr.txt      |                                   |
