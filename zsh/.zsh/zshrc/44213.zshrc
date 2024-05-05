# A minimal zshrc for triggering bug 44213
# http://www.zsh.org/mla/workers/2019/msg00251.html

autoload -Uz compinit

zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle ':completion:*' menu select

zstyle -e ':completion:*:approximate:*' \
    max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'

zstyle ':completion:*' squeeze-slashes true

_ZCOMP=${ZDOTDIR:-$HOME}/.zcompdump
today=$(date --date '00:00 today' +%s)
if [[ ! -e $_ZCOMP || $today -gt $(stat --format %Y $_ZCOMP) ]];
then
    compinit -i
    touch ${_ZCOMP}
else
    compinit -C;
fi
unset _ZCOMP

# vim: filetype=zsh syntax=zsh
