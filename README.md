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
brew install bash bat cloc diff-so-fancy eza fd git hub mas node prettyping

# Change the default shell from system bash to brew bash
# Go to System Settings > Users & Groups and change the default shell to /opt/homebrew/bin/bash

# Dracula theme for xcode (todo: see if I can install any other Dracula themes via brew)
brew tap dracula/install
brew install --cask dracula-xcode

# Install qlstephen
brew install --cask qlstephen
xattr -cr ~/Library/QuickLook/QLStephen.qlgenerator
qlmanage -r
qlmanage -r cache

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

# Now set up the dotfiles
# If hub asks for credentials, username is `ivanreese`
# For password, you have to use a token: https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token
# The token issue is explained here: https://github.com/github/hub/issues/2655
# Note that hub is no longer officially supported, so it might break in the future
hub clone git@github.com:ivanreese/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
source bootstrap.sh

# Disable spotlight — though maybe I shouldn't be doing that anymore?
sudo mdutil -a -i off
# Also do LaunchBar > Index > Show Index > Applications > Options > Use Spotlight index: off

# Display Xcode build times — https://ricardo-castellanos-herreros.medium.com/speeding-up-xcode-builds-97173cb1adba
defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES

# Adjust spacing of menu bar items — https://flaky.build/built-in-workaround-for-applications-hiding-under-the-macbook-pro-notch
defaults -currentHost write -globalDomain NSStatusItemSpacing -int 12
```

#### Copy these

- ~/Library/Sounds
- ~/Library/Fonts
- ~/Library/Dictionaries/dictd_www.dict.org_web1913.dictionary (from http://jsomers.net/blog/dictionary)
