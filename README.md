# Dotfiles

### Install on a fresh machine
```bash

# First, install brew

# Then...
brew install awscli bat cloc clojure diff-so-fancy exa fd ffmpeg git guetzli heroku/brew/heroku hub leiningen node planck prettyping rbenv rlwrap yarn

# Then... (todo: add other global npm packages I need)
npm install -g tldr

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
