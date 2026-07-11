#!/bin/bash

WORKDIR="$HOME/.cache/SDG-PKG/sdg-docs"

# Update the scripts — only touch our own dir.
rm -rf "$HOME/.local/SDG-DOCS"
cp -r "$WORKDIR/local/SDG-DOCS" "$HOME/.local/SDG-DOCS"

# Don't touch ~/.local/docs/ — each doc module manages its own docs.
# Don't touch ~/.local/tips/ — each tip module manages its own tips.

sudo ln -sf "$HOME/.local/SDG-DOCS/sdg-docs" /usr/bin/sdgdocs
sudo ln -sf "$HOME/.local/SDG-DOCS/sdg-links" /usr/bin/sdglinks
