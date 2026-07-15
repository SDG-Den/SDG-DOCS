# Included Utility Scripts

SDG-OS includes several utility scripts, available under `~/.config/sdgos`.

## Command Help

Presents a searchable list of common commands with TLDR summaries. Selecting a command opens its manual page.

Keybind: **SUPER+H**
Alias: `tldrtui`

## Help Menu

Shows the documentation browser with all available topics.

Keybind: **SUPER+SHIFT+H**
Alias: `helptui`

## Reference Browser

Takes a reference list file and presents it as a searchable menu. Used internally by other tools.

## Screenshot Tools

Three screenshot modes that cycle on each press of **PRINT**: save to clipboard, save to file, or open in editor.

| Keybind | Action |
|---------|--------|
| PRINT | Cycle screenshot save mode |
| SUPER+PRINT | Capture a selected region |
| SUPER+CTRL+PRINT | Capture all screens |

## AUR Installer

Graphical interface for browsing and installing packages from the Arch User Repository with multi-select support.

Alias: `aurgui`

## Pacman Installer

Graphical interface for browsing and installing official Arch packages with multi-select support.

Alias: `pacgui`

## Documentation Browser

Browse all installed module documentation.  Opens an interactive fzf browser.

Keybind: **SUPER+SHIFT+M**
Alias: `sdgdocs`

## Layout Switcher

Switch between window layouts using a selectable menu.

Keybind: **SUPER+SHIFT+W**

## Project Selector

Scans your projects directory for git repositories and opens them in the code editor.

Keybind: **SUPER+SHIFT+TAB**
Alias: `git-projects`

## Config Browser

Browse and edit mangoWM configuration files with preview.

Keybind: **SUPER+M**
Alias: `mangoconf`

## Config Overview

View explanations for each line in your mangoWM configuration.

Keybind: **SUPER+ALT+M**

## Wallpaper Selector

Browse and select wallpaper groups.

Keybind: **SUPER+W**
Cycle forward/backward: **ALT+W** / **SHIFT+ALT+W**

## Bar Presets

Toggle pre-configured bars and dock, or select from combination presets.

Keybind: **SUPER+SHIFT+D**

## Unipkg

Universal package management wrapper. Opens a TUI for package management across distributions.

Alias: `unipkg launch-tui`

## Dotfile Git Sync

Syncs configuration files to a git repository. Select folders from `~/.config`, and the script moves them to your repo and creates symlinks.

Command: `dotfile-git-sync ~/path/to/your/repository`
