// Sundown 66 desktop: opens the game full screen with no menus.
// F11 toggles full screen. Esc on the title screen quits.
const { app, BrowserWindow, Menu } = require('electron');
const path = require('path');

app.commandLine.appendSwitch('autoplay-policy', 'no-user-gesture-required');

function createWindow() {
  Menu.setApplicationMenu(null);
  const win = new BrowserWindow({
    width: 1280,
    height: 800,
    fullscreen: true,
    backgroundColor: '#000000',
    autoHideMenuBar: true,
    title: 'Sundown 66',
    webPreferences: { contextIsolation: true, sandbox: true }
  });
  win.loadFile(path.join(__dirname, 'game', 'index.html'), { query: { desktop: '1' } });
  win.webContents.on('before-input-event', (event, input) => {
    if (input.type === 'keyDown' && input.key === 'F11') {
      win.setFullScreen(!win.isFullScreen());
      event.preventDefault();
    }
  });
}

app.whenReady().then(createWindow);
app.on('window-all-closed', () => app.quit());
app.on('activate', () => { if (BrowserWindow.getAllWindows().length === 0) createWindow(); });
