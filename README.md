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

Start with Homebrew: https://brew.sh

```bash
# Install brewskies
brew cask install java # For clojure
brew install awscli bat cloc clojure diff-so-fancy exa fd ffmpeg git guetzli heroku/brew/heroku hub leiningen node planck prettyping rbenv yarn

# Set up an SSH key
ssh-keygen -t rsa
pbcopy < ~/.ssh/id_rsa.pub
open -a safari https://github.com/settings/ssh

# On my previous Mac, run this to see all the npm packages I have installed
npm ls -g --depth=0

# Then, install whichever ones I want, such as:
npm install -g cdig/cli cljs coffeescript electron-forge gulp-cli shadow-cljs surge svgi tldr

# Set up ruby
rbenv install -l # Figure out which version of ruby is the current
ruby_version="2.6.0" # Update accordingly
rbenv install "$ruby_version"
rbenv global "$ruby_version"
rbenv shell "$ruby_version"
gem update --system
gem install bundler
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

* puma-dev: https://github.com/puma/puma-dev
* iTunes Track Parser: https://dougscripts.com/287
* Webster's dictionary: http://jsomers.net/blog/dictionary
* Inconsolata: https://github.com/google/fonts/tree/master/ofl/inconsolata
* Transfer Divvy shortcuts from previous Mac: http://mizage.com/help/divvy/export_import.html
