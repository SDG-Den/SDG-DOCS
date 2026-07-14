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

## Finding Help

When you need help with something:

1. **Keybinds** — Press `SUPER+K` to see the keybinds overview
2. **Command help** — Press `SUPER+H` and search for any command
3. **Documentation** — Run `sdgdocs` to browse all installed docs
4. **Tips** — Run `sdgtip` for a random tip, or `sdgtip list`
5. **External docs** — Run `sdglinks` for online references

Run `sdgdocs --from SDG-DOCS` to see this documentation module's
own content.

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
