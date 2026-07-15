> Customizing mango - monitors

mangoWM monitor configuration controls display layout, resolution, refresh rate, and workspace assignment. Monitor settings are in ~/.config/mango/config.conf which sources monitors.conf.

### monitor config format

monitors are configured in monitors.conf using monitorrule entries:

```
monitorrule=name:^HDMI-A-1$,width:1920,height:1080,refresh:60,x:1920,y:0
monitorrule=name:^DP-1$,width:1920,height:1080,refresh:60,x:0,y:0
```

### finding monitor names

run `mmsg monitors` or check with `wlr-randr` to list available outputs and their names.

### position

set the x,y offset from the top-left corner. to place a monitor to the right of another, use the first monitor's width as the x position:

```
monitorrule=name:^DP-1$,width:1920,height:1080,refresh:60,x:0,y:0
monitorrule=name:^HDMI-A-1$,width:1920,height:1080,refresh:60,x:1920,y:0
```

### scaling

for HiDPI displays:
```
monitorrule=name:^eDP-1$,width:1920,height:1080,refresh:60,x:0,y:0,scale:1.5
```

### workspace assignment

all monitors show all tags by default. to control which windows appear on which monitor, use window rules or tagmon keybinds. SDG-OS includes keybinds for sending windows to specific monitors:
- super+ctrl+1 → DP-1
- super+ctrl+2 → HDMI-A-1
- super+ctrl+3 → DP-2

### cross-monitor settings

monitors.conf also includes global cross-monitor behavior:
```
focus_cross_monitor=1
exchange_cross_monitor=1
syncobj_enable=1
```

- focus_cross_monitor — allow focus to move between monitors
- exchange_cross_monitor — allow windows to be moved between monitors
