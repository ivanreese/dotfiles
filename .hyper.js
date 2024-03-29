// -- hyper-stylesheet-hash:c3d90cb85ea63c4655b43d1bc0ebd995 --
// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    // Custom
    scrollback: 100000,

    // Choose either "stable" for receiving highly polished,
    // or "canary" for less polished but more frequent updates
    updateChannel: 'stable',

    // default font size in pixels for all tabs
    fontSize: 22,

    // font family with optional fallbacks
    fontFamily: 'Inconsolata',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: '#999',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BLOCK',

    // set to true for blinking cursor
    cursorBlink: false,

    // color of the text
    foregroundColor: '#f8f8f2',

    // terminal background color
    backgroundColor: 'hsl(230, 15%, 15%)',

    // border color (window, tabs)
    borderColor: 'transparent',

    // custom css to embed in the main window
    css: "",

    // custom css to embed in the terminal window
    termCSS: '',

    // set to `true` (without backticks) if you're using a Linux setup that doesn't show native menus
    // default: `false` on Linux, `true` on Windows (ignored on macOS)
    showHamburgerMenu: '',

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: "#44475a",
      red: "#ff5555",
      green: "#50fa7b",
      yellow: "#E6DB74",
      blue: "#6272a4",
      magenta: "#bd93f9",
      cyan: "#66d9ef",
      white: "#999999",
      lightBlack: "#666666",
      lightRed: "#ff79c6",
      lightGreen: "#ffb86c",
      lightYellow: "#f1fa8c",
      lightBlue: "#f8f8f0",
      lightMagenta: "#cfcfc2",
      lightCyan: "#8be9fd",
      lightWhite: "#ffffff"
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    //
    // Windows
    // - Make sure to use a full path if the binary name doesn't work
    // - Remove `--login` in shellArgs
    //
    // Bash on Windows
    // - Example: `C:\\Windows\\System32\\bash.exe`
    //
    // Powershell on Windows
    // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
    shell: '/opt/homebrew/bin/bash',

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to false for no bell
    bell: false,

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // if true, on right click selected text will be copied or pasted if no
    // selection is present (true by default on Windows)
    // quickEdit: true,

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg

    "hyper-samewd": {
      initialWorkingDirectory: "~/Work"
    },

    tabIcons: {
      mapColors: {
        cake: "#834618",
        coffee: "#834618",
        gulp: "#CF4647",
        irb: "#AE1401",
        rake: "#AE1401",
        rails: "#AE1401",
        shell: "transparent"
      }
    },

    "hyper-stylesheet": {
      "auto-reload": true
    }
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    "hyper-samewd",
    "hyper-focused",
    "hyperterm-close-on-left",
    "hyper-tab-icons",
    "hyperminimal",
    "hyper-stylesheet",
    "hyper-final-say"
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  }
};
