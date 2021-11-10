setopt autocd autopushd pushdignoredups
unsetopt beep
bindkey -v

autoload -Uz compinit
compinit

PROMPT=$'%F{cyan}%m%f%F{cyan} \U00B7 %f%F{cyan}%f%F{cyan}%2~%f%F{cyan} \U279C %f'

d='dirs -v | head -10'
1='cd -'
2='cd -2'
3='cd -3'
4='cd -4'
5='cd -5'
6='cd -6'
7='cd -7'
8='cd -8'
9='cd -9'

alias -g G='| egrep --color=auto --line-number '
alias -g Z='| zegrep --color=auto --line-number '
alias -g B='| bat'
alias -g L='| less'
alias -g N='| nvim -'
alias -g X='| xargs '

alias n=nvim
alias g='grep --color=auto'
export EDITOR=nvim

function Man {
  nvim -c "Man $1 | only"
}
