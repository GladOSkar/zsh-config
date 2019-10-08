alias l='which exa > /dev/null && exa -1F --group-directories-first || ls -1'
alias ls='which exa > /dev/null && exa -laF --group-directories-first || ls -la'
alias j='jump'
alias dirt='watch grep -e "Dirty" -e "Writeback" /proc/meminfo'
alias codelines="sed '/^\s*$/d' | wc -l"
alias rgrep='grep -rni'
alias f='find . -iname'
alias c='clear'

alias sv() {
	which nvim > /dev/null && sudo nvim $@ || (which vim > /dev/null && sudo vim $@ || sudo nano $@)
}
alias v() {
	which nvim > /dev/null && nvim $@ || (which vim > /dev/null && vim $@ || nano $@)
}

alias ...='../..'
alias ....='../../..'
alias .....='../../../..'
alias ......='../../../../..'
alias .......='../../../../../..'
alias ........='../../../../../../..'

mkd() {
    mkdir -p $@
    builtin cd -P $1
}

cd() {
    builtin cd $@
    which exa > /dev/null && exa -F --group-directories-first || ls
}

