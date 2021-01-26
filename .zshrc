PROMPT='%F{blue}%~%f %F{red}$%f '
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

export EDITOR='vim'

alias c='clear'
alias dots='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
