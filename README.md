# Sundown 66

A 70s-style, 32-bit pseudo-3D arcade road racer down Route 66, from Chicago to Santa Monica.

Pick a car and paint in the garage, gear up in the armory with a main gun and a sidearm, then race the Baron town to town. You earn cash every second you stay ahead of him. Shoot out cop tires, dodge jaywalkers, buy gas on the fly, and drive into the night with the radio on. Cash, car parts and guns carry over between runs.

## Play

- **Browser:** open `index.html`, or turn on GitHub Pages for this repo and play at the Pages link.
- **Android:** install `Sundown66.apk` from the latest release. Tilt to steer, hold the screen to gas, let go to brake. The crosshair aims and fires on its own.

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
| F | Full screen |

## Build the APK

```
cd android
./build.sh
```

The script needs `aapt`, `apksigner`, `zipalign`, `dalvik-exchange`, `android-sdk-platform-23` and a JDK. It wraps `index.html` in a full-screen WebView app that targets Android 15.

## Layout

- `index.html` is the whole game in one file: HTML, CSS and JavaScript, no dependencies.
- `android/` holds the WebView wrapper, its manifest, icon and build script.
