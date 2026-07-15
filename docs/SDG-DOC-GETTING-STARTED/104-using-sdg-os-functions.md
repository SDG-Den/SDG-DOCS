# Using SDG-OS Functions

## Command Help (TLDR TUI)

Keybind: **SUPER+H**
Alias: `tldrtui`

Navigates with arrow keys or mouse; type to search. Pressing Enter opens the manual page for a command. Press **Q** on the man page to return. Press **SUPER+Q** to exit.


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

## Documentation Browser

Keybind: **SUPER+SHIFT+M**
Alias: `sdgdocs`

Browse all installed module documentation.  Select a doc module, then a document — opens with `bat` for formatted reading.

## Wallpaper Switcher

Keybind: **SUPER+W**

Select from wallpaper directories in `~/.config/sdgos/wallpapers`. Cycle with **ALT+W** (forward) and **SHIFT+ALT+W** (backward).

## Reference Browser

Takes a reference list file and presents it as a searchable menu. Used internally by other tools.

## Screenshot Tools

Three screenshot modes that cycle on each press of **PRINT**: save to clipboard, save to file, or open in editor.

| Keybind | Action |
|---------|--------|
| PRINT | Cycle screenshot save mode |
| SUPER+PRINT | Capture a selected region |
| SUPER+CTRL+PRINT | Capture all screens |

## Config Overview

Keybind: **SUPER+ALT+M**
Alias: `manmenu`

View explanations for each line in your mangoWM configuration.  Browse line-by-line with details on what each setting does.

## Bar Presets

Keybind: **SUPER+SHIFT+D**
Alias: `barpresets`

Toggle pre-configured bars, dock, and combination presets.

## Unipkg

Universal package management wrapper.  Opens a TUI for package management across distributions.

Alias: `unipkg launch-tui`

## Tips

Automatic tip shown on first terminal session. Also available with:

- Terminal: `tipme`
- Keybind: **SUPER+0**


