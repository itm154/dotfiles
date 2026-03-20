# --- Environment Variables ---
set -gx EDITOR nvim
set -gx MANPAGER "sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"
set -gx ELECTRON_OZONE_PLATFORM_HINT wayland
set -gx GTK_USE_PORTAL 1
set -gx SDL_VIDEODRIVER wayland
set -gx PYENV_ROOT $HOME/.pyenv

# --- Path Configuration ---
fish_add_path $PYENV_ROOT/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/go/bin
fish_add_path $HOME/.cargo/bin

# --- Tool Initializations ---
starship init fish | source
zoxide init fish --cmd cd | source
fzf --fish | source
pyenv init - fish | source

# --- UI & Theme ---
set -g fish_greeting
# FZF Catppuccin Colours
set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--color=border:#313244,label:#cdd6f4"

# --- Aliases ---
# Navigation
alias rp='cd ~/Repository/'
alias dl='cd ~/Downloads/'
alias docs='cd ~/Documents/'

# Eza (ls replacements)
alias ls='eza -al --color=always --group-directories-first --icons'
alias la='eza -a --color=always --group-directories-first --icons'
alias ll='eza -l --color=always --group-directories-first --icons'
alias lt='eza -aT --color=always --group-directories-first --icons'
alias l.="eza -a | grep -e '^\.'"

# Tools
alias lg='lazygit'
alias r='R_AUTO_START=true nvim'
alias :q='exit'

# --- WSL Specific Settings ---
if set -q WSL_DISTRO_NAME
    set -gx GALLIUM_DRIVER d3d12
    set -gx LIBVA_DRIVER_NAME d3d12
    set -gx GPG_TTY (tty)
end
