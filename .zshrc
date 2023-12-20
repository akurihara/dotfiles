# zsh custom prompt
export PS1='%n:%~ %# '

# Homebrew
export HOMEBREW_NO_ENV_HINTS=1
## Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit
