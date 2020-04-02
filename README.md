# Dotfiles
These are my dotfiles and other stuff I'll want whenever I move in to a fresh system.

### Pull changes for stuff that might change due to external causes
```bash
cp ~/.atom/config.cson ~/.dotfiles/.atom/config.cson
cp ~/.atom/init.coffee ~/.dotfiles/.atom/init.coffee
cp ~/.atom/keymap.cson ~/.dotfiles/.atom/keymap.cson
cp ~/.atom/styles.less ~/.dotfiles/.atom/styles.less
cp ~/.hyper.css ~/.dotfiles/.hyper.css
cp ~/.hyper.js ~/.dotfiles/.hyper.js
```

### New Machine Setup

```bash
# First, change the default shell from system zsh to system bash
chsh -s /bin/bash

# Then, install homebrew
open -a safari https://brew.sh

# Install brewskies
brew install awscli bat bash cloc diff-so-fancy exa fd ffmpeg git guetzli hub node prettyping rbenv yarn
brew cask install qlstephen

# Change the default shell from system bash to brew bash
chsh -s /usr/local/bin/bash

# Set up an SSH key
ssh-keygen -t rsa
pbcopy < ~/.ssh/id_rsa.pub
open -a safari https://github.com/settings/ssh

# On my previous Mac, run this to see all the npm packages I have installed
npm ls -g --depth=0

# Then, install whichever ones I want, such as:
npm install -g cdig/cli coffeescript electron-forge gulp-cli surge tldr

# Set up ruby
rbenv install -l # Figure out which version of ruby is the current
ruby_version="2.7.0" # Update accordingly
rbenv install "$ruby_version"
rbenv global "$ruby_version"
rbenv shell "$ruby_version"
gem update --system
gem install bundler
gem install rails
rbenv rehash

# Now set up the dotfiles
# If hub asks for credentials, username is `ivanreese`
# After it asks for creds, it'll make an OAuth token, stored in ~/.config/hub
# I should use that token instead of a password if git asks me for a password when working with an https remote
hub clone git@github.com:ivanreese/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
source bootstrap.sh

# Finally, interactively set up my defaults
bash ivans-defaults.sh
```

#### Copy these
* /Library/Sounds
* ~/Library/Fonts
* ~/Library/Dictionaries/dictd_www.dict.org_web1913.dictionary (from http://jsomers.net/blog/dictionary)

# Install these
* Transfer Divvy shortcuts from previous Mac: http://mizage.com/help/divvy/export_import.html
* Latest Inconsolata: https://github.com/google/fonts/tree/master/ofl/inconsolata
* iTunes Track Parser: https://dougscripts.com/287
