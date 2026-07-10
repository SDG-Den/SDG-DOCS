# SDG-DOCS Documentation Plan

## Current Status
Comprehensive documentation exists. 19 markdown files across 4 doc suites, plus a CLI entry point (`sdg-docs`) and 6 tips.

## Docs System (`docs/`)
**Deploy location**: `~/.local/docs/SDG-DOC-*/`

### Existing Doc Suites

#### SDG-DOC-NEW-USERS (5 docs + README)
| File | Topic |
|------|-------|
| README.md | Module overview |
| 01-what-is-sdg-os.md | What is SDG-OS? (philosophy, modular layout, sdgpkg vs unipkg) |
| 02-desktop-navigation.md | Workspaces, bar, launcher, overview, notifications |
| 03-keybinds-reference.md | Complete keybind reference |
| 04-common-workflows.md | Installing software, finding help, customizing, managing config |
| 05-getting-help.md | Layered help system (sdg-docs, sdgtip, legacy tools) |

#### SDG-DOC-TINKERERS (3 docs + README)
| File | Topic |
|------|-------|
| README.md | Module overview |
| 01-module-layout.md | Source layout vs installed layout, config preservation |
| 02-configuring-modules.md | Config locations, editing tools, update preservation |
| 03-theming.md | Wallpaper groups, SDG-THEMES layout, Matugen, theme switching |

#### SDG-DOC-DEVS (4 docs + README)
| File | Topic |
|------|-------|
| README.md | Module overview |
| 01-architecture-overview.md | Module types, registry format, lifecycle scripts, cross-module contracts |
| 02-creating-a-module.md | Step-by-step module creation guide |
| 03-lifecycle-scripts.md | install.sh, uninstall.sh, update.sh, detect.sh contracts |
| 04-sdgpkg-reference.md | sdgpkg command reference, install/update flow, cache layout, repo format |

#### SDG-DOC-AGENTS (3 docs + README)
| File | Topic |
|------|-------|
| README.md | Module overview |
| 01-path-conventions.md | Filesystem-based discovery, XDG base dir spec |
| 02-tips-and-docs-api.md | Machine interfaces, CLI output, file-based discovery with examples |
| 03-automation-integration.md | System state discovery, lifecycle automation, extending via sdgpkg |

### Planned Doc Improvements
| Topic | Description | Priority |
|-------|-------------|----------|
| Troubleshooting FAQ | Common issues and solutions | Medium |
| Migration Guide | How to migrate between SDG-OS versions | Low |

## Tips System (`tips/`)
**Deploy location**: `~/.local/tips/SDG-DOCS/`

### Existing Tips (6)
1. Browse all docs with `sdg-docs`
2. Filter docs by module with `sdg-docs --from MODULE`
3. List available doc sources with `sdg-docs sources`
4. Open external links with `sdg-docs links`
5. Read a specific doc file with `sdg-docs read <path>`
6. Access docs directly at `~/.local/docs/`

### Planned Tips
| Tip | Description | Priority |
|-----|-------------|----------|
| Using `bat` preview | Customize `sdg-docs` preview with bat themes | Low |
| Doc contribution | How to contribute docs to the ecosystem | Low |
