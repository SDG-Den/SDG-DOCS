#!/bin/bash

WORKDIR="$HOME/.cache/SDG-PKG/sdg-docs"

cp -r "$WORKDIR/local/"* "$HOME/.local/"
cp -r "$WORKDIR/docs/"* "$HOME/.local/docs/"
cp -r "$WORKDIR/tips/"* "$HOME/.local/tips/"

sudo ln -sf "$HOME/.local/SDG-DOCS/sdg-docs" /usr/bin/sdg-docs

which sdg-docs || echo "INSTALL FAILED!"
