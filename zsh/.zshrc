ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::gh
zinit snippet OMZP::gcloud
zinit snippet OMZP::command-not-found

autoload -U compinit && compinit 
zinit cdreplay -q

eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/zen.toml)"

bindkey '^f' autosuggest-accept
bindkey '^[[3~' delete-char
bindkey '^[[5~' up-line-or-history
bindkey '^[[6~' down-line-or-history
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

alias ls='exa --color --icons auto'
alias vim='nvim'
alias c='clear'
alias k='kubectl'
alias ai_credits="powershell.exe -c Start-Process 'https://github.com/settings/copilot/features'"
alias r_np="open_inprivate $RANCHER_NONPROD"
alias r_p="open_inprivate $RANCHER_PROD"

eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

#safe url opening from powershell
open() {
  if [[ -z "$1" ]]; then
    echo "Usage: open <url-or-path>"
    return 1
  fi

  powershell.exe -NoProfile -NonInteractive -Command "Start-Process '$1'"
}
open_inprivate() {
  if [[ -z "$1" ]]; then
    echo "Usage: open_inprivate <url>"
    return 1
  fi

  powershell.exe -NoProfile -NonInteractive -Command "Start-Process msedge -ArgumentList \"-inprivate\",\"$1\""
}

. .env/cleo_variables
