# enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
alias l.='ls -d .* --color=auto'
alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'

alias ..="cd .."
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='diff --color=auto'
alias e='exit'

TMUX_CONFIG="~/.config/tmux/.tmux.conf"

alias                                   \
    tn="tmux -u -f $TMUX_CONFIG new"    \
    ta="tmux -u -f $TMUX_CONFIG attach" \
    tt="vim $TMUX_CONFIG"               \

