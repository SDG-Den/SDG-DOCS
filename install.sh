#!/bin/bash

WORKDIR=/home/$(whoami)/.cache/SDG-PKG/sdg-docs

cp -r $WORKDIR/docs/SDG-DOC-* /home/$(whoami)/.local/docs/

mkdir -p /home/$(whoami)/.local/tips/SDG-DOCS
cp -r $WORKDIR/tips/* /home/$(whoami)/.local/tips/SDG-DOCS

mkdir -p /home/$(whoami)/.local/SDG-DOCS
cp $WORKDIR/local/SDG-DOCS/sdg-docs /home/$(whoami)/.local/SDG-DOCS/sdg-docs
chmod a+x /home/$(whoami)/.local/SDG-DOCS/sdg-docs

sudo ln -sf /home/$(whoami)/.local/SDG-DOCS/sdg-docs /usr/bin/sdg-docs

which sdg-docs || echo "INSTALL FAILED!"
