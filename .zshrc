# Set a custom shell prompt.
PROMPT='%n:%~ %# '

# Turn off highlighting for pasted text.
zle_highlight+=(paste:none)

# jenv installation (see https://www.jenv.be/).
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# pyenv initialization.
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# pyenv path
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
