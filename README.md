# Dotfiles
These are my dotfiles and other stuff I'll want whenever I move in to a fresh system.

### Pull changes for stuff that might change due to external causes
```bash
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
brew install bash bat cloc diff-so-fancy eza fd git hub mas node prettyping rbenv

# Install qlstephen
brew install --cask qlstephen
xattr -cr ~/Library/QuickLook/QLStephen.qlgenerator
qlmanage -r
qlmanage -r cache

#X# Change the default shell from system bash to brew bash
#X# echo "/opt/homebrew/bin/bash" >> /etc/shells
#X# chsh -s /opt/homebrew/bin/bash
#X# # Note that after each macOS update, this is going to create some Relocated Items.
#X# # I can check them like so to see if Apple changes /etc/shells in a way I care about:
#X# diff /Users/Shared/Relocated\ Items/Configuration/private/etc/shells.system_default /etc/shells
# An alternative to the above, just go to System Prefs > Users & Groups and change the default shell to /opt/homebrew/bin/bash

# Set up an SSH key
ssh-keygen -t rsa
pbcopy < ~/.ssh/id_rsa.pub
open -a safari https://github.com/settings/ssh

# On my previous Mac, run this to see all the npm packages I have installed
npm ls -g --depth=0

# Then, install whichever ones I want, such as:
npm install -g coffeescript netlify-cli npm surge

# On my previous Mac, run this to see all the App Store apps I have installed:
mas list

# Then install whichever ones I want, such as:
#           Numbers   Final Cut Pro Icon Slate Keka      iA Writer Quiver    xScope    HyperDither Pixelmator Pro Wipr       Gifski     Drafts
mas install 409203825 424389933     439697913  470158793 775737590 866773894 889428659 1110997147  1289583905     1320666476 1351639930 1435957248

# Set up ruby
rbenv install -l # Figure out which version of ruby is the current
ruby_version="3.2.0" # Update accordingly
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

# Disable spotlight
sudo mdutil -a -i off
# Also do LaunchBar > Index > Show Index > Applications > Options > Use Spotlight index: off
```

#### Copy these
* ~/Library/Sounds
* ~/Library/Fonts
* ~/Library/Dictionaries/dictd_www.dict.org_web1913.dictionary (from http://jsomers.net/blog/dictionary)
