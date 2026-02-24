# zsh custom prompt
export PS1='%n:%~ %# '

# Programs that need python use python3
alias python=/usr/bin/python3

# Disable highlighting of pasted text
unset zle_bracketed_paste

# Homebrew
export HOMEBREW_NO_ENV_HINTS=1
## Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# jenv
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

# 1. Read the ~/.env file (defines the variables locally in the shell)
source ~/.env

# Point the URL to Ollama's local server
export ANTHROPIC_BASE_URL=$ANTHROPIC_BASE_URL
export ANTHROPIC_AUTH_TOKEN=$ANTHROPIC_AUTH_TOKEN
export ANTHROPIC_MODEL="glm-4.7-flash"
export ANTHROPIC_DEFAULT_OPUS_MODEL="glm-4.7-flash"
export ANTHROPIC_DEFAULT_SONNET_MODEL="glm-4.7-flash"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="glm-4.7-flash"

# Ollama
#
# unset ANTHROPIC_AUTH_TOKEN
# Set a placeholder token (Ollama requires one, but doesn't validate it)
# export ANTHROPIC_API_KEY="ollama"
# Set the default model
# export ANTHROPIC_MODEL="qwen3:8b"
# export ANTHROPIC_BASE_URL="http://localhost:11434"
export OLLAMA_CONTEXT_LENGTH=32734
export OLLAMA_FLASH_ATTENTION=1
export OLLAMA_KV_CACHE_TYPE=q4_0
