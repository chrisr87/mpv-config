#!/usr/bin/env zsh
#
# .zprofile - loaded on login
#

#
# system vars
#
export EDITOR="${EDITOR:-nvim}"
export VISUAL="${VISUAL:-nvim}"
export PAGER="${PAGER:-bat}"
export BROWSER="${BROWSER:-firefox-developer-edition}"
export LOGDIR=${LOGDIR:-$HOME/.log}
export BACKUPDIR=${BACKUPDIR:-$HOME/.backup}
export GITDIR=${GITDIR:-$HOME/git}
export SCRIPTDIR=${SCRIPTDIR:-$HOME/scripts}
export DGPUPATH=/dev/dri/card0
export DIFFPROG='nvim -d'

# Ensure path arrays do not contain duplicates.
typeset -gU path fpath

#
# path
#
path=(
  $HOME/.bin(N)
  /usr/lib/ccache/bin(N)
  $path
  $HOME/.local/bin(N)
)

# ssh agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 0 > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
    ssh-add ~/.ssh/id_ed25519
fi

# start hyprland
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
  systemd-cat -t hyprland Hyprland # write log to journal
  Hyprland
  systemctl --user stop graphical-session.target
  systemctl --user unset-environment DISPLAY WAYLAND_DISPLAY
fi
