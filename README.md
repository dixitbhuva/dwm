
# DWM-6.5

pre patched dwm


## Patches

- floating window always center
- default fake full fcreen
- systray
- set tag layout pertag from config
- layout, mwfact, barpos and nmaster per tag
- set cool auto start from config file
- mouse wrap


## Installation

Arch Linux

```bash
git clone https://github.com/dixitbhuva/dwm.git \
&& cd dwm \
&& sudo pacman -S base-devel libx11 libxft libxinerama terminus-font freetype2 fontconfig kitty dmenu \
&& make \
&& sudo make clean install
```

Dont Forget to create desktop file or you can just put this to your .xinitrc if you are doing startx this allows you to do quick restart without actually quitting.

```bash
while true; do
	dwm 2> ~/.dwm.log
done
```