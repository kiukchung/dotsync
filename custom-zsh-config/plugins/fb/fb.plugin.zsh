#source /usr/facebook/ops/rc/master.zshrc

# .fb.zshrc

# Mercurial helpers
alias hd='hg diff'
alias hdc='hg diff -r .^' # Diff between now and last commit
alias hda='hg odiff' # Diff between now and last amend
alias hsc='hg st --change .' # hg status (modified files) between now and last commit
alias hs='hg status'
alias ha='hg amend'
alias hn='hg next' # Move up a commit in the stack
alias hp='hg prev' # Move down a commit in the stack
alias hrm='hg rebase -d remote/master' # Rebase current commit to remote/master
alias hcrm='hg checkout remote/master'
alias hpu='hg pull'
alias hc='hg checkout'

# Development flow
alias ab='arc lint && arc build'
alias al='arc lint'
alias ac='arc canary'
alias js='jf submit -n'
alias acl='arc canary list' # Not to be confused with ACL, the access-control list for permissions
alias dac='ab && dashboard canary'

# Tools
alias c='code-fb'
alias fix='fixmyserver --yes'
alias da='sudo ncdu -x --exclude /sftp /'
alias clean='/usr/lib/devservers/clean-disk-space'
alias deep_clean='/usr/lib/devservers/clean-disk-space --deep-clean'
alias disk='sudo ncdu-devserver /'
alias hs='hostselect'
alias my='myles' # fast file finder: https://www.internalfb.com/intern/wiki/Myles/end-users/

# Shortcuts to changing directories
alias fbc='cd ~/fbsource/fbcode'
alias con='cd ~/configerator'
alias op='cd ~/opsfiles'
alias spells='cd ~/.spells'

# Personal scripts
alias lsr='py ~/.spells/loop_short_region.py'
alias mcr='py ~/.spells/mcrouter_test.py'
alias test-migration='py ~/.spells/test-migration.py'

# Memcache related
alias mcr_gc='echo "get __mcrouter__.config_sources_info" | nc ::1 5000'

# ~~~~~ Functions ~~~~~
# Creates a directory and immediately cd's into it
mkcd() {
  mkdir -p "$1" && cd "$1"
}

# Stdout + pastry
superpaste () {
    ARGS="$@"
      $@ 2>&1 | tee /dev/tty | pastry -t "${ARGS}"
}
alias p='superpaste'

export no_proxy=".fbcdn.net,.facebook.com,.thefacebook.com,.tfbnw.net,.fb.com,.fburl.com,.facebook.net,.sb.fbsbx.com,localhost"
export RSYNC_PROXY=fwdproxy:8080

alias pp='https_proxy=http://fwdproxy:8080 http_proxy=http://fwdproxy:8080 no_proxy=.fbcdn.net,.facebook.com,.thefacebook.com,.tfbnw.net,.fb.com,.fburl.com,.facebook.net,.sb.fbsbx.com,localhost'
alias with-proxy='HTTPS_PROXY=http://fwdproxy:8080 HTTP_PROXY=http://fwdproxy:8080 FTP_PROXY=http://fwdproxy:8080 https_proxy=http://fwdproxy:8080 http_proxy=http://fwdproxy:8080 ftp_proxy=http://fwdproxy:8080 http_no_proxy='\''\'\'\''*.facebook.com|*.tfbnw.net|*.fb.com'\''\'\'
