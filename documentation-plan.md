# SDG-DOCS Documentation Plan

## Current Status
Comprehensive documentation exists. 21 markdown files across 6 doc suites, plus two CLI entry points (`sdgdocs`, `sdglinks`) and 7 tips.

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
| 05-getting-help.md | Layered help system (sdgdocs, sdgtip, legacy tools) |

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

#### SDG-DOC-TROUBLESHOOTING (1 doc + README)
| File | Topic |
|------|-------|
| README.md | Module overview |
| 01-troubleshooting-faq.md | Common issues and solutions |

#### SDG-DOC-MIGRATION (1 doc + README)
| File | Topic |
|------|-------|
| README.md | Module overview |
| 01-migration-guide.md | How to migrate between SDG-OS versions |

### Completed Doc Improvements
| Topic | Status |
|-------|--------|
| Troubleshooting FAQ | ✅ Created as SDG-DOC-TROUBLESHOOTING |
| Migration Guide | ✅ Created as SDG-DOC-MIGRATION |
| CLI reference cleanup | ✅ Docs updated to use `sdgdocs`/`sdglinks` consistently |

## Tips System (`tips/`)
**Deploy location**: `~/.local/tips/SDG-DOCS/`

### Existing Tips (7)
1. Browse all docs with `sdgdocs`
2. Filter docs by module with `sdgdocs --from MODULE`
3. Browse external links with `sdglinks`
4. Access docs directly at `~/.local/docs/`
5. Customize `sdgdocs` preview with `bat` themes
6. Contribute docs by cloning the module repo
7. Doc modules use the SDG-DOC- prefix convention

### Planned Tips (completed)
| Tip | Status |
|-----|--------|
| Using `bat` preview | ✅ Added |
| Doc contribution | ✅ Added |
