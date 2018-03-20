# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' expand prefix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' max-errors 2 numeric
zstyle ':completion:*' menu select=long
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
zstyle :compinstall filename '/home/mikey/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
unsetopt beep nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# Go Stuff
export PATH="$PATH:/home/mikey/go/bin"
export GOPATH="/home/mikey/go"
# End Go Stuff
# Prompt Lines

RPROMPT="[%F{blue}%*%f]"
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	PROMPT="%F{blue}%n%f%F{cyan}@%m%f:%1~> "
else
	PROMPT="%F{blue}%n%f:%2~> "
fi
