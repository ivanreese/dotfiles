# Set up hub
eval "$(hub alias -s)"

# ALIASES

# Quick links
alias cda='cd ~/Work'
alias cds='cd ~/Sites'

# rlwrap figwheel, please
alias fig='rlwrap lein figwheel'

# Make it easy to compile SCSS in my CLJS projects
alias s='sass --watch scss:resources/public/styles --precision 1 --style compressed'

# Make it easy to compile coffeescript
alias c='coffee -wc .'

# A nice shortcut for pushing a WIP to github and taking a look at it
alias wip='git aa && git cim "WIP" && git push && hub browse'

# Use my custom ls
alias ls='ls -laG'

# Keep rails handy
alias r="rails"

# We sure like our specs
alias rspec='rspec -c' # Color


# PATHS

# My own stuff
export PATH="$PATH:~/.bin"

# Search usr/local/bin before /bin (etc)
export PATH=/usr/local/bin:${PATH}

# NPM
export PATH=$PATH:/usr/local/share/npm/bin

# Heroku
export PATH=$PATH:/usr/local/heroku/bin

# Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# VARS

# rbenv: To use Homebrew's directories rather than ~/.rbenv
export RBENV_ROOT=/usr/local/var/rbenv

# Improve coloring?
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# Erase duplicates in history
export HISTCONTROL=erasedups

# Store 10k history entries
export HISTSIZE=10000


# BASH OPTIONS

# Append to the history file when exiting instead of overwriting it
shopt -s histappend

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
  shopt -s "$option" 2> /dev/null
done

# Set a minimal prompt
export PS1="\W 🐌  "

# Can't remember what this does
source ~/.bin/git-completion.bash


# OTHER HELPFUL STUFF

# rbenv: To enable shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# NVM
export NVM_DIR="/Users/admin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Finally, clear the login message
clear
