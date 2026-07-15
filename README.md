# SDG-DOCS

The SDG-OS documentation system. Aggregate, browse, and read documentation from all installed modules.

## Description

SDG-DOCS provides a unified documentation browser (`sdgdocs`) that collects markdown docs from every installed module and presents them in an interactive fzf-based interface. It ships curated documentation suites covering getting started, new users, terminal skills (including scripting), tinkerers, developers, AI agents, and troubleshooting.

## Usage

```bash
sdgdocs                      # Pick a module → pick a doc → read it
sdgdocs --from SDG-DOC-DEVS  # Skip module picker, go straight to dev docs
sdglinks                     # Browse external reference links
```

## Installation

```bash
sdgpkg install sdg-docs
```

## Dependencies

- `fzf` — interactive doc browser
- `bat` — syntax-highlighted file previews
- `firefox` — external documentation links (sdg-links)

## Related Packages

- **SDG-TIPS** — complements docs with short actionable tips
- **SDG-TERM** — references sdgdocs in shell aliases
- **SDG-UTIL-SCRIPTS** — provides additional help/documentation browsers
