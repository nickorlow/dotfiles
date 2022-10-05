# For android development
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export JAVA_HOME=`/usr/libexec/java_home -v 11`

# Prompt config

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt prompt_subst
PROMPT='%F{cyan}%n%f@%F{10}%m%f (%F{yellow}%2d%f) $(parse_git_branch) $ '
# RPROMPT='%*'
# Ailiases
alias utcs="ssh nickorlo@scrabble.cs.utexas.edu"
alias finger="~/.config/finger.sh #"
