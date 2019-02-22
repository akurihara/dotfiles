# bash custom prompt
export PS1="\u@\h\w $ "
# export PS1="\u:\W$ "

# aliases
alias save_ssh_password='ssh-add ~/.ssh/id_rsa'
alias install_reqs="export CFLAGS='-std=c99' && pip install --upgrade -r requirements.txt"

# virtualenvwrapper configuration 
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# pyenv (legacy script?)
#
# if command -v pyenv 1>/dev/null 2>&1; then
#  eval "$(pyenv init -)"
# fi

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Git bash-completion (installed with brew)
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
