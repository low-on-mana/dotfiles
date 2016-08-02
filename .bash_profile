# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file
eval "$(rbenv init -)"
source $HOME/Documents/code_la/erlp/activate
set -o vi

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
alias k='oathtool --totp -b atnyoeb6mocozg5s | pbcopy'
