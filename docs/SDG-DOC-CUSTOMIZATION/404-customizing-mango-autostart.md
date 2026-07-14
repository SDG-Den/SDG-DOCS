> Customizing mango - autostart

mangoWM runs autostart commands from a configured autostart script, typically ~/.config/mango/autostart.sh.

### autostart.sh format

this is a standard bash script. add commands on separate lines:

```bash
#!/bin/bash
waybar &
swaybg -i ~/wallpaper.jpg &
mako &
```

### what to autostart

common things to add:
- status bars (waybar, eww)
- wallpapers (swaybg, swww)
- notification daemons (mako, dunst)
- network managers (nm-applet)
- bluetooth managers (blueman-applet)
- clipboard managers (copyq)
- compositor effects if not built-in

### autostart location

the autostart script path is set in mangowm.conf:

```
autostart = ~/.config/mango/autostart.sh
```

you can point this to any executable script. SDG-OS sets up a default autostart that launches the DMS shell and essential services.

### running once

if you need a command to run only on first login (not on reload), use a flag file pattern:

```bash
if [ ! -f /tmp/first-run ]; then
    touch /tmp/first-run
    firefox &
fi
```
