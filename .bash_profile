# aliases
alias save_ssh_password='ssh-add ~/.ssh/id_rsa'

# virtualenvwrapper configuration 
export WORKON_HOME=$HOME/.virtualenvs
export PS1="\u:\W$ "
source /usr/local/bin/virtualenvwrapper.sh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
