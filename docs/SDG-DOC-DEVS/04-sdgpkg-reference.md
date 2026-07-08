# sdgpkg Reference

sdgpkg is the SDG-OS module package manager.  It manages the lifecycle
of modules: install, update, upgrade, uninstall, and information.

## Commands

| Command | Description |
|---------|-------------|
| `sdgpkg install <module>` | Clone and install a module |
| `sdgpkg update <module>` | Pull latest changes and re-deploy |
| `sdgpkg upgrade` | Update all installed modules |
| `sdgpkg uninstall <module>` | Remove a module |
| `sdgpkg list` | List installed modules |
| `sdgpkg fetch` | List available modules from all repos |
| `sdgpkg info <module>` | Show module readme |
| `sdgpkg upgradable` | Show which modules have updates |
| `sdgpkg version` | Show sdgpkg version |

## How It Works

sdgpkg reads repo files from `~/.config/SDG-PKG/`.  Each repo file
contains a URL to a `.repo` index file.  The default is
`00-core.repo`, which points to the central SDG-REPO.

Install flow:

```
sdgpkg install sdg-vox

1. Read ~/.config/SDG-PKG/00-core.repo
2. Fetch SDGOS.repo from the URL
3. Find "sdg-vox" in the registry
4. Clone git URL to ~/.cache/SDG-PKG/sdg-vox/
5. Run ~/.cache/SDG-PKG/sdg-vox/install.sh
```

Update flow:

```
sdgpkg update sdg-vox

1. cd ~/.cache/SDG-PKG/sdg-vox/
2. git pull
3. Run update.sh
```

## Cache Directory

All module sources live under `~/.cache/SDG-PKG/`.  This directory is
the authoritative copy — the installed files in `~/.local/` and
`~/.config/` are deployments from this cache.

```
~/.cache/SDG-PKG/
  sdg-vox/        # Cloned repo
  sdg-glyphs/     # Cloned repo
  sdg-fetch/      # Cloned repo
  ...
```

On uninstall, the cache is moved to `~/.cache/SDG-PKG-OLD/<module>/`
so it can be recovered if needed.

## Repo File Format

Repo files in `~/.config/SDG-PKG/` are plain text with one URL per
file.  The URL points to a pipe-delimited index:

```
package-name|git-clone-url|readme-url
```

Example `SDGOS.repo`:

```
sdg-vox|https://git.sdgcloud.nl/SDGDen/SDG-VOX|https://git.sdgcloud.nl/SDGDen/SDG-VOX/raw/branch/main/README.md
sdg-glyphs|https://git.sdgcloud.nl/SDGDen/SDG-GLYPHS|https://git.sdgcloud.nl/SDGDen/SDG-GLYPHS/raw/branch/main/README.md
```
