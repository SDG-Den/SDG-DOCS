# Creating a Module

## Step 1: Skeleton

Create a git repository with the standard layout:

```
my-new-module/
  config/
  local/
  docs/
  tips/
  install.sh
  uninstall.sh
  update.sh
```

## Step 2: Write the Lifecycle Scripts

### install.sh

Follow the pattern used by existing modules:

```bash
#!/bin/bash
WORKDIR=/home/$(whoami)/.cache/SDG-PKG/my-new-module

# Copy config (config files that users may edit)
mkdir -p /home/$(whoami)/.config/MY-NEW-MODULE
cp -r $WORKDIR/config/* /home/$(whoami)/.config/MY-NEW-MODULE

# Copy local executables
cp -r $WORKDIR/local/* /home/$(whoami)/.local

# Copy docs to the module's doc dir
mkdir -p /home/$(whoami)/.local/docs/MY-NEW-MODULE
cp -r $WORKDIR/docs/* /home/$(whoami)/.local/docs/MY-NEW-MODULE

# Copy tips to the module's tip dir
mkdir -p /home/$(whoami)/.local/tips/MY-NEW-MODULE
cp -r $WORKDIR/tips/* /home/$(whoami)/.local/tips/MY-NEW-MODULE

# Make scripts executable
chmod a+x /home/$(whoami)/.local/MY-NEW-MODULE/*.sh

# Create CLI symlink
sudo ln -sf /home/$(whoami)/.local/MY-NEW-MODULE/mycli.sh /usr/bin/mycli

which mycli || echo "INSTALL FAILED!"
```

### uninstall.sh

```bash
#!/bin/bash
rm -rf /home/$(whoami)/.local/MY-NEW-MODULE
rm -rf /home/$(whoami)/.local/docs/MY-NEW-MODULE
rm -rf /home/$(whoami)/.local/tips/MY-NEW-MODULE
rm -rf /home/$(whoami)/.config/MY-NEW-MODULE
sudo unlink /usr/bin/mycli
```

### update.sh

Remove and re-copy local, docs, and tips.  Skip config to preserve
user customisations:

```bash
#!/bin/bash
WORKDIR=/home/$(whoami)/.cache/SDG-PKG/my-new-module

rm -rf /home/$(whoami)/.local/MY-NEW-MODULE
cp -r $WORKDIR/local/* /home/$(whoami)/.local

rm -rf /home/$(whoami)/.local/docs/MY-NEW-MODULE
mkdir -p /home/$(whoami)/.local/docs/MY-NEW-MODULE
cp -r $WORKDIR/docs/* /home/$(whoami)/.local/docs/MY-NEW-MODULE

rm -rf /home/$(whoami)/.local/tips/MY-NEW-MODULE
mkdir -p /home/$(whoami)/.local/tips/MY-NEW-MODULE
cp -r $WORKDIR/tips/* /home/$(whoami)/.local/tips/MY-NEW-MODULE

sudo ln -sf /home/$(whoami)/.local/MY-NEW-MODULE/mycli.sh /usr/bin/mycli
```

### detect.sh (optional)

Check that dependencies are installed:

```bash
#!/bin/bash
command -v python3 || { echo "python3 required"; exit 1; }
command -v fzf || { echo "optional: fzf"; }
```

## Step 3: Add Docs and Tips

Create documentation files in `docs/`:

```
docs/
  README.md            # Module overview
  SDG-DOC-<NAME>/      # Optional doc sub-module
    getting-started.md
```

Create tip files in `tips/`:

```
tips/
  SDG-TIPS-<NAME>/     # Tip sub-module
    tips.list          # One tip per line
```

## Step 4: Register in the Repo

Submit a PR to SDG-REPO adding an entry to `SDGOS.repo`:

```
my-new-module|https://git.example.com/MY-NEW-MODULE|https://git.example.com/MY-NEW-MODULE/raw/branch/main/README.md
```

## Step 5: Test Locally

```sh
# Register your repo file
echo "https://raw.githubusercontent.com/you/sdg-repo/main/SDGOS.repo" > ~/.config/SDG-PKG/00-core.repo

# Install your module
sdgpkg install my-new-module

# Verify
sdgdocs                   # Should include your module's docs
which mycli               # Should show the symlink
```
