# ALIASES

alias cda='cd /Users/admin/Dropbox/Assets\ and\ Resources/Ivan/Apps'
alias g='gulp --require coffee-script'

alias c='coffee -j app.js -wc .'
alias co='coffee -o . -j script.js -wc coffee'
alias shopc='coffee -o assets -j app.js -wc coffee'

alias s='sass --watch app.scss:app.css'
alias so='sass --watch scss/app.scss:style.css'
alias shops='sass --watch scss/app.scss:assets/app.css.liquid'

# Add color to ls
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -aG'
alias lag='ls -laG'

alias rbgrep="grep --include='*.rb' $*" # Ruby grep — (does $* mean all args?)
alias r="rails"

alias rspec='rspec -c' # Color
alias sp='rspec -c spec'
alias sps='rspec -c spec/services'

# PATHS

# Search usr/local/bin before /bin (etc)
export PATH=/usr/local/bin:${PATH}

# Postgres.app
export PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin:${PATH}

# NPM
export PATH=/usr/local/share/npm/bin:${PATH}


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


# OTHER HELPFUL STUFF

# rbenv: To enable shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Helper functions
gd() { git diff $* | view -; }
gdc() { gd --cached $*; }
