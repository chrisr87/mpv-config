# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#!/usr/bin/env zsh
#
#
# .zshrc - loaded for all interactive shells,
#          placeholder for grml,
#          use .zshrc.local
#

# To customize prompt, run `p10k configure` or edit ~/.zsh/.p10k.zsh.
[[ ! -f ~/.zsh/.p10k.zsh ]] || source ~/.zsh/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/git/zeus-0-dotfiles/.zsh/.p10k.zsh.
[[ ! -f ~/git/zeus-0-dotfiles/.zsh/.p10k.zsh ]] || source ~/git/zeus-0-dotfiles/.zsh/.p10k.zsh
