# ~/.zshenv — read by EVERY zsh invocation (interactive, login, scripts, -c).
# Env vars that non-interactive tools need belong here, not in ~/.zshrc.

[[ -f ~/.env ]] && source ~/.env
