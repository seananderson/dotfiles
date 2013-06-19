# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="miloshadzic"
ZSH_THEME="candy"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git tmux textmate battery brew vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Edit path:
for dir in \
    /usr/local/share/python \
    /usr/bin/bibtools \
    /usr/bin/texlive \
    ~/Dropbox/bin
; do
  if [[ -d $dir ]]; then path+=$dir; fi
done

export EDITOR=vim
export R_HISTFILE=~/Dropbox/.Rhistory
export BIBINPUTS=".:~/Library/texmf/BIBINPUTS"

alias linode="ssh -p 42 sean@173.230.131.228"
alias sundia="ssh -p 42 sean@173.230.131.228"
alias ms='cd ~/Dropbox/ms/'
alias cluster='ssh sean@cluster.mathstat.dal.ca'
alias baseline='ssh sean@baseline.stanford.edu'
alias bugaboo='ssh anderson@bugaboo.westgrid.ca'
alias bugaboo-fs='ssh anderson@bugaboo-fs.westgrid.ca'
alias vacuummail='sqlite3 ~/Library/Mail/V2/MailData/Envelope\ Index vacuum;'
alias untar='tar -zxvf'
alias pine="alpine"
alias oi='offlineimap -qf INBOX'
alias oiq='offlineimap -q'
alias oif='offlineimap'
alias mt='mutt'
alias src='cd ~/src/'
alias ss3='cd ~/src/ss3sim/'
alias db='cd ~/Dropbox'
alias dot='cd dotfiles'

alias ..='cd ..'
alias ...='cd ../..'

# The 'ls' family (this assumes you use the GNU ls)
alias la='ls -Al'               # show hidden files
# alias ls='ls -hF --color' # add colors for filetype recognition
# alias lx='ls -lXB'              # sort by extension
alias lk='ls -lSr'              # sort by size
alias lc='ls -lcr'        # sort by change time
alias lu='ls -lur'        # sort by access time
alias lr='ls -lR'               # recursive ls
alias lt='ls -ltr'              # sort by date
alias lm='ls -al |more'         # pipe through 'more'
# alias tree='tree -Csu'        # nice alternative to 'ls'
alias tree='find . -print | sed -e "s;[^/]*/;|____;g;s;____|; |;g"'

