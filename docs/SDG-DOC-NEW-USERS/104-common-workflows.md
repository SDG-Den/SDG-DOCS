# Common Workflows

## Installing Software

SDG-OS provides two ways to install software:

1. **SDG-OS Modules** — Use `sdgpkg` for system modules:
   ```sh
   sdgpkg install sdg-vox
   sdgpkg install sdg-glyphs
   ```

2. **System Packages** — Use `unipkg` for regular applications:
   ```sh
   unipkg install any firefox
   unipkg install any vscode
   ```
   The `unipkg launch-tui` GUI (SUPER+Y) lets you browse and install
   packages interactively.

## Customising Appearance

1. Press `SUPER+S` to open the settings menu
2. Browse wallpaper groups with `SUPER+W`
3. The DMS settings panel controls dock, bar, and widget appearance

## Managing Configuration

Configuration files live in `~/.config/` organised by module:
- `~/.config/mango/` — mangoWM window manager
- `~/.config/SDG-VOX/` — Voice commands
- `~/.config/SDG-GLYPHS/` — Glyph input
- `~/.config/SDG-THEMES/` — Wallpaper groups

You can edit them directly or use `SUPER+M` for the mango config
browser.
