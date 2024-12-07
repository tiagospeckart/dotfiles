#
# This is my .profile, it is what needs to be present for *every* time a
# shell starts. This shell could be bash/zsh or other shells. Please
# look at their respective documentation. As you may know my primary
# shell is zsh.
#
# zsh: This file is sourced by ~/.zshenv
# bash: This file is sourced at the startup of bash
#

UMASK_LOOSE=002
UMASK_STRICT=022
WHOAMI=${USER:-$LOGNAME}

LANG=C.UTF-8
#TZ=America/Curacao
#TZ=Europe/Amsterdam

VISUAL=vim
EDITOR=vim
ED=vim
PAGER=less
LESS='-n -i -g -q -R -X -K -F'

CVS_RSH=ssh

SSH_ASKPASS=/usr/bin/ssh-askpass
KEYSERVER=keyserver.ubuntu.com

DEBFULLNAME="Tiago Martins Speckart"
DEBEMAIL="tiagospeckart@gmail.com"

LPASS_DISABLE_PINENTRY=1

GIT_DISCOVERY_ACROSS_FILESYSTEM=0




BIN=$HOME/bin
CODE=$HOME/code
LOCAL=$HOME/.local
MAIL=$HOME/mail
COOKIECUTTER_CONFIG=$HOME/.config/cookiecutters.yaml
GOPATH=$LOCAL/go

CERT_UTIL_DIR=$HOME/.pki/nssdb
CERT_UTIL_STORE=sql:$CERT_UTIL_DIR

ZDOTDIR=$HOME/.zsh

PATH=$BIN:$LOCAL/bin:$LOCAL/sbin::$GOPATH/bin:$CODE/bum/bin:$PATH:/sbin:/usr/sbin

# Some environment variables need to be exported tho..
export DEBFULLNAME DEBEMAIL \
    VISUAL EDITOR ED \
    PAGER LESS \
    LPASS_DISABLE_PINENTRY \
    TZ \
    COOKIECUTTER_CONFIG \
    GOPATH

export BUILDKIT_PROGRESS=1

# vim: ft=sh
. "$HOME/.cargo/env"
