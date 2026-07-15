# Theming

## Wallpaper Groups

SDG-OS uses **wallpaper groups** to organise backgrounds and their
associated colour schemes.  Groups are directories under
`~/.config/SDG-THEMES/`, each containing wallpapers and an optional
`wallpaper.conf` that defines colour generation settings.

```
~/.config/SDG-THEMES/
  default/
    wallpaper.png
    wallpaper.conf
  catppuccin/
    wallpaper.jpg
    wallpaper2.jpg
    wallpaper.conf
```

### wallpaper.conf

```ini
Theme_Category:dynamic    # generic / dynamic / custom / registry
Generic_Color:dynamic     # color name, dynamic, or custom
Matugen:vibrant           # palette variant
Mode:dark                 # dark or light
Preset:-                  # theme preset name
```

## Switching Groups

- `SUPER+W` — Open the wallpaper group picker (fzf)
- `ALT+W` — Cycle to the next wallpaper
- `ALT+SHIFT+W` — Cycle to the previous wallpaper
- `wallpaper-select <group>` — Set a group directly from the terminal

## Colour Generation

SDG-OS uses **Matugen** (Material You colour generation) to derive a
colour palette from the current wallpaper.  This palette is used by:

- mangoWM decorations (borders, gaps, colours)
- Waybar styling
- DMS shell theme
- Terminal colours (ghostty via templates)

The generated palette is written to
`~/.local/state/quickshell/user/generated/colors.json` and can be
previewed with the `colors.sh` utility.

To manually regenerate the palette from the current wallpaper, run
`matugen-compile`.
