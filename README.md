# SDG-DOCS

The SDG-OS documentation system. Aggregate, browse, and read documentation from all installed modules.

## Description

SDG-DOCS provides a unified documentation browser (`sdg-docs`) that collects markdown docs from every installed module and presents them in an interactive fzf-based interface. It ships four curated documentation suites covering users, tinkerers, developers, and AI agents.

## Features

- **Aggregated browser** — all docs from all modules in one view
- **Module filtering** — `sdg-docs --from MODULE` to scope to one source
- **Source listing** — `sdg-docs sources` shows available modules with doc counts
- **External links** — `sdg-docs links` opens curated reference links in Firefox
- **File reading** — `sdg-docs read <path>` displays any doc file with bat
- **4 doc suites** (15 docs total): New Users, Tinkerers, Developers, Agents

## CLI Usage

```bash
sdg-docs                   # Browse all docs interactively
sdg-docs --from SDG-DOC-DEVS  # Filter to developer docs
sdg-docs sources           # List available doc modules
sdg-docs links             # Open external reference links
sdg-docs read ~/.local/docs/SDG-DOC-DEVS/01-architecture-overview.md
```

## Installation

```bash
sdgpkg install sdg-docs
```

## Dependencies

- `fzf` — interactive doc browser
- `bat` — syntax-highlighted file previews
- `firefox` — external documentation links

## Related Packages

- **SDG-TIPS** — complements docs with short actionable tips
- **SDG-TERM** — references sdg-docs in shell aliases
- **SDG-UTIL-SCRIPTS** — provides additional help/documentation browsers
