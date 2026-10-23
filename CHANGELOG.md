# Changelog

## 1.3.1 (2026-10-22)

- Android: tilt steering now reads the phone's gravity sensor directly in the app and sends it to the game, instead of relying on the browser motion events inside the app.
- Tilt setting reset to ON (an old OFF or FLIP choice from the 1.2 corner button could stick after the button was removed).
- Garage shows the tilt setting as a tappable plate at the top left.
- While driving on touch, a warning line appears if tilt is off or no sensor data is coming in, and holding left or right of the screen steers instead.

## 1.3.0 (2026-10-22)

### Builds
- Added Windows and Mac desktop apps (Electron). They open straight into full screen with no menus. F11 toggles full screen, Esc on the title screen quits. Mac comes in Apple Silicon and Intel builds.
- Android app updated to 1.3.
- Web version is `index.html`.

### Touch controls (phone and tablet)
- No on-screen buttons. Every version goes full screen automatically when you start.
- Hold to gas, let go to brake, tilt to steer.
- Double-tap anywhere to boost.
- Swipe down to buy gas.
- Two-finger tap to change the radio station.
- Tilt setting (on, flipped, off) moved to the top-left of the garage screen.
- When your main gun is reloading, the sidearm takes over by itself.

### Keyboard
- Esc leaves full screen on the web version.

## 1.2.0 (2026-10-22)

- Touch: the crosshair aims itself at the cop's tires and fires automatically.
- Tilt steering turns harder the farther you tilt (up to about 2.4 times keyboard speed).
- Three boosts per run that refill every third town (B or Shift on keyboard).
- Android app retargeted to Android 15 so it installs on current phones.

## 1.1.0 (2026-10-22)

- Android app (WebView wrapper) with tilt steering from the phone's gravity sensor.
- Tilt can be flipped or turned off.

## 1.0.0 (2026-10-22)

- Route 66 pseudo-3D arcade racer from Chicago to Santa Monica, 19 towns.
- Garage with three cars, five 70s paints and twelve car parts.
- Armory with three main guns, two sidearms and four mods each. Guns only shoot cop tires.
- The Baron rival: earn cash every second you are ahead of him.
- Cops chase you when your heat rises. Shoot out both rear tires to spin them out for a $50 bounty. Three bumps and you are busted.
- Jaywalkers dive out of the way; near misses raise your heat.
- Buy gas on the fly with C. Red fuel cans on the road are free.
- Town arrivals give a speed boost.
- Night driving with headlights and tail lights after the sun goes down.
- Radio with three original stations: disco, rock and country.
- Dash speedometer and gas gauge.
- Cash, parts and guns carry over between runs.
