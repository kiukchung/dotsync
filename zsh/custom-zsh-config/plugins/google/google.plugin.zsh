gsrcs=(
    /etc/bash_completion.d/g4d
    /etc/bash_completion.d/hgd
)

for gsrc ($gsrcs); do
    if [[ -f "$gsrc" ]]; then
	source $gsrc
    fi
done

alias ta="tmx2 attach-session -dt"
