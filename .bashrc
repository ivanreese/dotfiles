. ~/.bin/bash_colors.sh

# Set up hub
eval "$(hub alias -s)"

# ALIASES

# Quick links
alias cda='cd ~/Dropbox\ \(CDIG\)/Ivan/Apps'
alias cds='cd ~/sites'

# rlwrap figwheel, please
alias fig='rlwrap lein figwheel'

# Make it easy to compile SCSS in my CLJS projects
s='sass --watch scss:resources/public/styles --precision 1 --style compressed'

# Make it easy to compile coffeescript
alias c='coffee -wc .'

# A nice shortcut for pushing a WIP to github and taking a look at it
alias wip='git aa && git cim "WIP" && git push && hub browse'

# Use coffeescript with gulp
alias gulp='gulp --require coffee-script'

# Use my custom ls
alias ls='ls -laG'

# Keep rails handy
alias r="rails"

# We sure like our specs
alias rspec='rspec -c' # Color
alias sp='rspec -c spec'
alias sps='rspec -c spec/services'

# PATHS

# My own stuff
export PATH="~/.bin:$PATH"

# Search usr/local/bin before /bin (etc)
export PATH=/usr/local/bin:${PATH}

# NPM
export PATH=$PATH:/usr/local/share/npm/bin

# Heroku
export PATH=$PATH:/usr/local/heroku/bin

# Postgres.app
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin


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

# Git prompt components
function minutes_since_last_commit {
    now=`date +%s`
    last_commit=`git log --pretty=format:'%at' -1`
    seconds_since_last_commit=$((now-last_commit))
    minutes_since_last_commit=$((seconds_since_last_commit/60))
    echo $minutes_since_last_commit
}
grb_git_prompt() {
    local g="$(__gitdir)"
    if [ -n "$g" ]; then
        local MINUTES_SINCE_LAST_COMMIT=`minutes_since_last_commit`
        if [ "$MINUTES_SINCE_LAST_COMMIT" -gt 1440 ]; then
            local COLOR=${RED}
        elif [ "$MINUTES_SINCE_LAST_COMMIT" -gt 60 ]; then
            local COLOR=${YELLOW}
        else
            local COLOR=${GREEN}
        fi
        local SINCE_LAST_COMMIT="${COLOR}$(minutes_since_last_commit)m${NORMAL}"

        # The __git_ps1 function inserts the current git branch where %s is
        local GIT_PROMPT=`__git_ps1 "(%s|${SINCE_LAST_COMMIT})"`
        echo ${GIT_PROMPT}
    fi
}
export PS1="\h:\W\$(grb_git_prompt) \u\$ "

source ~/.bin/git-completion.bash

# Original prompt:
# export PS1="\h:\W \u\$"

# OTHER HELPFUL STUFF

# rbenv: To enable shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Helper functions
gd() { git diff $* | view -; }
gdc() { gd --cached $*; }
