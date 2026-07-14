# Using SDG-OS Functions

## Command Help (TLDR TUI)

Keybind: **SUPER+H**
Alias: `tldrtui`

Navigates with arrow keys or mouse; type to search. Pressing Enter opens the manual page for a command. Press **Q** on the man page to return. Press **SUPER+Q** to exit.

## Help Menu

Keybind: **SUPER+SHIFT+H**
Alias: `helptui`

Navigate with arrow keys or mouse; type to search. Press Enter to refresh. Press **SUPER+Q** to exit.

## Mango Config Editor

Keybind: **SUPER+M**
Alias: `mangoconf`

Lists configuration files in `~/.config/mango` with preview. Press Enter to open a file in `micro`. Use **CTRL+S** to save and **CTRL+Q** to quit, then reload with **SUPER+R**.

## Project Selector

Keybind: **SUPER+SHIFT+TAB**
Alias: `git-projects`

Scans a directory for git repositories (default `~/projects`). To change the directory:

```
echo "my-projects/subdir" > ~/.config/projectdir.state
```

Left pane shows repository paths; right pane shows file listing and README. Press Enter to open in the code editor.

## Layout Switcher

Keybind: **SUPER+SHIFT+W**

Navigate with arrow keys and press Enter to select. Affects only the current monitor and resets on config reload. Press **SUPER+R** to reset to the default layout.

## Documentation Menu

Keybind: **SUPER+SHIFT+M**
Alias: `documentation`

Opens documentation sites in Firefox and provides searchable quick reference menus.

## Wallpaper Switcher

Keybind: **SUPER+W**

Select from wallpaper directories in `~/.config/sdgos/wallpapers`. Cycle with **ALT+W** (forward) and **SHIFT+ALT+W** (backward).

## Bar Presets

Keybind: **SUPER+SHIFT+D**

Toggle pre-configured bars, dock, and combination presets.

## Tips

Automatic tip shown on first terminal session. Also available with:

- Terminal: `tipme`
- Keybind: **SUPER+0**

## Alternative Install TUIs

Enable by editing your `binds.conf` — uncomment the alternative TUIs and comment out Shelly/Unipkg.

**Pacman**: `pacgui` or **SUPER+Y**
**AUR**: `aurgui` or **SUPER+SHIFT+Y**

1. Search for your package
2. Press **TAB** to select multiple packages
3. Press Enter and provide your password

Prefer pacman repositories when possible; use the AUR only when needed.
