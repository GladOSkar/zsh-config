if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ${0:a:h}/p10k.zsh

export ZLE_RPROMPT_INDENT=1

ZSH_THEME="powerlevel10k/powerlevel10k"
