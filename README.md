# Sundown 66

A 70s-style, 32-bit pseudo-3D arcade road racer down Route 66, from Chicago to Santa Monica.

Pick a car and paint in the garage, gear up in the armory with a main gun and a sidearm, then race the Baron town to town. You earn cash every second you stay ahead of him. Shoot out cop tires, dodge jaywalkers, buy gas on the fly, and drive into the night with the radio on. Cash, car parts and guns carry over between runs.

## Play

- **Web:** open `index.html` in a browser, or turn on GitHub Pages for this repo and play at the Pages link.
- **Windows:** unzip `Sundown66-Windows.zip` and run `Sundown 66.exe`.
- **Mac:** unzip the Apple Silicon or Intel zip and open `Sundown 66.app`. The first time, right-click it and choose Open.
- **Android:** install `Sundown66-Android.apk`.

Every version goes full screen when you start, with no on-screen buttons.

## Controls (touch)

Hold to gas, let go to brake, tilt to steer. Double-tap to boost, swipe down to buy gas, two-finger tap for the radio. The crosshair aims and fires by itself. The tilt setting is at the top-left of the garage screen.

## Controls (keyboard)

| Key | Action |
| --- | --- |
| Arrows / WASD | Drive |
| Space / Enter | Start, confirm |
| Mouse + E or click | Aim and fire at cop tires |
| Q | Swap main gun and sidearm |
| B or Shift | Boost (three, refilled every third town) |
| C | Buy gas ($6) |
| P / M | Car parts / gun mods (garage and armory) |
| R | Radio |
| Esc | Leave full screen (web), quit from the title (desktop) |

## Build the Android app

```
cd android
./build.sh
```

Needs `aapt`, `apksigner`, `zipalign`, `dalvik-exchange`, `android-sdk-platform-23` and a JDK. It wraps `index.html` in a full-screen WebView app that targets Android 15.

## Build the desktop apps

```
cd desktop
./build.sh
```

Needs Node.js. Produces Windows (x64) and Mac (Apple Silicon and Intel) apps in `desktop/dist/`.

## Layout

- `index.html` is the whole game in one file: HTML, CSS and JavaScript, no dependencies.
- `android/` holds the WebView wrapper, its manifest, icon and build script.
- `desktop/` holds the Electron wrapper for Windows and Mac and its build script.
- `CHANGELOG.md` lists what changed in each version.
