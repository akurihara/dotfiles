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

# bash-completion (Git autocomplete, installed with brew)
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# nosecomplete (Nosetests autocomplete, installed with pip)
__ltrim_colon_completions() {
    # If word-to-complete contains a colon,
    # and bash-version < 4,
    # or bash-version >= 4 and COMP_WORDBREAKS contains a colon
    if [[
        "$1" == *:* && (
            ${BASH_VERSINFO[0]} -lt 4 ||
            (${BASH_VERSINFO[0]} -ge 4 && "$COMP_WORDBREAKS" == *:*)
        )
    ]]; then
        # Remove colon-word prefix from COMPREPLY items
        local colon_word=${1%${1##*:}}
        local i=${#COMPREPLY[*]}
        while [ $((--i)) -ge 0 ]; do
            COMPREPLY[$i]=${COMPREPLY[$i]#"$colon_word"}
        done
    fi
} # __ltrim_colon_completions()

_nosetests()
{
    cur=${COMP_WORDS[COMP_CWORD]}
    if [[
            ${BASH_VERSINFO[0]} -lt 4 ||
            (${BASH_VERSINFO[0]} -ge 4 && "$COMP_WORDBREAKS" == *:*)
    ]]; then
        local i=$COMP_CWORD
        while [ $i -ge 0 ]; do
            [ "${COMP_WORDS[$((i--))]}" == ":" ] && break
        done
        if [ $i -gt 0 ]; then
            cur=$(printf "%s" ${COMP_WORDS[@]:$i})
        fi
    fi
    COMPREPLY=(`nosecomplete ${cur} 2>/dev/null`)
    __ltrim_colon_completions "$cur"
}
complete -o nospace -F _nosetests nosetests
