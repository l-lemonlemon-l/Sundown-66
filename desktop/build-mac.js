// Packages the Mac app (Apple Silicon and Intel). Run on a Mac.
// With APPLE_ID, APPLE_APP_PASSWORD and APPLE_TEAM_ID set (and a Developer ID
// certificate in the keychain) the app is signed and notarized by Apple, so it
// opens with a double-click from any download. Without them it is signed
// ad hoc, which runs fine when installed with install-mac.sh.
const { packager } = require('@electron/packager');
const { execFileSync } = require('child_process');
const path = require('path');

const notarize = !!(process.env.APPLE_ID && process.env.APPLE_APP_PASSWORD && process.env.APPLE_TEAM_ID);

(async () => {
  const opts = {
    dir: '.', name: 'Sundown 66', platform: 'darwin', arch: ['arm64', 'x64'],
    out: 'dist', overwrite: true, ignore: [/^\/dist/],
    appBundleId: 'com.sundown66.game', appCategoryType: 'public.app-category.racing-games'
  };
  if (notarize) {
    opts.osxSign = { optionsForFile: () => ({ hardenedRuntime: true, entitlements: 'entitlements.mac.plist' }) };
    opts.osxNotarize = { appleId: process.env.APPLE_ID, appleIdPassword: process.env.APPLE_APP_PASSWORD, teamId: process.env.APPLE_TEAM_ID };
  }
  const outDirs = await packager(opts);
  for (const dir of outDirs) {
    const app = path.join(dir, 'Sundown 66.app');
    if (!notarize) execFileSync('codesign', ['--force', '--deep', '--sign', '-', app], { stdio: 'inherit' });
    execFileSync('codesign', ['--verify', '--deep', '--strict', app], { stdio: 'inherit' });
    console.log((notarize ? 'Signed and notarized: ' : 'Signed ad hoc: ') + app);
  }
})().catch(e => { console.error(e); process.exit(1); });
