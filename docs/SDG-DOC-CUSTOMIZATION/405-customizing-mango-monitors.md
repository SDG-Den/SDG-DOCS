> Customizing mango - monitors

mangoWM monitor configuration controls display layout, resolution, refresh rate, and workspace assignment.

### monitor config format

monitors are configured in ~/.config/mango/mangowm.conf:

```
monitor = name, resolution, position, scale
```

example:
```
monitor = eDP-1, 1920x1080@60, 0x0, 1
monitor = HDMI-A-1, 2560x1440@144, 1920x0, 1
```

### finding monitor names

run `mangoctl monitors` or check with `wlr-randr` to list available outputs and their names.

### position

set the offset from the top-left corner. to place a monitor to the right of another, use the first monitor's width as the x position:

```
monitor = eDP-1, 1920x1080, 0x0, 1
monitor = HDMI-A-1, 1920x1080, 1920x0, 1
```

### scaling

for HiDPI displays, use the scale parameter:
```
monitor = eDP-1, 1920x1080, 0x0, 1.5
```

### workspace assignment

assign workspaces to specific monitors:
```
workspace = 1, monitor:eDP-1
workspace = 2, monitor:eDP-1
workspace = 3, monitor:HDMI-A-1
```

### mirroring

to mirror one display to another:
```
monitor = HDMI-A-1, mirror, eDP-1
```
