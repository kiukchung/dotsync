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
    # aws (uncomment if using aws)
    google
    fig-prompt
    # zsh-* plugins need to go LAST!
    zsh-syntax-highlighting
    zsh-autosuggestions
)

PATH=$PATH:$HOME/bin

source $ZSH/oh-my-zsh.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/google/home/kiuk/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/google/home/kiuk/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/google/home/kiuk/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/google/home/kiuk/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

