> Customizing mango - layouts

mangoWM layouts control how windows are arranged on a tag. SDG-OS includes several built-in layouts and allows custom layout configuration.

### built-in layouts

the default layouts available in SDG-OS include:
- **dwindle** — binary space partitioning, windows split the focused window
- **tile** (master/stack) — a primary master area with a secondary slave stack
- **scroller** — infinitely scrollable strip of columns with vertical tiling
- **grid** — windows arranged in an evenly-spaced grid
- **fair** — similar to grid but fills space more evenly
- **monocle** — all windows maximized, tab-like switching
- **deck** — combination of monocle and master/stack

### switching layouts

you can cycle through layouts using *super+comma* and *super+period* in group mode. use *super+shift+w* to open the interactive layout switcher.

### layout configuration

layout settings are in ~/.config/mango/config.conf which sources layouts.conf. key options in layouts.conf:

**Scroller:**
- scroller_structs — number of scroller structures
- scroller_default_proportion — default column width ratio
- scroller_proportion_preset — comma-separated proportion presets cycled by super+a

**Tile (master/stack):**
- new_is_master — place new windows in master (1) or stack (0)
- default_mfact — ratio of master area to screen (default 0.75)
- default_nmaster — number of master windows (default 1)

**Dwindle:**
- dwindle_split_ratio — split ratio (default 0.5)
- dwindle_smart_split — enable smart split direction

**General:**
- gaps_in — gap between windows on same workspace
- gaps_out — gap between windows and screen edge
- circle_layout — comma-separated list of layouts to cycle through with super+shift+a

### per-tag layouts

you can set different layouts per tag by adding tagrule entries in layouts.conf:
```
tagrule=id:1,layout_name:dwindle,
tagrule=id:2,layout_name:tile,
tab_bar_height = 0
```

use the tab bar controls in DMS or the layout switcher (*super+shift+w*) to change per-tag layouts interactively.
