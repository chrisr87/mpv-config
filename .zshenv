#!/usr/bin/env zsh
# 
# .zshenv - sourced for all invocations
#

ZDOTDIR=$HOME/.zsh

# firefox
export XDG_SESSION_TYPE=wayland
export MOZ_ENABLE_WAYLAND=1
export MOZ_DISABLE_RDD_SANDBOX=1

# gpu
export LIBVA_DRIVER_NAME=nvidia

# qt apps
export QT_QPA_PLATFORM=wayland
export QT_QPA_PLATFORMTHEME=qt5ct

# hyprland
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_DESKTOP=Hyprland
export LIBSEAT_BACKEND=logind

# obsidian
export OBSIDIAN_USE_WAYLAND=1
