#!/usr/bin/env bash
# Builds the Windows and Mac apps from ../index.html into desktop/dist/.
# Needs Node.js. Run: ./build.sh
set -euo pipefail
cd "$(dirname "$0")"
npm install --no-audit --no-fund
mkdir -p game && cp ../index.html game/index.html
npx electron-packager . "Sundown 66" --platform=win32 --arch=x64 --out=dist --overwrite --ignore='^/dist'
npx electron-packager . "Sundown 66" --platform=darwin --arch=arm64,x64 --out=dist --overwrite --ignore='^/dist'
echo "Built apps are in desktop/dist/"
