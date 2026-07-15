> Customizing mango - autostart

mangoWM runs autostart commands from ~/.config/mango/autostart.conf. This file uses mangoWM's exec-once syntax, not a bash script.

### exec-once format

add commands on separate lines using the exec-once directive:

```
exec-once=waybar
exec-once=swaybg -i ~/wallpaper.jpg
exec-once=mako
```

### what to autostart

common things to add:
- status bars (waybar)
- wallpapers (swaybg, swww)
- notification daemons (mako, dunst)
- network managers (nm-applet)
- bluetooth managers (blueman-applet)
- clipboard managers (copyq)

### current autostart configuration

SDG-OS sets up a default autostart.conf that launches:
- DMS shell (`dms run`)
- matugen color compiler (`matugen-compile`)
- wayshell event daemon (`wayshell`)
- portal services, polkit agent, file indexer
- terminal scratchpad pre-loading

### adding your own commands

simply add new exec-once lines to autostart.conf:
```
exec-once=my-custom-daemon
```

### running once per session

exec-once only runs on initial startup, not on config reload. if you need a command to run on every reload too, use exec instead:
```
exec=waybar
```
