# Prompt config
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt prompt_subst
PROMPT='%F{cyan}%n%f@%F{10}%m%f (%F{yellow}%2d%f) $(parse_git_branch) $ '

# Ailiases
alias utcs="ssh nickorlo@scrabble.cs.utexas.edu"
alias gvim="nvim"
alias vim="~/programming/personal/nick-vim/nvim.sh"
alias nvim="~/programming/personal/nick-vim/nvim.sh"
alias nivim="~/programming/personal/nick-vim/nvim.sh"
alias finger="~/.config/finger.sh #"
alias cdtmp="cd $(mktemp -d)"
alias tmux="env TERM=alacritty tmux"
alias difconfig="docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "
alias m="make"
alias md="make debug"
alias mr="make run"

PATH=$PATH:/home/nickorlow/.local/bin:/usr/lib/jvm/java-11-openjdk/bin/
JAVA_HOME=/usr/lib/jvm/java-11-openjdk/

export QSYS_ROOTDIR="/home/nickorlow/.cache/yay/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/23.1/quartus/sopc_builder/bin"
eval `keychain --eval --agents ssh id_rsa id_ed25519 --quick --quiet`
