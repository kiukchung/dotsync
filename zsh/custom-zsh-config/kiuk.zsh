# Customize to your needs...
# Colors
export LS_COLORS='di=38;5;108:fi=00:ex=38;5;186'
# xterm-256color doesn't play too well in putty
export TERM='xterm-256color'
# Highlight on tab menu
#zstyle ':completion:*' menu select

export GPG_TTY="$(tty)"

# Synchronize kerberos credentials across sessions
# On Mac we need to unset this since Heracles manages kerberos tokens
#export KRB5CCNAME=FILE:/tmp/krb5cc_`id -ru`

#load prompt
#autoload -U promptinit && promptinit
#autoload -U colors && colors # Enable colors in prompt
#setopt prompt_subst
#unsetopt promptcr

# PROMPT is in kiuk.zsh-themes

# History sharing between bash windows
# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
setopt share_history

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=2000

# effectively prevents ctrl+d from exiting shell
#export IGNOREEOF=100

#grep
#export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35'

## Aliases

#-----------------------
# Typos
#-----------------------
alias cl='clear'
alias clera='clear'

#--------------------------
# File & folder management:
#--------------------------
# various 'ls' shortcuts
alias l='ls -hF --color' # add colors for filetype recognition
alias ll='ls -al'
alias lx='ls -alXB'         # sort by extension
alias lss='ls -alSr'         # sort by size, biggest last
alias lc='ls -alrc'        # sort by and show change time, most recent last
alias lu='ls -alru'        # sort by and show access time, most recent last
alias lt='ls -altr'         # sort by date, most recent last
alias lr='ls -lR'          # recursive ls
alias tree='tree -Csu'     # nice alternative to 'recursive ls'

#-----------------------
# Personal Aliases
#-----------------------
alias rmdir='rm -rf'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'
alias sourcea='source ~/.zshrc'

alias h='history'
#alias j='jobs -l'
alias which='type -a'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias print='/usr/bin/lp -o nobanner -d $LPDEST'

# Assumes LPDEST is defined (default printer)
alias pjet='enscript -h -G -fCourier9 -d $LPDEST'
# Pretty-print using enscript

alias du='du -kh'       # Makes a more readable output.
alias df='df -kTh'

alias grepc='grep -in'
alias grepo='grep -ino'
alias grepr='grep -inr'
alias less='less -Ri'

#--------------------------
# Programs
#--------------------------
alias -g e='emacs -nw -no-site-file'
alias rs='rsync -avz'

#-----------
# Searching:
#-----------
# ff:  to find a file under the current directory
ff(){ find -L -iname "*"$*"*" }

# ffs: to find a file whose name starts with a given string
ffs(){ find -L -iname ""$*"*" }

# ffe: to find a file whose name ends with a given string
ffe(){ find -L -iname "*"$*"" }

#grepfind(){ find . -iname "*$2*" -print0 | xargs -0 grep -inH "$1" | grep -inv 'No such file or directory' }
grepfind(){ find . -iname "*$2*" -print0 | xargs -0 grep -inH "$1" 2>/dev/null}
gf(){ find -L -iname "*$2*" -print0 | xargs -0 grep -il "$1" 2>/dev/null}
#gfa(){ find . -iname "*" | xargs grep -il "$1" }

pf(){ ps -eaf | grepc "$*" }

masterkill(){ sudo kill -9 `ps -eaf | grepc "$*" | grep -v grep | awk '{print $2}'` }
ta(){ tmux attach-session -dt "$*" }

rless(){ ls -ltr "$1" }

rotail(){ tail -f $(ls -tr $1* | tail -1 )  }
roless(){ less $(ls -tr $1* | tail -1 )  }  
rocat(){ cat $(ls -tr $1* | tail -1 )  } 
rosed(){ sed 's/|/\n/g' $(ls -tr $1* | tail -1 )  }  

#-----------
# Git Proxy:
#-----------
er() { for f in *; do echo "${fg[yellow]}@$f${fg[default]}"; (cd $f && $@); done }
changes(){ for f in *; do echo $f; (cd $f && git --no-pager show -s --format='%an <%ae>' HEAD); done}

#-----------
# Global 
#-----------
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g CA="2>&1 | cat -A"
alias -g C='| wc -l'
alias -g D="DISPLAY=:0.0"
alias -g DN='/dev/null'
alias -g ED="export DISPLAY=:0.0"
alias -g EG='|& egrep'
alias -g EH='|& head'
alias -g EL='|& less'
alias -g ELS='|& less -S'
alias -g ETL='|& tail -20'
alias -g ET='|& tail'
alias -g F=' | fmt -'
alias -g G='| egrep'
alias -g H='| head'
alias -g HL='|& head -20'
alias -g Sk="*~(*.bz2|*.gz|*.tgz|*.zip|*.z)"
alias -g LL="2>&1 | less"
alias -g L="| less -R"
alias -g LS='| less -S'
alias -g MM='| most'
alias -g M='| more'
alias -g NE="2> /dev/null"
alias -g NS='| sort -n'
alias -g NUL="> /dev/null 2>&1"
alias -g PIPE='|'
alias -g RNS='| sort -nr'
alias -g S='| sort'
alias -g TL='| tail -20'
alias -g T='| tail'
alias -g US='| sort -u'
alias -g VM='/var/log/messages'
alias -g X0G='| xargs -0 egrep'
alias -g X0='| xargs -0'
alias -g XG='| xargs egrep'
alias -g X='| xargs'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# enable arrowkeys for history search
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

export PROMPT_COMMAND="history -a; history -n"

#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

# Ruby
#export LDFLAGS="-L/usr/local/opt/ruby/lib"
#export CPPFLAGS="-I/usr/local/opt/ruby/include"

# libffi
#export LDFLAGS="-L/usr/local/opt/libffi/lib"
#export CPPFLAGS="-I/usr/local/opt/libffi/include"
#export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

# Java (MacOS)
#export JAVA_HOME="$(/usr/libexec/java_home)"

[[ -s /home/kiuk/.autojump/etc/profile.d/autojump.sh ]] && source /home/kiuk/.autojump/etc/profile.d/autojump.sh

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

# AWS CLI command completion
complete -C '/usr/local/bin/aws_completer' aws

# activate pytorch conda env
# source activate pytorch
