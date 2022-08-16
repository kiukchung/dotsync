# Amazon Aliases
brc() {
    BRAZIL_VERBOSE=1 brazil-recursive-cmd -all "$@"
}
alias -g br='brazil-recursive-cmd -all'
alias bb='brazil-recursive-cmd "brazil-build"'
alias bbc='brazil-recursive-cmd --reverse "brazil-build clean"'
alias cb='brazil-build clean; brazil-build'

# paste
pastebin ()
{
  n="$1"
  user="$2"
  if [ "$n" = "" ]
  then
    n=1
  fi
  if [ "$user" = "" ]
  then
      user=$USER
  fi
  a=`curl --silent "https://paste.amazon.com/list/$user" | grep -F "/show/$user" | head -n $n | tail -n 1 | cut -d \" -f2`;
  curl --silent "https://paste.amazon.com"$a".txt"
}

if [ -n "$TMUX" ]; then                                                                               
  function refresh {                                                                                
      ssh_auth_sock=$(tmux show-environment | /bin/grep "^SSH_AUTH_SOCK")
      if [ -n "$ssh_auth_sock" ]; then
	  export $(tmux show-environment | /bin/grep "^SSH_AUTH_SOCK")
      fi
  }                                                                                                 
else                                                                                                  
  function refresh { }                                                                              
fi

function preexec {                                                                                    
    refresh                                                                                           
}
