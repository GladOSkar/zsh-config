#!/bin/zsh

function mywatch() {
    while [ 1 -lt 2 ]
    do
        clear
        date
        echo "Command: '$@'"
        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
        eval $@
        printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
        sleep 1
    done
}

function sv() {
    which nvim > /dev/null && sudo nvim $@ || (which vim > /dev/null && sudo vim $@ || sudo nano $@)
}
function v() {
    which nvim > /dev/null && nvim $@ || (which vim > /dev/null && vim $@ || nano $@)
}

function mkd() {
    mkdir -p $@
    builtin cd -P $1
}

function cd() {
    builtin cd $@
    which exa > /dev/null && exa -F --group-directories-first || command ls
}

function r() {
    ranger --choosedir=rdir.tmp
    cd `cat rdir.tmp`
    rm $OLDPWD/rdir.tmp
}

function burn() {
    sudo dd if=$1 of=$2 status=progress conv=fsync
}

# Specialized
alias clock='mywatch "date +%T | figlet | cowsay -n | lolcat"'
alias dirt='watch grep -e "Dirty" -e "Writeback" /proc/meminfo'
alias codelines="sed '/^\s*$/d' | wc -l"

# Semi-Specialized
alias findgrep='grep -rni'
alias f='find . -iname'
alias lspack='aunpack -l'
alias unpack='aunpack -x'
alias cbi='xclip -sel clip -i'
alias cbo='xclip -sel clip -o'

# Packet management

function it() {
    which eopkg > /dev/null && sudo eopkg it $@ || (which apt > /dev/null && sudo apt install $@ || echo "no packet manager found")
}

function up() {
    which eopkg > /dev/null && sudo eopkg up || (which apt > /dev/null && sudo apt update && sudo apt upgrade || echo "no packet manager found")
}

function eosr() {
    (eopkg sr $@ | grep -v "devel" | grep -v "dbginfo") || true
}

function sr() {
    which eopkg > /dev/null && eosr $@ || (which apt-cache > /dev/null && apt-cache search $@ || echo "no packet manager found")
}


# Basic

function func-l() {
    which exa > /dev/null && exa -1F --group-directories-first $@ || command ls -1 $@
}

function func-ls() {
    which exa > /dev/null && exa -laF --group-directories-first $@ || command ls -la $@
}

alias l='func-l'
alias ls='func-ls'

alias j='jump'
alias damn='fuck' # This is a family friendly computer!
alias c='clear'
alias g='geany'
alias o='rifle'

alias ...='../..'
alias ....='../../..'
alias .....='../../../..'
alias ......='../../../../..'
alias .......='../../../../../..'
alias ........='../../../../../../..'
