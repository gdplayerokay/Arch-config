#!/usr/bin/env bash

# Path to your Steam installation (adjust if needed)
STEAM_CMD="steam"

# Check if Steam is already running
if pgrep -x "steam" > /dev/null; then
    # If Steam is running, just switch to Big Picture Mode
    "$STEAM_CMD" -bigpicture
else
    # If Steam is not running, start it directly in Big Picture Mode
    "$STEAM_CMD" -silent -bigpicture &
fi

# Optional: bring the window into focus (works on most compositors)
sleep 1
wmctrl -xa "steam_app_0" || true   # Steam Big Picture doesn't always have a reliable WM_CLASS, this is best-effort

