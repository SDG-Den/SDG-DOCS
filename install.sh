#!/bin/bash

unipkg install any fzf
unipkg install any bat

WORKDIR="$HOME/.cache/SDG-PKG/sdg-docs"

cp -r "$WORKDIR/local/"* "$HOME/.local/"
cp -r "$WORKDIR/docs/"* "$HOME/.local/docs/"
cp -r "$WORKDIR/tips/"* "$HOME/.local/tips/"

sudo ln -sf "$HOME/.local/SDG-DOCS/sdg-docs" /usr/bin/sdgdocs
sudo ln -sf "$HOME/.local/SDG-DOCS/sdg-links" /usr/bin/sdglinks

which sdgdocs || echo "INSTALL FAILED!"
