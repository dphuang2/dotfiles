cd /Volumes/STORAGE/Git
alias vim='mvim -v'
alias vrc='vim ~/.vimrc'
alias schl='ssh dphuang2@linux.ews.illinois.edu'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# The next line updates PATH for the Google Cloud SDK.
source '/Users/dylanhuang/Downloads/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/dylanhuang/Downloads/google-cloud-sdk/completion.bash.inc'
