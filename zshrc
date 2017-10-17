# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
 #ZSH_THEME="miloshadzic"
#ZSH_THEME="candy"
#ZSH_THEME="candy-kingdom"
#ZSH_THEME="ys"
#ZSH_THEME="fino-sean"
#ZSH_THEME="fino-noruby"
#ZSH_THEME="agnoster"
#ZSH_THEME="clean"
#ZSH_THEME=Soliah
#ZSH_THEME=fletcherm
ZSH_THEME="refined"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

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
plugins=(git git-extras battery brew osx web-search autojump zsh-syntax-highlighting)

# Automatically start a tmux session upon logging in:
ZSH_TMUX_AUTOSTART="false"

# When running tmux automatically connect to the currently running tmux session
# if it exits, otherwise start a new session
ZSH_TMUX_AUTOCONNECT="false"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Edit path:
for dir in \
    /usr/bin/bibtools \
    /usr/bin/texlive \
    /Library/TeX/texbin \
    /usr/local/lib/python2.7/site-packages \
    ~/Dropbox/bin
; do
  if [[ -d $dir ]]; then path+=$dir; fi
done

# alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
# alias vi="/Applications/MacVim.app/Contents/MacOS/Vim"

alias ssh-ubuntu='ssh -p 2222 seananderson@localhost'
alias start-ubuntu='VBoxManage startvm UbuntuServer --type headless'

export VISUAL="vim" 
export EDITOR="$VISUAL"
export R_HISTFILE=~/Dropbox/.Rhistory
export BIBINPUTS=".:~/Library/texmf/BIBINPUTS"

alias linode="ssh -p 42 sean@173.230.131.228"
alias sundia="ssh -p 42 sean@173.230.131.228"
alias bugaboo='ssh anderson@bugaboo.westgrid.ca'
alias hermes='ssh anderson@hermes.westgrid.ca'
alias bugaboo-fs='ssh anderson@bugaboo-fs.westgrid.ca'
alias vacuummail='sqlite3 ~/Library/Mail/V2/MailData/Envelope\ Index vacuum;'
alias untar='tar -zxvf'
alias db='cd ~/Dropbox'
alias ...='cd ../..'

# The 'ls' family (this assumes you use the GNU ls)
alias l='ls'               
alias la='ls -Al'               # show hidden files
# alias ls='ls -hF --color' # add colors for filetype recognition
# alias lx='ls -lXB'              # sort by extension
alias lk='ls -lSrh'              # sort by size
alias lc='ls -lcr'        # sort by change time
alias lu='ls -lur'        # sort by access time
alias lr='ls -lR'               # recursive ls
alias lt='ls -ltrh'              # sort by date
alias lm='ls -al |more'         # pipe through 'more'
# alias tree='tree -Csu'        # nice alternative to 'ls'
alias tree='find . -print | sed -e "s;[^/]*/;|____;g;s;____|; |;g"'


#alias ctags='/usr/local/bin/ctags'
alias clean-terminal='sudo rm -rf /private/var/log/asl/*.asl'

#. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# ctrl-z to go in and out of terminal from vim
# http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

export HOMEBREW_GITHUB_API_TOKEN=f281f6203dcfde00e24563d2058c8d13e62a8f14

# http://stackoverflow.com/questions/12239952/how-to-always-have-the-same-current-directory-in-vim-and-in-terminal
# function vim()
# {
#     local -x CWDFILE=~/.workdirs/$$
#     test -d $CWDFILE:h || mkdir $CWDFILE:h
#     vim $@
# }
# function precmd()
# {
#     local CWDFILE=~/.workdirs/$$
#     test -e $CWDFILE && cd "$(cat $CWDFILE)"
# }

# https://chris.chowie.net/2015/04/19/True-colour-with-neovim-tmux-and-iterm2/
# alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
# alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
# alias vi='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
# alias nvim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias v='nvim'
alias vs='nvim -S Session.vim'
alias ms='python ~/src/aenea-fork/server/osx/server_osx.py'
alias msd='python ~/src/aenea-fork/server/osx/server_osx.py --daemon'
alias ma='open "smb://172.16.145.150/MacroSystem"'
alias tn='tmux new -s'
alias ta='tmux attach -t'
alias tl='tmux ls'
alias tk='tmux kill-session -t'
alias mc='while true; do make --silent; sleep 2; done'
alias mu='mutt'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
local file


