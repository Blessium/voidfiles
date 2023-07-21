export PATH="$PATH:$HOME/go/bin/"
export PATH="$PATH:$HOME/.local/bin/statusbar/"
export ZSH="$HOME/.oh-my-zsh"

export XDG_USER_CONFIG_DIR="$HOME/.config"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(git zsh-syntax-highlighting zsh-autosuggestions z)

source $ZSH/oh-my-zsh.sh

alias exa="exa --icons"
eval "$(starship init zsh)"
