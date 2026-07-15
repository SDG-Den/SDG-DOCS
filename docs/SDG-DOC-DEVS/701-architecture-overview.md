# Architecture Overview

SDG-OS is built around a simple premise: the system is composed of
independent **modules**, each owned by a git repository, each
installed by **sdgpkg**, and each contributing to the whole through
standard XDG-style paths.

## Module Types

| Type | Examples | Purpose |
|------|----------|---------|
| Core | SDG-PKG, SDG-REPO | Package management and registry |
| Window manager | SDG-MANGO-CORE, SDG-MANGO-HELPERS | mangoWM config and helpers |
| Application | SDG-VOX, SDG-GLYPHS | Voice commands, glyph input |
| Service | SDG-WAYSHELL, SDG-WAYSHELL-CONFIGS | Event daemon and bar |
| Content | SDG-OS-THEMES, SDG-FETCH | Wallpapers, system info |
| Knowledge | SDG-TIPS, SDG-UTIL-SCRIPTS, SDG-DOCS | Tips, docs, help system |

## Registry

The central package registry is `SDGOS.repo` in the SDG-REPO module.
Each entry is a pipe-delimited record:

```
sdg-vox|https://github.com/SDG-Den/SDG-VOX|https://raw.githubusercontent.com/SDG-Den/SDG-VOX/refs/heads/main/info.md
```

Fields: `package-name | git-url | readme-url`

sdgpkg reads this registry to discover modules.  When you run
`sdgpkg install sdg-vox`, it clones the git URL and runs `install.sh`.

## Lifecycle

Each module defines four lifecycle scripts at its root:

| Script | Called when | Purpose |
|--------|-------------|---------|
| `install.sh` | `sdgpkg install <module>` | First-time deployment |
| `uninstall.sh` | `sdgpkg uninstall <module>` | Teardown |
| `update.sh` | `sdgpkg update <module>` | Re-deploy from updated source |
| `detect.sh` | (optional) | Dependency checks |

The lifecycle is managed entirely by sdgpkg.  A module author only
needs to write these four scripts correctly.

## Cross-Module Contracts

Modules interact through well-defined paths:

| Path pattern | Contract |
|-------------|----------|
| `~/.config/<MODULE>/` | User configuration, preserved on update |
| `~/.local/<MODULE>/` | Executables and data, replaced on update |
| `~/.local/docs/<MODULE>/` | Documentation, consumed by `sdgdocs` |
| `~/.local/tips/<MODULE>/` | Tips, consumed by `sdgtip` |
| `/usr/bin/<command>` | CLI entrypoints (symlinks to `~/.local/`) |

There are no hard dependencies between modules at the package level.
Instead, modules discover each other at runtime through these standard
paths — a convention-over-configuration approach.
