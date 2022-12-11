#!/bin/bash
# toggle indent-giudes on and off in helix.
# this is persistent...

if grep -q "render = true" ~/.config/helix/config.toml; then
    sed -i 's/render = true/render = false/g' ~/.config/helix/config.toml
else
    sed -i 's/render = false/render = true/g' ~/.config/helix/config.toml
fi