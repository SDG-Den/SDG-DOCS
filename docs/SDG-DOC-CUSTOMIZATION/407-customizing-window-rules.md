> Customizing mango - window rules

Window rules let you control how specific applications behave — floating, opacity, fullscreen, monitor assignment, and more. rules are in ~/.config/mango/config.conf which sources windowrules.conf.

## rule format

```
windowrule=appid:<application-id>,<property>:<value>,...
windowrule=title:<window-title>,<property>:<value>,...
```

## common properties

| Property | Values | Effect |
|----------|--------|--------|
| isfloating | 0 or 1 | force window to float or tile |
| isfullscreen | 0 or 1 | force window to fullscreen |
| isoverlay | 0 or 1 | force window to overlay mode |
| focused_opacity | 0.0 - 1.0 | opacity when focused |
| unfocused_opacity | 0.0 - 1.0 | opacity when unfocused |
| width | 0.0 - 1.0 | width as fraction of screen |
| height | 0.0 - 1.0 | height as fraction of screen |
| monitor | monitor name | force window to a specific monitor |

## layer rules

for shell layers (bars, notifications):

```
layerrule=layer_name:^<pattern>$,animation_type_open:<type>,animation_type_close:<type>
```

animation types: fade, slide, zoom

## examples from SDG-OS

```
# keep floating menus floating
windowrule=title:Floating-Menu,isfloating:1,height:0.4,width:0.4

# reduce opacity for browser
windowrule=appid:firefox,focused_opacity:0.95,unfocused_opacity:0.85

# full opacity for VM manager
windowrule=appid:virt-manager,focused_opacity:1,unfocused_opacity:1

# glyph input overlay
windowrule=appid:glyphs,isoverlay:1,width:1920,height:1080,isfloating:1,focused_opacity:0.5,unfocused_opacity:0.5

# smooth DMS layer animations
layerrule=layer_name:^dms.*,animation_type_open:fade,animation_type_close:fade
layerrule=layer_name:^waybar.*,animation_type_open:slide,animation_type_close:fade
```

## finding application IDs

run `mmsg clients` in a terminal to see all active windows with their app IDs and titles, then use those values in your rules.
