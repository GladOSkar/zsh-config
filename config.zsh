export ZSH=$HOME/.oh-my-zsh

if [[ $TERM != "xterm-kitty" ]]
then
	export TERM="xterm-256color"
fi

source ~/.zsh.d/theme.zsh

plugins=( git jump ) # zsh-syntax-highlighting )

source $ZSH/oh-my-zsh.sh

HISTFILE=~/.histfile
HISTSIZE=2048
SAVEHIST=2048
setopt appendhistory autocd extendedglob nomatch notify

fpath=(~/.zsh.d/functions/ $fpath)

# eval $(thefuck --alias)

tabs -4
export PAGER=`which most > /dev/null && echo most || echo less`
export EDITOR=`which nvim > /dev/null && echo nvim || (which vim > /dev/null && echo vim || echo nano)`

# PATH should be set in /etc/profile.d/10-path.sh or similar

source ~/.zsh.d/aliases.zsh
source ~/.zsh.d/keybindings.zsh

# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
