# What Is SDG-OS?

SDG-OS is a modular Linux desktop environment built on top of
[mangoWM](https://mangowm.github.io/), a tiling Wayland compositor.
It provides a cohesive set of tools, configuration, and theming that
work together to give you a complete desktop experience.

## Modular Design

SDG-OS is split into **modules** — independent repositories that each
own a specific piece of the system.  Every module follows the same
layout convention:

| Directory | Installed to | Purpose |
|-----------|-------------|---------|
| `config/` | `~/.config/MODULE/` | User-editable settings |
| `local/` | `~/.local/MODULE/` | Executables, libraries |
| `docs/` | `~/.local/docs/MODULE/` | Module documentation |
| `tips/` | `~/.local/tips/MODULE/` | Usage tips |
| `other/` | varies | Desktop files, extras |

This means you always know where to find things:
- Configuration lives in `~/.config/` — organised by module
- Executables and scripts live in `~/.local/` — organised by module
- Documentation lives in `~/.local/docs/` — organised by module
- Tips live in `~/.local/tips/` — organised by module

## How Modules Are Installed

Modules are managed by **sdgpkg**, the SDG-OS package manager.
When you run `sdgpkg install <module>`:

1. sdgpkg clones the module's git repo into `~/.cache/SDG-PKG/<module>/`
2. It runs the module's `install.sh` script
3. The script copies files to the XDG-style paths above
4. It creates symlinks in `/usr/bin/` for command-line tools

Updates work the same way — `sdgpkg update <module>` pulls the latest
changes and re-runs the install logic.

## The Two Package Managers

SDG-OS uses two package managers for different purposes:

| Tool | Purpose | Manages |
|------|---------|---------|
| **sdgpkg** | Module lifecycle | SDG-OS modules (repos) |
| **unipkg** | Distro-agnostic system packages | System deps (pacman/apt/dnf) |

`unipkg` wraps your distro's native package manager so that module
install scripts work on any distribution with the same syntax:
`unipkg install any <package>`.

## Documentation and Tips

Every module can ship its own documentation and tips.  Two cross-module
CLI tools let you browse everything in one place:

- **`sdgdocs`** — Aggregate documentation browser.  Globs
  `~/.local/docs/*/` and presents a searchable list, letting you
  find docs from any installed module.
- **`sdgtip`** — Aggregate tip system.  Globs `~/.local/tips/*/`
  and shows a random tip or lets you browse/search with `--list`.

This means as you install more modules, your documentation and tips
library grows automatically — no configuration needed.
