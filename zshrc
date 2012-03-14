# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jaime/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload colors
colors
PROMPT="------- %~ ------- [%*]
%# -> "
autoload -U promptinit
promptinit

PAGER='less'
EDITOR='vim'

alias ls='ls -G'

# mucho ruido :(
#alias ghci='ghci -Wall'

# no sobreescribir con '>', sobreescribe con '>!'
setopt noclobber

# **/file.ext, ^*.ext, *.ext~file*.ext
setopt extendedglob

source /home/jaime/.aliasrc

# if [ -f ${HOME}/.termcap ]; then
#  TERMCAP=$(< ${HOME}/.termcap)
#  export TERMCAP
# fi

# evita expandir lineas tipo http://server.com?s=foo&exit=false
autoload -U url-quote-magic
zle -N self-insert url-quote-magic
