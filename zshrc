# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="kennethreitz"
#export ZSH_THEME="candy"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

export LEDGER_FILE=/home/ikke/documents/boekhouding.dat

export EDITOR=/usr/bin/vim
export COLUMNS=$COLUMNS
export BROWSER=google-chrome

export ALTERNATE_EDITOR=""
alias em='emacsclient -c'

alias thesis=~/Dropbox/afstuderen/scriptie/draft/thesis

#Fixing the Home and End key (use C-v key to find the specific code of the key)
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
