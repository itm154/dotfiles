if status is-interactive
  set -U fish_greeting
  set -x BAT_THEME 'Catppuccin-mocha'
  set -x LANG 'en_US_UTF-8'
  set -x EDITOR 'nvim'
  set -e fish_user_paths

  alias rp="cd ~/Repository/"
  alias dl="cd ~/Downloads/"
  alias nvimrc="cd $HOME/.config/nvim/lua/custom/ && nvim ."
  alias hyprc="cd $HOME/.config/hypr/ && nvim $HOME/.config/hypr/"
  alias mixer="alsamixer --no-color"
  alias gsettings="env XDG_CURRENT_DESKTOP=GNOME gnome-control-center"
  alias :q="exit"

  alias ls="exa -al --color=always --group-directories-first"
  alias la="exa -a --color=always --group-directories-first"
  alias ll="exa -l --color=always --group-directories-first"
  alias lt="exa -aT --color=always --group-directories-first"
  alias l.="exa -a | egrep "^\.""

  alias grep='grep --color=auto'
  alias egrep='egrep --color=auto'
  alias fgrep='fgrep --color=auto'

  set -Ux RUSTUP_HOME $HOME/.rustup
  set -Ux CARGO_HOME $HOME/.cargo
  set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

  set -U fish_user_paths $HOME/.local/bin $CARGO_HOME/.bin

  nitch
end
