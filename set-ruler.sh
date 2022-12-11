#!/bin/bash
# toggle ruler on and off in helix.
# this is persistent...

if grep -q "rulers = \[\]" ~/.config/helix/config.toml; then
    sed -i 's/rulers = \[\]/rulers = \[80\]/g' ~/.config/helix/config.toml
else
    sed -i 's/rulers = \[80\]/rulers = \[\]/g' ~/.config/helix/config.toml
fi