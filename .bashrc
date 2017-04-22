# Set up hub
eval "$(hub alias -s)"

# ALIASES

# Quick links
alias cdw='cd ~/Work'
alias cds='cd ~/Sites'
alias cdl='cd ~/Work/lbs'
alias cdf='cd ~/Sites/frails'
alias cdi='cd ~/Sites/ivanish'

# clean before compiling
# rlwrap figwheel, please
alias fig='lein clean && rlwrap lein figwheel'

# Make it easy to compile SCSS in my CLJS projects
alias s='sass --watch scss:resources/public/styles --precision 1 --style compressed'

# A nice shortcut for pushing a WIP to github and taking a look at it
alias wip='git aa && git cim "WIP" && git push && hub browse'

# Nicer git stuff
alias g='git'
alias gs='git s'
alias gaa='git aa'
alias gr='git r'
alias gra='git ra'

# Use my custom ls
alias ls='ls -laG'

# Keep rails handy
alias r="rails"

# We sure like our specs
alias rspec='rspec -c' # Color


# PATHS & VARS

# My own stuff
export PATH="$PATH:~/.bin"

# Search usr/local/bin before /bin (etc)
export PATH=/usr/local/bin:${PATH}

# rbenv
export PATH=$PATH:~/.rbenv/shims

# NPM
export PATH=$PATH:/usr/local/share/npm/bin

# Heroku
export PATH=$PATH:/usr/local/heroku/bin

# Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PGDATA="/Users/admin/Library/Application Support/Postgres/var-9.6"

# bins in the current dir
export PATH=.:${PATH}

# Java
export JAVA_HOME=$(/usr/libexec/java_home)

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


# FIN

# Set a minimal prompt
export PS1="\W 🐌  "

# Not sure we want this anymore
# source ~/.bin/git-completion.bash

# rbenv: To enable shims and autocompletion
eval "$(rbenv init -)"

# Clear the login message
clear
