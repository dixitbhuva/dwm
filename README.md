# DWM Version 6.5
## PATCHES:
### warp
This patch warps the mouse cursor to the center of the currently focused window or screen when the mouse cursor is
(a) on a different screen, or
(b) on top of a different window.
### alwayscenter
All floating windows are centered, like the center patch, but without a rule.
### attachbottom
New clients attach at the bottom of the stack instead of the top.
Some users find this to be a less obtrusive attachment behavior, since no existing clients are ever moved, only resized.
### truecenteredtitle
Center the title with proportion to the area that the title has, unlike the other center title patch that center proportion to the screen size width (m->ww), which on smaller monitors doesn't get the effect.
If the title name is to long (title area too small for the title string) it will back up to the default behaviour, which is to truncate the title.
### titlecolor
Adds a new color scheme used by the window title in the bar, so that its colors (foreground and background) can be changed independently.
### Cool autoatart
Allow dwm to execute commands from autostart array in your config.h file. And when you exit dwm all processes from autostart array will be killed.
```
static const char *const autostart[] = {
	"mpd-notification", NULL,
	"hsetroot", "-center", "/usr/home/bit6tream/pic/wallapper.png", NULL,
	"xrdb", "/usr/home/bit6tream/.config/X/Xresources", NULL,
	"sh", "-c", "while :; do dwmstatus.sh -; sleep 60; done", NULL,
	"dunst", NULL,
	"picom", NULL,
	NULL
};
```
Commands from array are executed using execvp(). So if you need to execute shell command you need to prefix it with "sh", "-c" (change sh to any shell you like).
### functionalgaps+pertag
Functionalgaps combines the beautifully simplistic gaps of fullgaps with the non-gaps of singularborders and noborder. It is named functionalgaps because, since gaps are purely aesthetic, and therefore not useful whatsoever, this patch adds to their functionality by allowing them to easily be turned off.

This patch is also unique because of its out of the box integration with pertag, allowing gaps to be enabled/disabled and sized on a per-tag basis.

Gaps, by default, can be toggled with [Alt]+[Shift]+[=], resized using [Alt]+[+] / [Alt]+[-], and reset using [Alt]+[Shift]+[-] just like fullgaps.

The config variables startwithgaps and gappx are avaliable to change basic behavior. The versions supporting pertag also have a feature to set these variables for individual tags.

Example: setting 'startwithgaps[] = { 1, 0 }' will cause tag 1 to start with gaps, and tag 2 to start without; the set behaviors will loop over any unset tags.

### On Debian:
```
sudo apt install xwallpaper build-essential libx11-dev libxft-dev libxinerama-dev libfreetype6-dev libfontconfig1-dev
```
### On Arch:
```
sudo pacman -S xwallpaper base-devel libx11 libxft libxinerama freetype2 fontconfig
```
### Build:
### put dwm folder in .config file in your home directory
```
git clone https://github.com/dixitbhuva/dwm.git
cd dwm
make
sudo make clean install
```
### [SUCKLESS WEBSITE](https://suckless.org/) & [LICENSE](https://git.suckless.org/dwm/file/LICENSE.html)
