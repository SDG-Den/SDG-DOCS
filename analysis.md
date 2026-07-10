# SDG-DOCS Analysis

## Type
Knowledge / Documentation Module

## Description
SDG-DOCS is the official documentation module for SDG-OS. It provides an aggregated documentation browser (`sdg-docs`) that lets users browse all markdown documentation from every installed SDG-OS module. It also ships four documentation suites and a curated list of external reference links.

## CLI Entry Point
- `/usr/bin/sdg-docs` (symlink to `~/.local/SDG-DOCS/sdg-docs`)

### Commands
| Command | Description |
|---------|-------------|
| `sdg-docs` | Interactive fzf browser of all installed docs |
| `sdg-docs --from MODULE` | Filter docs by specific module |
| `sdg-docs sources` | List available doc modules with file counts |
| `sdg-docs links` | Interactive external link launcher (Firefox) |
| `sdg-docs read <path>` | Display a specific doc file with bat |

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
│   └── SDG-DOC-AGENTS/           # AI/agent documentation (3 docs)
├── local/
│   └── SDG-DOCS/
│       └── sdg-docs              # CLI entrypoint (137 lines Bash)
└── tips/
    └── SDG-DOCS/
        └── tips.list             # 6 usage tips
```

## Usage
After installation via `sdgpkg install sdg-docs`, the `sdg-docs` command becomes available system-wide. Typical usage:

- **Browse all docs**: Run `sdg-docs` — an fzf window opens listing every markdown file across all installed doc modules. Select one and press Enter to view it with `bat`.
- **Filter by module**: `sdg-docs --from SDG-DOC-NEW-USERS` — shows only docs from a specific module.
- **List available sources**: `sdg-docs sources` — shows each installed doc module with its file count.
- **Open external links**: `sdg-docs links` — opens a picker of curated reference links (MangoWM, DMS, Ghostty, CachyOS, Arch Wiki) in Firefox.
- **Read a specific file**: `sdg-docs read ~/.local/docs/SDG-DOC-NEW-USERS/01-what-is-sdg-os.md`

The docs are also browsable directly on disk at `~/.local/docs/`. Each SDG-OS module can ship its own doc sub-module that gets automatically aggregated.

## Documentation Suites
| Suite | Docs | Audience |
|-------|------|----------|
| SDG-DOC-NEW-USERS | 5 | Onboarding, philosophy, keybinds, navigation, help |
| SDG-DOC-TINKERERS | 3 | Customization, module layout, configuration, theming |
| SDG-DOC-DEVS | 4 | Architecture, module creation, lifecycle scripts, sdgpkg reference |
| SDG-DOC-AGENTS | 3 | AI/automation integration, filesystem discovery, APIs |

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
- **SDG-TERM**: References `sdg-docs` in command aliases
- **AI agents**: Read docs via filesystem paths

## Optional Dependents
- **SDG-UTIL-SCRIPTS**: Documentation references (can link to sdg-docs)
