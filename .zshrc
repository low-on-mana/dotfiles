# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS

 #Path to your oh-my-zsh installation.
export ZSH=/Users/anoop/.oh-my-zsh
export PYTHONSTARTUP=~/.pythonrc
GOPATH=/Users/anoop/Documents/code_la/dreamplug/golang
export GOPATH
PATH="${PATH}:${GOPATH}/bin"
export PATH

#
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(fasd git rake zsh-autosuggestions docker vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH=$PATH:~/.cache/rebar3/bin
export JRUBY_OPTS="-Xcompile.invokedynamic=false -J-XX:+TieredCompilation -J-XX:TieredStopAtLevel=1 -J-noverify -Xcompile.mode=OFF -J-XX:+CMSClassUnloadingEnabled -J-XX:+UseConcMarkSweepGC"
eval "$(rbenv init -)"
eval "$(fasd --init auto)"
# source $HOME/Documents/code_la/erl_19.3/activate

alias fn='find . -name '
alias v='vim '
alias vn='vim -u NONE '

#
# Project related
alias w='cd /Users/anoop/Documents/code_la/gopay'
alias pd='cd /Users/anoop/Documents/code_la/project_snakes_and_nerds'
alias rs='bundle exec rails s -p4567'
alias k="oathtool --totp -b fi632bfhjbsqayaq | tr -d '\n' | pbcopy"

# cex.io
alias k2="oathtool --totp -b GRLHAZ3VJBGVWUTYERLS4S3UOFMHQ5TC | tr -d '\n' | pbcopy"
alias k3="oathtool --totp -b 7FDVVNONNRANIEIV | tr -d '\n' | pbcopy"
alias k3="oathtool --totp -b drdg2wuhgvkdvpa6 | tr -d '\n' | pbcopy"
alias pg='brew services start postgresql'
# alias ts='nohup theine_server &'
alias st='sh ~/Documents/code_la/ruby/scripts/start_all.sh'
alias ed='/Users/anoop/.p2/pool/plugins/org.eclim_2.7.0/bin/eclimd'

### CUREFIT STARTS
alias gvstagejump='ssh ubuntu@13.232.184.141'
alias gvstage1='ssh ubuntu@13.233.123.166'
alias gvprodjump='ssh ubuntu@35.154.164.169'
alias gvprod1='ssh ubuntu@13.233.93.37'
alias gvprod2='ssh ubuntu@13.232.114.8'
alias gvprod3='ssh ubuntu@52.66.204.25'
alias gofitstage='ssh anoop@13.232.119.110'
alias mysqlstage='ssh -i ~/.ssh/curefit-stage.pem ubuntu@stage.curefit.co -fN -L 3306:cfdb.cw5efoqjpxhj.ap-south-1.rds.amazonaws.com:3306'
alias redisstage='ssh -i  ~/.ssh/curefit-stage.pem -fN -L 6379:curefit.y66lea.0001.aps1.cache.amazonaws.com:6379 ubuntu@stage.curefit.co'
alias cultstage='ssh -i ~/.ssh/curefit-stage.pem ubuntu@stage.curefit.co -fN -L 5005:cultapi-staging.ap-south-1.elasticbeanstalk.com:80'
alias mongostage='ssh -i  ~/.ssh/curefit-stage.pem -fN -L 27017:stage.curefit.co:27017 ubuntu@stage.curefit.co'
alias gofitprod='ssh -i ~/.ssh/gear-staging.pem ubuntu@35.154.122.115'
### CUREFIT ENDS

function swap()         
{
	local TMPFILE=tmp.$$
	mv "$1" $TMPFILE
	mv "$2" "$1"
	mv $TMPFILE "$2"
}

# ZSH auto suggestions color coding
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=58"

autoload -U select-bracketed
autoload -U select-quoted
zle -N select-quoted
zle -N select-bracketed
for km in visual viopp; do
    bindkey -M $km -- '-' vi-up-line-or-history
    for c in {a,i}${(s..)^:-\'\"\`\|,./:;-=+@}; do
        bindkey -M $km $c select-quoted
    done
    for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
        bindkey -M $km $c select-bracketed
    done
done

#artwork kong
# echo "════════════════════███████"
# echo "═══════════════════█████████"
# echo "══════════════════███████████"
# echo "═════════════════███░░███░░███"
# echo "════════════════███░░░░█░░░░░██"
# echo "════════════█████░░░███████░░░████"
# echo "═══════════█░░░████░█░█░█░█░███░░░█"
# echo "═══════════█░░░███░░███░███░░██░░░█"
# echo "═════════███░░░███░░░░░░░░░░░██░░░███"
# echo "═════════█████░░░░░░░░███░░░░░░░█████"
# echo "═══════██████░░░░░░░░░░░░░░░░░░░░██████"
# echo "══════███████░░░░█████████████░░░███████"
# echo "═══██████████░░░█░░░░░░░░░░░░░█░░████████"
# echo "══██████████████░░░░░░░░░░░░░░░██████████"
# echo "═███████████████░░░░░░░░░░░░░░░███████████"
# echo "═█████████████████░░░░░░░░░░░░█████████████"
# echo "═██████████████████░░░░░░░░░░██████████████"
# echo "═██████████████████████████████████████████"
# echo "═██████████████░░░██████████░░░████████████"
# echo "══█████████████░░░░░░████░░░░░░████████████"
# echo "═══█████████████░█░░░░██░░░░█░████████████"
# echo "════█████████████░░░░░██░░░░░████████████"
# echo "══════██████████░█░░░░██░░░░█░██████████"
# echo "════════████████░█░░░░░░░░░░█░████████"
# echo "═══════████████░░░░░░█░░█░░░░░░████████"
# echo "═══════██████████████░░░░██████████████"
# echo "══════███████████░░░░░░░░░░░░███████████"
# echo "════█████████████░░░░█░█░░░░░████████████"
# echo "═══███████████████░░█░█░█░░░██████████████"
# echo "═══███████████████████████████████████████"
# echo "═══███████████████████████████████████████"
# echo "═══████████████████════════███████████████"
# echo "════█████████████════════════████████████"
# echo "════████████████══════════════███████████"
# echo "═████░░███░░░██═══════════════██░░░███░░████"
# echo "█░░░░░█░░░░██░█═══════════════█░██░░░░█░░░░░█"
# echo "██████████████═════════════════██████████████"
#
#artwork flipper
# echo "                                   __"
# echo "                               _.-~  )"
# echo "                    _..--~~~~,'   ,-/     _"
# echo "                 .-'. . . .'   ,-','    ,' )"
# echo "               ,'. . . _   ,--~,-'__..-'  ,'"
# echo "             ,'. . .  (@)' ---~~~~      ,'"
# echo "            /. . . . '~~             ,-'"
# echo "           /. . . . .             ,-'"
# echo "          ; . . . .  - .        ,'"
# echo "         : . . . .       _     / "
# echo "        . . . . .          \`-.:"
# echo "       . . . ./  - .          )"
# echo "      .  . . |  _____..---.._/ _____"
# echo "~---~~~~----~~~~             ~~"

#network
# sudo lsof -PiTCP -sTCP:LISTEN
# lsof -n -i4TCP:8080 | grep LISTEN
