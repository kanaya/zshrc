if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi
autoload -U compinit
compinit -u

PROMPT='%m@%n %F{1}%~%f$ '

if [ -e /usr/local/bin/exa ]; then
    alias ls='exa --git --git-ignore'
fi

setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt extended_glob
setopt auto_cd
# setopt correct
