# Init
starship init fish | source
zoxide init fish --cmd cd | source
fzf --fish | source
pyenv init - fish | source

# Useful aliases
alias rp='cd ~/Repository/'
alias dl='cd ~/Downloads/'
alias docs='cd ~/Documents/'

# Replace ls with eza
alias ls='eza -al --color=always --group-directories-first --icons'
alias la='eza -a --color=always --group-directories-first --icons'
alias ll='eza -l --color=always --group-directories-first --icons'
alias lt='eza -aT --color=always --group-directories-first --icons'
alias l.="eza -a | grep -e '^\.'"

alias lg='lazygit'

alias :q='exit'

# FZF Catppuccin Colours
set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--color=border:#313244,label:#cdd6f4"

set -Ux MANPAGER "sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"
set -Ux EDITOR nvim

# Python shis
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
# bin for uv (python)
fish_add_path "/home/itm154/.local/bin"
