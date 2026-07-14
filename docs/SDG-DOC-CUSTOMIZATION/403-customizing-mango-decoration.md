> Customizing mango - decoration

mangoWM window decorations control the look of window borders, the bar, and on-screen display elements.

### window borders

configured in ~/.config/mango/mangowm.conf:

```
border_size = 2
no_border_on_floating = false
active_border_color = rgb(COLOR)
inactive_border_color = rgb(COLOR)
```

COLOR values come from your Material You palette. you can find the current palette with `colortui`.

### bar customization

the mango bar can be styled in the bar section of mangowm.conf:
- bar_height — height in pixels
- bar_position — top or bottom
- bar_color — background color
- bar_use_custom — enable custom colors per workspace

### gaps and padding

```
gaps_in = 5
gaps_out = 10
gaps_workspaces = 5
```

- gaps_in — gap between windows on the same workspace
- gaps_out — gap between windows and screen edge
- gaps_workspaces — gap between workspaces

### active window hints

you can set special borders or colors for the active window to make it stand out:
```
active_border_size = 3
active_border_color = rgb(COLOR)
group_border_color = rgb(COLOR)
```
