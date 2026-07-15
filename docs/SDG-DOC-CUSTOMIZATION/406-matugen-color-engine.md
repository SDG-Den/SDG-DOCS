> Customizing mango - matugen color engine

Matugen is SDG-OS's dynamic color engine. It extracts Material You colors from your wallpaper and propagates them to every part of the desktop — mangoWM borders, Waybar, DMS themes, Firefox CSS, Micro editor, and more.

## How it works

1. **Matugen templates** are stored in `~/.local/matugen/` as `.toml` files
2. On startup, `matugen-compile` concatenates all `.toml` files in that directory into `~/.config/matugen/config.toml`
3. When you change your wallpaper, Matugen reads the dominant colors and applies them through the template system to all configured applications

## Template files

Each file in `~/.local/matugen/` covers a different application area:

- `00-core.toml` — core desktop colors (mangoWM borders, general palette)
- `01-wayshell.toml` — Waybar and OSD colors
- `02-rgbdaemon.toml` — RGB keyboard daemon colors

you can view the current color palette with `colortui` or by checking `~/.local/state/quickshell/user/generated/colors.json`.

## Adding custom templates

to add your own Matugen template for an application:

1. create a new `.toml` file in `~/.local/matugen/`
2. run `matugen-compile` to regenerate the combined config
3. the next wallpaper change will apply your new template

## DMS wallpapers and matugen

in the DMS settings menu (*super+s*) under Personalization > Color settings, setting colors to Auto enables Matugen-based dynamic colors. setting a fixed color scheme disables it.

## Application support

most software works automatically because all shipped templates are enabled by default. some applications need manual configuration:

- **Firefox, Vesktop, VSCode** — may need additional setup. see https://danklinux.com/docs/dankmaterialshell/application-themes
- **GTK/QT applications** — if themes are not applying, click the refresh button at the bottom of the Themes and Colors page in DMS settings
