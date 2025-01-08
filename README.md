
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

run this from home directory and dont deleted cloned folder after install because it contain configrations and wallpapers
copy config and make it yours then delete this folder

dont forget to change path from /home/baba/.dwm
to your username in config.h and config.def.h i am now swithcing to openbox so i dont edit that for you
change that and recompile and reinstall and you set

```bash
git clone https://github.com/dixitbhuva/dwm.git ~/.dwm \
&& cd ~/.dwm \
&& sudo pacman -S xorg-xsetroot kitty dmenux org-xset feh dunst polkit-gnome playerctl base-devel brightnessctl libx11 libxft libxinerama terminus-font freetype2 fontconfig \
&& make \
&& sudo make clean install
```

Dont Forget to create desktop file or you can just put this to your .xinitrc if you are doing startx this allows you to do quick restart without actually quitting.

```bash
while true; do
	dwm 2> ~/.dwm.log
done
```

Assuming you have pipewire otherwise change to one of this in config file if you have pulse audio

```c
/* If you use pulsaudio add somewhere in your constants definition section instead. */
static const char *upvol[] = { "/usr/bin/pactl", "set-sink-volume", "0", "+5%", NULL };
static const char *downvol[] = { "/usr/bin/pactl", "set-sink-volume", "0", "-5%", NULL };
static const char *mutevol[] = { "/usr/bin/pactl", "set-sink-mute", "0", "toggle", NULL };

/* AidenThing suggests using this general solution for dynamically changing outputs. */
static const char *upvol[] = { "/usr/bin/pactl", "set-sink-volume", "@DEFAULT_SINK@", "+5%", NULL };
static const char *downvol[] = { "/usr/bin/pactl", "set-sink-volume", "@DEFAULT_SINK@", "-5%", NULL };
static const char *mutevol[] = { "/usr/bin/pactl", "set-sink-mute", "@DEFAULT_SINK@", "toggle", NULL };

/* If you use amixer, use this instead. Thanks go to DaniOrt3ga. */
static const char *upvol[] = { "/usr/bin/amixer", "set", "Master", "5%+", NULL };
static const char *downvol[] = { "/usr/bin/amixer", "set", "Master", "5%-", NULL };
static const char *mutevol[] = { "/usr/bin/amixerl", "set", "Master", "toggle", NULL };
```
