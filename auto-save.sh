#!/bin/bash
# toggle auto-save on and off in helix.
# this is persistent...

if grep -q "auto-save = true" ~/.config/helix/config.toml; then
    sed -i 's/auto-save = true/auto-save = false/g' ~/.config/helix/config.toml
else
    sed -i 's/auto-save = false/auto-save = true/g' ~/.config/helix/config.toml
fi