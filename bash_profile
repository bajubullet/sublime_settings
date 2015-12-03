# Main aliases
alias l='ls'
alias ll='ls -al'
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias cdp='cd ~/projects/akamai'
alias cdg='cd $GOPATH'
alias mds-dev='ssh prod-cst1ds-app01.bos01.corp.akamai.com'
alias mds-beta='ssh mdsuser@mds-beta.cst.akamai.com'
alias my-vm='ssh blr-lvzy1.bangalore.corp.akamai.com'
alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

# Git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="🍺  \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
# export PS1="$(parse_git_branch)\[\033[00m\] $ "

# Add /usr/local/bin to sys path
export PATH=$PATH:/usr/local/bin/

# Add Golang SDK to sys path
export PATH=$PATH:/Users/abajpai/go_appengine

# Make sublime default bash editor
export EDITOR='vim'

# Start virtualenvwrapper
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh

# Enable colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Ignore duplicates in bash history
export HISTCONTROL=ignoredups

# Set go path
export GOPATH=$HOME/projects/akamai/gocode


# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/abajpai/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# The next line updates PATH for the Google Cloud SDK.
source '/Users/abajpai/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/abajpai/google-cloud-sdk/completion.bash.inc'
