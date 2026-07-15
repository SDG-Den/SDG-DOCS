> Customizing mango - decoration

mangoWM window decorations control the look of window borders, the bar, and on-screen display elements. Decoration settings are in ~/.config/mango/config.conf which sources decoration.conf.

### window borders

configured in decoration.conf:

```
border_radius = 10
bordercolor = 0x88aaad82
focuscolor = 0x33ccffee
```

COLOR values come from your Material You palette. you can find the current palette with `colortui`.

### gaps and padding

configured in dms/layout.conf (managed by DMS):

```
gappih=4
gappiv=4
gappoh=4
gappov=4
```

- gappih/gappiv — horizontal and vertical gaps between windows
- gappoh/gappov — outer horizontal and vertical gaps

### opacity

you can set per-window opacity in windowrules.conf:
```
windowrule=appid:firefox,focused_opacity:0.95,unfocused_opacity:0.85
```

or globally in decoration.conf:
```
focused_opacity=0.9
unfocused_opacity=0.8
```

### active window hints

the active window gets a different border color:
```
focuscolor = 0x33ccffee
```

### bar customization

the DMS bar is customized through the DMS settings menu (*super+s*) or using `dmsbars` to switch preset combinations (classic, windows, mac, combo, sidebar, side+status). bar layout and appearance settings are under the "dank bar" section in the DMS settings.

### animations

decoration.conf includes animation settings:
```
animation_open=zoom
animation_close=fade
blur=3
blur_passes=3
blur_radius=3
```
