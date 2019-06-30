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

export NVM_DIR="$HOME/.nvm"
export TERM='xterm-256color' 
export EDITOR='/usr/local/bin/mvim -v'
export ANSIBLE_INVENTORY='/etc/ansible/hosts'

alias :q='exit'

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
PATH="/Developer/NVIDIA/CUDA-10.0/bin:${PATH}"
export PATH

set -o vi

source /usr/local/bin/virtualenvwrapper.sh
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
