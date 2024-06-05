force_color_prompt=yes
export PS1="\[\033[38;5;14m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\h\[$(tput sgr0)\] (\[$(tput sgr0)\]\[\033[38;5;11m\]\W\[$(tput sgr0)\]) \[$(tput sgr0)\]\[\033[38;5;7m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\] \\$\[$(tput sgr0)\] "
