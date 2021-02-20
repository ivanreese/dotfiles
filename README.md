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
# First, change the shell from system zsh to system bash
chsh -s /bin/bash

# Then, install homebrew
open -a safari https://brew.sh

# On my previous Mac, run this to see all the brewskies I have installed
brew leaves

# Then, install whichever ones I want, such as:
brew install awscli bash bat cloc diff-so-fancy exa fd ffmpeg git hub mas node prettyping rbenv sass/sass/sass yarn
brew install guetzli imagemagick libdvdcss # Maybe these too?
brew tap heroku/brew && brew install heroku

# Install qlstephen
brew install --cask qlstephen
xattr -cr ~/Library/QuickLook/QLStephen.qlgenerator
qlmanage -r
qlmanage -r cache

# Change the default shell from system bash to brew bash
echo "/usr/local/bin/bash" >> /etc/shells
chsh -s /usr/local/bin/bash
# Note that after each macOS update, this is going to create some Relocated Items.
# I can check them like so to see if Apple changes /etc/shells in a way I care about:
diff /Users/Shared/Relocated\ Items/Configuration/private/etc/shells.system_default /etc/shells

# Set up an SSH key
ssh-keygen -t rsa
pbcopy < ~/.ssh/id_rsa.pub
open -a safari https://github.com/settings/ssh

# On my previous Mac, run this to see all the npm packages I have installed
npm ls -g --depth=0

# Then, install whichever ones I want, such as:
npm install -g cdig/cli coffeescript gulp-cli surge

# On my previous Mac, run this to see all the atom community packages I have installed
apm list

# Then, install whichever ones I want, such as:
apm i auto-update-packages && apm i file-icons && apm i highlight-selected && apm i ivanreese/old-atom-dracula && apm i parinfer && apm i pretty-json && apm i show-invisibles-plus && apm i sorter && apm i tabs-to-spaces
# (For some dumb reason, we can't just list all the packages like we do for brew and npm. apm says they're installed, but they don't appear in ~/.atom/packages)

# On my previous Mac, run this to see all the App Store apps I have installed:
mas list

# Then install whichever ones I want, such as:
# Pixelmator, Numbers, Divvy, Space Gremlin, Final Cut Pro, Icon Slate, Keka, iA Writer, Quiver, xScope, ColorSnapper2, HyperDither, Pixelmator Pro, Wipr, Gifski, Tweetbot, Drafts
mas install 407963104 409203825 413857545 414515628 424389933 439697913 470158793 775737590 866773894 889428659 969418666 1110997147 1289583905 1320666476 1351639930 1384080005 1435957248

# Set up ruby
rbenv install -l # Figure out which version of ruby is the current
ruby_version="3.0.0" # Update accordingly
rbenv install "$ruby_version"
rbenv global "$ruby_version"
rbenv shell "$ruby_version"
gem update --system
gem install bundler
gem install rails
rbenv rehash

# Now set up the dotfiles
# If hub asks for credentials, username is `ivanreese`
# For password, you have to use a token: https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token
# The token issue is explained here: https://github.com/github/hub/issues/2655
# Note that hub is no longer officially supported, so it might break in the future
hub clone git@github.com:ivanreese/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
source bootstrap.sh

# If desired, interactively set up my defaults
bash ivans-defaults.sh
```

#### Copy these
* ~/Library/Sounds
* ~/Library/Fonts
* ~/Library/Dictionaries/dictd_www.dict.org_web1913.dictionary (from http://jsomers.net/blog/dictionary)

# Install these
* Transfer Divvy shortcuts from previous Mac: `divvy://export`
* Postgres app, and then update `PGDATA` in `.bash_profile` to the right version.
* All existing SetApp apps
