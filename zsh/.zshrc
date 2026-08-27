export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.tmuxifier/bin:$PATH"

export LANG=it_IT.UTF-8

export EDITOR=nvim
export VISUAL=nvim
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow'

ZSH_THEME="bira"

zstyle ':omz:update' mode auto      # update automatically without asking

###########
# History #
##########

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

bindkey -v
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

##########
# Plugin #
##########

plugins=(
	git
	vi-mode
	sudo
    colored-man-pages
	zsh-syntax-highlighting
	zsh-autosuggestions
	fzf-tab
)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

#################
# Configuration #
#################
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls $realpath'


alias zshconf="nvim ~/.zshrc"
alias reload="source ~/.zshrc"
alias niriconf="nvim ~/.config/niri/"
alias termconf="nvim $HOME/.config/kitty/kitty.conf"

alias ls="eza --icons --group-directories-first"
alias ll="eza -lah --icons --group-directories-first"
alias tree="eza --tree --icons"

alias pg-start="sudo systemctl start postgresql"
alias pg-stop="sudo systemctl stop postgresql"
alias pg-status="systemctl status postgresql"
alias pg-restart="sudo systemctl restart postgresql"
alias pg-log="journalctl -xeu postgresql.service"

eval "$(zoxide init zsh)"
eval "$(tmuxifier init -)"
eval "$(fzf --zsh)"

fastfetch -c examples/13

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
