set -U fish_greeting
set -x BAT_THEME 'Catppuccin-mocha'
set -x LANG 'en_US.UTF-8'
set -x EDITOR 'nvim'
set -e fish_user_paths

set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

set -gx GTK_IM_MODULE 'fcitx'
set -gx QT_IM_MODULE 'fcitx'
set -gx SDL_IM_MODULE 'fcitx'

set -gx SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS 0
set -gx QT_STYLE_OVERRIDE 'kvantum'
set -gx GCM_CREDENTIAL_STORE 'secretservice'

# set NPM_PACKAGES "$HOME/.npm-packages"
# set PATH $PATH $NPM_PACKAGES/bin
# set MANPATH $NPM_PACKAGES/share/man $MANPATH

alias rp="cd ~/Repository/"
alias dl="cd ~/Downloads/"
alias docs="cd ~/Documents/"
alias vim="nvim"
alias emacs="emacsclient -c -a 'emacs'"
alias nvimrc="cd $HOME/.config/nvim/lua/custom/ && nvim ."
alias hyprc="cd $HOME/.config/hypr/ && nvim $HOME/.config/hypr/"
alias mixer="alsamixer --no-color"
alias gsettings="env XDG_CURRENT_DESKTOP=GNOME gnome-control-center"
alias :q="exit"

alias ls="eza -al --color=always --group-directories-first"
alias la="eza -a --color=always --group-directories-first"
alias ll="eza -l --color=always --group-directories-first"
alias lt="eza -aT --color=always --group-directories-first"
alias l.="eza -a | egrep "^\.""

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias venv-activate='source ./bin/activate.fish'

set -Ux RUSTUP_HOME $HOME/.rustup
set -Ux CARGO_HOME $HOME/.cargo
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

set -U fish_user_paths $HOME/.local/bin $CARGO_HOME/bin $HOME/.config/emacs/bin

fish_add_path /home/itm154/.spicetify

source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish

starship init fish | source

