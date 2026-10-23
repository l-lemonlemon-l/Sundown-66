#!/bin/bash
# Installs Sundown 66 on a Mac with no "damaged" or "unverified developer" warnings.
# Paste into Terminal:
#   curl -fsSL https://raw.githubusercontent.com/l-lemonlemon-l/Sundown-66/main/install-mac.sh | bash
set -euo pipefail
if [ "$(uname -m)" = "arm64" ]; then ZIP=Sundown66-Mac-AppleSilicon.zip; else ZIP=Sundown66-Mac-Intel.zip; fi
URL="https://github.com/l-lemonlemon-l/Sundown-66/releases/latest/download/$ZIP"
TMP="$(mktemp -d)"
echo "Downloading $ZIP"
curl -fL --progress-bar "$URL" -o "$TMP/s66.zip"
rm -rf "/Applications/Sundown 66.app"
ditto -x -k "$TMP/s66.zip" /Applications
xattr -cr "/Applications/Sundown 66.app" 2>/dev/null || true
codesign --verify --deep "/Applications/Sundown 66.app" 2>/dev/null || codesign --force --deep --sign - "/Applications/Sundown 66.app"
rm -rf "$TMP"
echo "Installed. Opening Sundown 66."
open "/Applications/Sundown 66.app"
