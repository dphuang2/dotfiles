# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

if [ -f $HOME/.envvars ]; then
    . $HOME/.envvars
else
    print "404: ~/.envvars not found."
fi

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export TERM='xterm-256color' 
export EDITOR='vim'

alias cs225= '/Users/dylanhuang/Classes/cs225'
alias ece391='cd /Users/dylanhuang/Classes/ece391/ece391_share/work/'
alias final='cd /Users/dylanhuang/Dropbox/UIUC/Classes/Git/FPGA-Snake'
alias :q='exit'
alias vrc='vim ~/.vimrc'
alias ece385="cd /Users/dylanhuang/Dropbox/UIUC/Classes/ECE385"
alias pogo='ssh deploy@97.107.142.163'
alias tweed='ssh deploy@138.197.27.67'
alias tweed2='ssh root@174.138.76.116'
alias tweed3='ssh deploy@45.55.199.37'
alias schl='ssh dphuang2@linux.ews.illinois.edu'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

set -o vi
