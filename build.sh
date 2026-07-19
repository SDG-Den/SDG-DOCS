#!/bin/bash

LOCALDIR=SDG-DOCS
DOCDIR=SDG-DOCS
TIPDIR=SDG-DOCS

WORKDIR=$(pwd)

rm -rf "$HOME/.local/docs/$DOCDIR" "$HOME/.local/tips/$TIPDIR" "$HOME/.local/$LOCALDIR"

mkdir -p "$HOME/.local/$LOCALDIR"
cp -r "$WORKDIR/local/"* "$HOME/.local/"
cp -r "$WORKDIR/docs/"* "$HOME/.local/docs/"
cp -r "$WORKDIR/tips/"* "$HOME/.local/tips/"

chmod a+x "$HOME/.local/SDG-DOCS/sdg-docs" "$HOME/.local/SDG-DOCS/sdg-links"

sudo ln -sf "$HOME/.local/SDG-DOCS/sdg-docs" /usr/bin/sdgdocs
sudo ln -sf "$HOME/.local/SDG-DOCS/sdg-links" /usr/bin/sdglinks

which sdgdocs || echo "INSTALL FAILED!"
