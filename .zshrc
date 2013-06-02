# The following lines were added by compinstall

export EDITOR=vim
export MAIL=thunderbird
export BROWSER=/usr/bin/firefox
export TERM=xterm-256color

zstyle ':completion:*' completer _complete _ignored _correct
zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' ''
zstyle ':completion:*' max-errors 2 not-numeric
zstyle :compinstall filename '/home/wizzardich/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd nomatch notify
unsetopt appendhistory beep extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install

autoload -U colors && colors
red="9"
yellow="222"

if [ `id -u` -eq "0" ]; then
      root=$red
else
      root=$yellow
fi

# Prompt configuration
PS1="┌─[%F{${root}}%n@%M%F{reset}:%F{252}%~%F{reset}][%*]
└──╼ "
unset color_prompt force_color_prompt

# Keybindings
# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -A key

key[Home]=${terminfo[khome]}

key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}

# setup key accordingly
[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n "${key[Up]}"      ]]  && bindkey  "${key[Up]}"      up-line-or-history
[[ -n "${key[Down]}"    ]]  && bindkey  "${key[Down]}"    down-line-or-history
[[ -n "${key[Left]}"    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n "${key[Right]}"   ]]  && bindkey  "${key[Right]}"   forward-char
[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"    history-beginning-search-backward
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}"  history-beginning-search-forward

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
   function zle-line-init () {
      printf '%s' "${terminfo[smkx]}"
   }
   function zle-line-finish () {
      printf '%s' "${terminfo[rmkx]}"
   }
   zle -N zle-line-init
   zle -N zle-line-finish
fi

# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.dotfiles/.bash_aliases ]; then
    . ~/.dotfiles/.bash_aliases
fi
