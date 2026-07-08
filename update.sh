#!/bin/bash

WORKDIR=/home/$(whoami)/.cache/SDG-PKG/sdg-docs

rm -rf /home/$(whoami)/.local/docs/SDG-DOC-NEW-USERS
rm -rf /home/$(whoami)/.local/docs/SDG-DOC-TINKERERS
rm -rf /home/$(whoami)/.local/docs/SDG-DOC-DEVS
rm -rf /home/$(whoami)/.local/docs/SDG-DOC-AGENTS
cp -r $WORKDIR/docs/SDG-DOC-* /home/$(whoami)/.local/docs/

rm -rf /home/$(whoami)/.local/tips/SDG-DOCS
mkdir -p /home/$(whoami)/.local/tips/SDG-DOCS
cp -r $WORKDIR/tips/* /home/$(whoami)/.local/tips/SDG-DOCS

rm -rf /home/$(whoami)/.local/SDG-DOCS
cp -r $WORKDIR/local/SDG-DOCS /home/$(whoami)/.local/SDG-DOCS
chmod a+x /home/$(whoami)/.local/SDG-DOCS/sdg-docs

sudo ln -sf /home/$(whoami)/.local/SDG-DOCS/sdg-docs /usr/bin/sdg-docs
