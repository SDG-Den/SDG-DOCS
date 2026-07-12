# SDG-DOCS Analysis

## Type
Knowledge / Documentation Module

## Description
SDG-DOCS is the official documentation module for SDG-OS. It provides an aggregated documentation browser (`sdgdocs`) that lets users browse all markdown documentation from every installed SDG-OS module. It also ships six documentation suites and a curated list of external reference links.

## CLI Entry Points
- `/usr/bin/sdgdocs` (symlink to `~/.local/SDG-DOCS/sdg-docs`)
- `/usr/bin/sdglinks` (symlink to `~/.local/SDG-DOCS/sdg-links`)

### Commands
| Command | Description |
|---------|-------------|
| `sdgdocs` | Interactive fzf browser of all installed docs |
| `sdgdocs --from MODULE` | Filter docs by specific module |
| `sdglinks` | Interactive external link launcher (Firefox) |

## Directory Structure
```
SDG-DOCS/
├── install.sh                    # Lifecycle: install
├── uninstall.sh                  # Lifecycle: uninstall
├── update.sh                     # Lifecycle: update
├── docs/
│   ├── SDG-DOC-NEW-USERS/        # New user documentation (5 docs)
│   ├── SDG-DOC-TINKERERS/        # Tinkerer documentation (3 docs)
│   ├── SDG-DOC-DEVS/             # Developer documentation (4 docs)
│   ├── SDG-DOC-AGENTS/           # AI/agent documentation (3 docs)
│   ├── SDG-DOC-TROUBLESHOOTING/  # Troubleshooting FAQ (1 doc)
│   └── SDG-DOC-MIGRATION/        # Migration guide (1 doc)
├── local/
│   └── SDG-DOCS/
│       ├── sdg-docs              # CLI entrypoint (94 lines Bash)
│       ├── sdg-links             # Links browser (14 lines Bash)
│       └── links.list            # 22 external reference links
└── tips/
    └── SDG-DOCS/
        └── tips.list             # 7 usage tips
```

## Usage
After installation via `sdgpkg install sdg-docs`, the `sdgdocs` command becomes available system-wide. Typical usage:

- **Browse all docs**: Run `sdgdocs` — an fzf window opens listing every markdown file across all installed doc modules. Select one and press Enter to view it with `bat`.
- **Filter by module**: `sdgdocs --from SDG-DOC-NEW-USERS` — shows only docs from a specific module.
- **Open external links**: `sdglinks` — opens a picker of curated reference links (MangoWM, DMS, Ghostty, CachyOS, Arch Wiki) in Firefox.
- **Browse on disk**: Docs are directly accessible at `~/.local/docs/`. Each SDG-OS module can ship its own doc sub-module that gets automatically aggregated.

## Documentation Suites
| Suite | Docs | Audience |
|-------|------|----------|
| SDG-DOC-NEW-USERS | 5 | Onboarding, philosophy, keybinds, navigation, help |
| SDG-DOC-TINKERERS | 3 | Customization, module layout, configuration, theming |
| SDG-DOC-DEVS | 4 | Architecture, module creation, lifecycle scripts, sdgpkg reference |
| SDG-DOC-AGENTS | 3 | AI/automation integration, filesystem discovery, APIs |
| SDG-DOC-TROUBLESHOOTING | 1 | Common issues and solutions |
| SDG-DOC-MIGRATION | 1 | Version-to-version migration |

## Required Dependencies
| Dependency | Purpose |
|------------|---------|
| fzf | Interactive doc browser |
| bat | Syntax-highlighted file previews |
| firefox | External documentation links |

## Optional Dependencies
None

## Required Dependents
- **SDG-TIPS**: Aggregates tips from `tips/SDG-DOCS/`
- **SDG-TERM**: References `sdgdocs` in command aliases
- **AI agents**: Read docs via filesystem paths

## Optional Dependents
- **SDG-UTIL-SCRIPTS**: Documentation references (can link to sdgdocs)
