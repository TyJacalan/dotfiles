# If not running interactively, don't do anything 
[[ $- != *i* ]] && return 

stty -ixon # Disables ctrl-s and ctrl-q (Used To Pause Term) 

# Auto start
neofetch

# Aliases
alias ..='cd ..' 
alias ...='cd ../..' 
alias install='sudo apt install'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias uplist='apt list --upgradable'
alias remove='sudo apt autoremove'
alias l='exa -ll --color=always --group-directories-first'
alias ls='exa -al --header --icons --group-directories-first'
alias df='df -h'

# Dotfiles & Files
alias bs='micro ~/.bashrc'
alias bspwm='micro ~/.config/bspwm/bspwmrc'
alias sx='micro ~/.config/sxhkd/sxhkdrc'
alias cky='micro ../../etc/conky/conky.conf'
alias reload='source ~/.bashrc'
alias dl="cd ~/Downloads"

# Git aliases
alias gp="git push -u origin main"
alias gsave="git commit -m 'save'"
alias gs="git status"
alias gc="git clone"

#Ruby configurations
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
