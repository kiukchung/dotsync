source /usr/facebook/ops/rc/master.zshrc

export ZSH="$HOME/.oh-my-zsh"
export UPDATE_ZSH_DAYS=7

export ZSH_CUSTOM=$HOME/custom-zsh-config
ZSH_THEME="kiuk"

COMPLETION_WAITING_DOTS="true"

ZSH_PYENV_QUIET="true"

plugins=(
    pyenv
    autojump
    git-prompt
    shrink-path
    fzf
    fb
    # aws (uncomment if using aws)
     # zsh-* plugins need to go LAST!
    zsh-syntax-highlighting
    zsh-autosuggestions
)

PATH=$PATH:$HOME/bin

source $ZSH/oh-my-zsh.sh
