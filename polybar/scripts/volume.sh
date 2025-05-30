#!/bin/bash

# Get current volume using pamixer
volume=$(pamixer --get-volume)
mute=$(pamixer --get-mute)

# Display volume or muted icon
if [ "$mute" = "true" ]; then
    echo "🔇 Muted  "
else
    echo "  $volume%  "
fi

