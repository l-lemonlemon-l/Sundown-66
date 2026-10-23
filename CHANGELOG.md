# Changelog

## 1.4.2 (2026-10-23)

- Quit with confirmation. Esc (keyboard), the Android back button, or a three-finger tap (touch) opens "ARE YOU SURE / YOU CANT UNDO THIS".
  - Road Trip: the run pauses while the question is open. Yes, quit returns to the title; cash and parts you already earned are kept.
  - Race Friends: the race keeps going for everyone else. Yes, leave takes you out of the race and the room.
- Android back button steps back through menus and closes the app from the title screen.
- Repo renamed to Sundown-66; install script and links updated.
- Release builds now start when a release is published on GitHub, and attach the Windows, Mac and Android files to it.

## 1.4.1 (2026-10-23)

- Fixed macOS calling the app "damaged". Mac builds are now made on a real Mac by GitHub Actions and signed there (`desktop/build-mac.js`), instead of being packaged on Linux where they cannot be signed.
- New one-line Mac installer, `install-mac.sh`: downloads the right build, installs it to Applications and opens it with no security warnings.
- Optional full Apple signing and notarization: add a Developer ID certificate and Apple ID secrets to the repo and Mac builds open with a double-click from any download.
- New release workflow builds Windows, Mac and Android on every version tag and attaches them to a GitHub release.

## 1.4.0 (2026-10-23)

### Race Friends (online multiplayer)
- New mode picker after the title: Road Trip (the solo game) or Race Friends.
- Race Friends is online, 2 to 4 racers. One player hosts and gets a 4-letter room code; friends join by typing or tapping it in.
- The host picks the track by state. Each of the eight Route 66 states is its own race with real start and end towns, its own stretch of road, scenery and time of day:
  Illinois (Chicago to St Louis, 300 mi), Missouri (St Louis to Joplin, 280 mi), Kansas (Galena to Baxter Springs, 80 mi sprint), Oklahoma (Miami to Texola, 300 mi), Texas (Shamrock to Glenrio, 180 mi), New Mexico (Tucumcari to Gallup, 310 mi, dusk), Arizona (Holbrook to Kingman, 300 mi, night), California (Needles to Santa Monica, 300 mi, night).
- 3-2-1-GO countdown for everyone, live standings and race timer on screen, name tags over the other racers' cars.
- Results screen with finish times. Prize money: $150 for 1st, $75 for 2nd, $40 for 3rd, $20 for 4th, added to your wallet.
- After the results everyone returns to the lobby and the host can start the next race. Players who join mid-race wait for the next one.
- No cops, jaywalkers, Baron or fuel in races. Boosts work as usual (three, refilled every third town).
- Clear messages for a wrong code, a full race, the host leaving, or no internet.

### How players connect
- Windows, Mac, Android and the web version connect through PeerJS (free public connection service, peer to peer), so all of them can race each other.
- The copy published inside Claude connects through Claude's live rooms instead, so it races other people who have that page open. It cannot race the apps.

### Builds
- Android app 1.4, Windows and Mac apps 1.4.0, web `index.html`. PeerJS 1.5.4 (MIT license) is included in the page so the apps work without loading anything else.

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
