# Dotfiles

### Install on a fresh machine
```bash

# First, install brew

# Then...
brew cask install java # For clojure
brew install awscli bat cloc clojure diff-so-fancy exa fd ffmpeg git guetzli heroku/brew/heroku hub leiningen node planck prettyping rbenv yarn

# On my previous Mac, run this to see all the npm packages I have installed
npm ls -g --depth=0

# Then, install whichever ones I want, such as:
npm install -g cdig/cli cljs coffeescript electron-forge gulp-cli shadow-cljs surge svgi tldr

# Then...
git clone https://github.com/ivanreese/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
source bootstrap.sh
```

### Pull changes for stuff that might change due to external causes
```bash
cp ~/.atom/config.cson .atom/config.cson
cp ~/.atom/init.coffee .atom/init.coffee
cp ~/.atom/keymap.cson .atom/keymap.cson
cp ~/.atom/styles.less .atom/styles.less
```
