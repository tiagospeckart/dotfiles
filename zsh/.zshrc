# Speed up tips for ZSH
# See https://htr3n.github.io/2018/07/faster-zsh/ for more information
#zmodload zsh/zprof     # Enable this when you want to profile your zshrc

[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# history
HISTFILE=~/.zsh_history

ZDOTDIR=$HOME/.zsh
ZSHRC_MINIMAL=${ZSHRC_MINIMAL:-false}

if [[ $ZSHRC_MINIMAL = true ]]
then
    BUG_RC=$ZDOTDIR/zshrc/$ZSHRC_BUG.zshrc

    # Fall back to a minimal zshrc when there isn't a bug rc
    [[ ! -f $BUG_RC ]] && BUG_RC=$ZDOTDIR/zshrc/minimal

    source $BUG_RC
    return
fi

# automatically remove duplicates from these arrays
typeset -U path PATH cdpath CDPATH fpath FPATH manpath MANPATH

# These options are *mandatory* for stuf to work down below. Ok, maybe
# not the vim one, but you will see directly that you use it
setopt vi                   # If EDITOR is set to vim, we have this for free
setopt sh_word_split        # if you call func() $foo where foo="foo bar"
                            # split the words to foo bar
setopt extendedglob         # see optionsrc for more information

# uses sources, because xsource isn't loaded (yet)
plug $ZDOTDIR/autoloadrc  # load all the autoloading things

plug $ZDOTDIR/optionsrc  # (un)setopt
plug $ZDOTDIR/promptrc   # deal with completions and the likes
plug $ZDOTDIR/keybindrc  # keybindings
plug $ZDOTDIR/nameddirrc # named directories
plug $HOME/.zsh/zsh-completions/src # zsh-extra completions

plug $HOME/.aliasrc      # aliases
plug $HOME/.env.local    # local environment

plug $ZDOTDIR/endzshrc

# vim: filetype=zsh syntax=zsh

# Load bash completion functions
autoload -Uz +X compinit && compinit
autoload -Uz +X bashcompinit && bashcompinit

# Aliases
alias vim="nvim"
alias vi="nvim"
alias k="kubectl"

export LIBVA_DRIVER_NAME=i965
export LIBVA_DRIVERS_PATH=/usr/lib/dri

# asdf
. $HOME/.asdf/asdf.sh
