# key bindings
bindkey "^[[5~" beginning-of-history
bindkey "^[[6~" end-of-history
bindkey "^[[3~" delete-char
bindkey "^[[3;5~" delete-word
bindkey "^[[2~" quoted-insert
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^H" backward-delete-word
bindkey "^[H" backward-delete-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[OH" beginning-of-line
bindkey "^[OF" end-of-line
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix
