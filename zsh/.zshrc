setopt autocd autopushd pushdignoredups
unsetopt beep
bindkey -v
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M viins 'kk' vi-cmd-mode

autoload -Uz compinit
compinit

# PROMPT=$'%F{cyan}%m%f%F{cyan} \U00B7 %f%F{cyan}%f%F{cyan}%2~%f%F{cyan} \U279C %f'
PROMPT=$'%F{cyan}%m%f%F{cyan} \U00B7 %f%F{cyan}%f%F{cyan}%2~%f%F{cyan} \Uf178  %f'

alias d='dirs -v | head -10'
alias ls='ls -F'

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

if [[ -f ~/.local.zsh ]]; then
  source ~/.local.zsh
fi
