> Customizing mango - layouts

mangoWM layouts control how windows are arranged on a tag. SDG-OS includes several built-in layouts and allows custom layout configuration.

### built-in layouts

the default layouts available in SDG-OS include:
- **main** — a main/master stack with a secondary slave area
- **grid** — windows arranged in an evenly-spaced grid
- **spiral** — windows arranged in a fibonacci spiral pattern
- **dwindle** — similar to spiral, windows shrink as new ones open
- **monocle** — all windows maximized, tab-like switching

### switching layouts

you can cycle through layouts using *super+comma* and *super+period*.

### layout configuration

layout settings are in ~/.config/mango/mangowm.conf under the layout section. key options:

- layout — sets the default layout
- layout_gap — gap size between windows
- layout_border — border width for windows
- layout_main_count — number of windows in the main area
- layout_main_ratio — ratio of the main area to the screen

### per-tag layouts

you can set different layouts per tag by editing ~/.config/mango/tags.conf or using the layout controls in the bar.
