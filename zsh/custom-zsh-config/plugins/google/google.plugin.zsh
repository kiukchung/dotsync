# source the common Brain bashrc (go/brain-bashrc)
#if [ -r /google/data/ro/teams/brain-frameworks/config/ml_bashrc ] ; then
#  source /google/data/ro/teams/brain-frameworks/config/ml_bashrc
#fi

gsrcs=(
    /etc/bash_completion.d/g4d
    /etc/bash_completion.d/hgd
)

for gsrc ($gsrcs); do
    if [[ -f "$gsrc" ]]; then
	source $gsrc
    fi
done

alias ta='tmx2 attach-session -dt'
alias copybara=/google/bin/releases/copybara/public/copybara/copybara
alias bluze=/google/bin/releases/blueprint-bluze/public/bluze
alias er=/google/data/ro/users/ho/hooper/er
alias colab=/google/bin/releases/grp-ix-team/rapid/colab-cli/cli.par
alias qu4=/google/bin/releases/python-team/qu4/qu4
alias gpaste=/google/src/head/depot/eng/tools/pastebin
alias prdcs='prdcs find --noheader --mask=logical_config'
