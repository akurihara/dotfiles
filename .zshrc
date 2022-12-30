# zsh custom prompt
PS1='%n:%~ %# '

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
