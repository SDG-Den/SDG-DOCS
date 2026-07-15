# sdgpkg Reference

sdgpkg is the SDG-OS module package manager.  It manages the lifecycle
of modules: install, update, upgrade, uninstall, and information.

## Commands

All commands follow the form `sdgpkg <command> [arguments]`.

### Information Commands

| Command | Description |
|---------|-------------|
| `sdgpkg help` | Show the help menu with all commands and examples |
| `sdgpkg version` | Display the installed sdgpkg version |
| `sdgpkg list` | List all installed (cached) packages |
| `sdgpkg fetch` | List all available packages from all configured repositories |
| `sdgpkg info <module>` | Fetch and display info.md metadata for a module |
| `sdgpkg changelog <module>` | Show the recent changelog for a module |
| `sdgpkg upgradable` | List modules with pending git updates behind their remote |

### Install Commands

| Command | Description |
|---------|-------------|
| `sdgpkg install <module>` | Search repos, clone module, run `install.sh` |
| `sdgpkg update <module>` | Git-pull module, run `update.sh` |
| `sdgpkg upgrade` | Git-pull and run `update.sh` for every installed module |
| `sdgpkg uninstall <module>` | Run `uninstall.sh`, archive cache to `~/.cache/SDG-PKG-OLD/` |
| `sdgpkg sync <module>` | Clone or pull the repository without running any lifecycle script |
| `sdgpkg remove <module>` | Remove the cached repository without running `uninstall.sh` |

### branch

Manage git branches for a cached module.

| Subcommand | Description |
|------------|-------------|
| `sdgpkg branch list <module>` | List all branches in the cached repository |
| `sdgpkg branch switch <module> <branch>` | Switch the cached repository to a different branch |

### repo

Manage module repository sources.

| Subcommand | Description |
|------------|-------------|
| `sdgpkg repo list` | List configured repositories with their priorities |
| `sdgpkg repo fetch` | Fetch available repositories from the remote repolist |
| `sdgpkg repo add <name>` | Add a repository from the repolist or from a URL |
| `sdgpkg repo remove <name>` | Remove a configured repository |

## How It Works

sdgpkg reads repo files from `~/.config/SDG-PKG/`.  Each repo file
contains a URL to a `.repo` index file.  The default is
`50-core.repo`, which points to the central SDG-REPO.

Install flow:

```
sdgpkg install sdg-vox

1. Read ~/.config/SDG-PKG/50-core.repo
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

Example `SDGOS.repo` entry:

```
sdg-vox|https://git.sdgcloud.nl/SDGDen/SDG-VOX|https://git.sdgcloud.nl/SDGDen/SDG-VOX/raw/branch/main/README.md
```
