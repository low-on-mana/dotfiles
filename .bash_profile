# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH=$PATH:~/.cache/rebar3/bin

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file
eval "$(rbenv init -)"
source $HOME/Documents/code_la/erlp/activate
export GREP_OPTIONS='--color=always'
# export JRUBY_OPTS='--dev'
HISTFILESIZE=100000
HISTSIZE=100000

alias gsts='git stash save -u'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gs='git status '
alias ga='git add '
alias gap='git add -p .'
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gp='git push'
alias gco='git checkout '
alias gpl='git pull '
alias gm='git merge '
alias gl='git log '
alias gk='gitk --all&'
alias gx='gitx --all'
alias fn='find . -name '
alias v='vim '

# Project related
alias dp='cd /Users/anoop/Documents/code_la/ruby/driver-portal-3'
alias is='cd /Users/anoop/Documents/code_la/ruby/insurance-service'
alias rs='rails s -p4567'
alias pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias ts='nohup theine_server &'
alias st='sh ~/Documents/code_la/ruby/scripts/start_all.sh'
