# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gispisquared/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# prompt
#PROMPT='%B%F{#c6b6ee}%3~%f%b %# '
eval $(starship init zsh)

## ALIASES
# Modified commands
alias diff='colordiff'
alias grep='grep --color=auto'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias dmesg='dmesg -HL'
alias ping='ping -c 5'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'
alias ln='ln -i'

# new commands
alias du1='du --max-depth=1'
alias hist='fc -l -1 1 | grep'
alias openports='ss -anp46'
alias pgg='ps -Af | grep'
alias svim='sudo rvim'
alias reboot='systemctl reboot'
alias shutdown='systemctl poweroff'
alias ls='ls -hF --color=auto'
alias lr='ls -R'
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'
alias lal='la | less'
