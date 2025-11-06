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

# Point JAVA_HOME to the right JDK version
# export JAVA_HOME="$(/usr/libexec/java_home -v 21)"

# Claude Code
export CLAUDE_CODE_USE_VERTEX=1
export ANTHROPIC_SMALL_FAST_MODEL='claude-3-5-haiku@20241022'
export CLOUD_ML_REGION='europe-west1'
export VERTEX_REGION_CLAUDE_4_0_OPUS='europe-west4'
export ANTHROPIC_VERTEX_PROJECT_ID=spotify-claude-code-trial

# Google Cloud SDK
export PATH="/opt/homebrew/share/google-cloud-sdk/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH=/opt/spotify-devex/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

