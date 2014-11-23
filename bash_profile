# This is a huge mess! I don't use it anymore now that I use zsh
# I may clean it up some day
#
# set -o vi
export LC_CTYPE=en_US.UTF-8
test -r /sw/bin/init.sh && . /sw/bin/init.sh

export CC=/usr/bin/gcc-4.2

#colorize the Terminal
export CLICOLOR=1;

# export EDITOR="mate -w"
export EDITOR=vim
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
# export GIT_EDITOR="mate --name 'Git Commit Message' -w -l"

export HISTFILESIZE=10000 # Record last 10,000 commands
export HISTSIZE=10000 # Record last 10,000 commands per session

# see http://stackoverflow.com/questions/1189759/expert-r-users-whats-in-your-rprofile
export R_HISTFILE=~/Dropbox/.Rhistory

export VERSIONER_PERL_PREFER_32_BIT=yes

export PATH=usr/local/bin:$PATH:/usr/bin:/opt/local/bin:/usr/texbin:/usr/local/bin:/usr/local/texlive:/usr/bin/bibtexformat:/usr/bin/bibtools:/Applications/Xcode.app/Contents/Developer/usr/bin
export MANPATH=$MANPATH:/opt/local/share/man
export INFOPATH=$INFOPATH:/opt/local/share/info
# Setting PATH for MacPython 2.5
# The orginal version is saved in .bash_profile.pysave

export CFLAGS="-arch i386 -m32"
export CXXFLAGS="$CFLAGS"
export CPPFLAGS="-I/usr/X11/include"
export LDFLAGS="-L/usr/X11/lib"

# ** IMPORTANT **
  #
  # The trailing colon indicates the standard search
  # path should be appended to the user specified
  # TEXINPUT variable

  export BIBINPUTS=".:~/Library/texmf/BIBINPUTS"

# export ADMB_HOME=/usr/local/admb
# export PATH=${ADMB_HOME}/bin:${PATH}

export PATH=${PATH}:/Users/seananderson/Dropbox/bin
export ADMB_HOME="/Applications/ADMBTerminal.app/admb"
export PATH="/Applications/ADMBTerminal.app/admb/bin":${PATH}


PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH


# so prompt looks like this: [/v/w/h/s/L/l/w/p/e/langs] $ _
# not working
# PROMPT_COMMAND='CurDir=`pwd|sed -e "s!$HOME!~!"|sed -re "s!([^/])[^/]+/!\1/!g"`'
# PS1="[\$CurDir] \$ "

PS1="\[\`if [[ \$? = "0" ]]; then echo '\e[32m\h\e[0m'; else echo '\e[31m\h\e[0m' ; fi\`:\w\n\$ "

# ls colours:
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias sharkhours="mate ~/Dropbox/ms/sharks_francesco/hours.txt"

# custom prompt... with :) and :(
#PS1='\u@\h \[\e[33m\]\W\[\e[0m\] \[`if [[ $? = 0 ]]; then echo '\''\e[32m=)\e[0m'\''; else echo '\''\e[31m=(\e[0m'\'' ; fi`\] $ '

# without the =)
# PS1='\u@\h \[\e[33m\]\W\[\e[0m\] \[`if [[ 0 = 0 ]]; then echo '\''\e[31m\e[0m'\''; else echo '\''\e[31m=(\e[0m'\'' ; fi`\] $ '

export COLORFGBG="default;default"
#export PS1="\[\e]2; \w\a\e[32 ;1m\ ] \$ \[\e[0m\ ]"

# fix line endings:
alias fle="perl -pi -e 's/\r/\n/g' "

# clean system logs to make terminal boot quickly again:
alias clean-terminal="cd /private/var/log/asl;sudo rm -f *"

alias trash='mv --target-directory=$HOME/.Trash'

alias linode="ssh -p 42 sean@173.230.131.228"

#alias alpine="cd ~/Downloads/; alpine"

#alias uni='cd ~/.unison'
#alias ubu='unison -ui text -auto RAID.prf'
#alias uni-codcrab='cd ~/.unison ; unison -ui text BLADE-CODCRAB.prf'
#alias tm-update='cd ~/Library/Application\ Support/TextMate/Bundles ; svn up *.tmbundle'
# alias unibu='cd ~/.unison ; unison -ui text -auto RAID.prf'

alias ms='cd ~/Dropbox/ms/;lt'
alias db='cd ~/Dropbox/'


# Sets the Mail Environment Variable
MAIL=/var/spool/mail/seananderson && export MAIL

export SVN_EDITOR=/usr/bin/nano



#alias mmd '∼/Library/Application\ Support/MultiMarkdown/bin/multimarkdown2XHTML.pl'
#alias mmd2tex '∼/Library/Application\ Support/MultiMarkdown/bin/multimarkdown2latex.pl'


shopt -s histappend
PROMPT_COMMAND='history -a'

#When changing directory small typos can be ignored by Bash
shopt -s cdspell

#Set $CDPATH in .bashrc:

#CDPATH='.:..:../..:~/links:~:~/projects:/var/www/virtual_hosts'

#Complete things that have been typed in the wrong case:
set completion-ignore-case on

#When listing possible file completions, put / after directory names and * after programs:
set visible-stats on

# Bash’s programmable completion enables commands’ arguments to be completed intelligently for different commands
# source /etc/bash_completion

# Some aliases

alias bu-linode='rsync -Walrzv --delete --rsh='"'ssh -p42'"' --rsync-path='"'sudo rsync'"' --exclude=/var/log/ --exclude=/home/ --exclude=/dev/ --exclude=/mnt/ --exclude=/proc/ --exclude=/srv/www/andersonclan.ca/ --exclude=/srv/www/seananderson.ca/public_html/stats/ --exclude=/sys/ --exclude=/tmp/ --exclude=/var/tmp/ sean@173.230.131.228:/ /Users/seananderson/Documents/Archive/LinodeBackup/'

alias mux-aux='sed '/newlabel/!d' invertsupp.aux >> invert_plos.aux; pdflatex invert_plos.tex'
alias fix-oct='sed 's/Octopii/Octopus/' invertsupp.pdf > invertsupp2.pdf; cp invertsupp2.pdf invertsupp.pdf; rm invertsupp2.pdf'
alias mux-aux-diff='sed '/newlabel/!d' invertsupp-diff.aux >> invert-diff.aux; pdflatex invert-diff.tex'

alias invert-diff='latexdiff invert.tex ../invert/invert.tex > invert-diff.tex'
alias invertsupp-diff='latexdiff invertsupp.tex ../invert/invertsupp.tex > invertsupp-diff.tex'

alias fix-quicksilver='rm -rf ~/Library/Caches/Quicksilver'
alias dca='ssh diaboloc@diabolo.ca'
alias fdca='sftp diaboloc@diabolo.ca'
alias cluster='ssh sean@cluster.mathstat.dal.ca'
alias baseline='ssh sean@baseline.stanford.edu'
alias bugaboo='ssh anderson@bugaboo.westgrid.ca'
alias bugaboo-fs='ssh anderson@bugaboo-fs.westgrid.ca'
alias raid='ssh sean@raid-ram.mathstat.dal.ca'
alias blade='ssh sean@ram-blade.biology.dal.ca'
alias emacs='cd /Applications/Emacs.app/Contents/MacOS && ./Emacs'
alias updateadobe='sudo /Applications/Utilities/Adobe\ Utilities.localized/Adobe\ Updater5/Adobe\ Updater.app/Contents/MacOS/Adobe\ Updater'

alias makebook='s -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=book.pdf `cat files.txt'

alias pj='cd ~/Documents/Projects'
alias msc='cd ~/Documents/MSc'
alias mscwrite='cd ~/Documents/MSc/writing'

alias vacuummail='sqlite3 ~/Library/Mail/V2/MailData/Envelope\ Index vacuum;'
alias cleanthings='rm /Users/seananderson/Library/Application\ Support/Cultured\ Code/Licenses.plist'
alias openbib='open -a bibdesk.app ~/Library/texmf/BIBINPUTS/ref.bib'

alias vpn='sudo /opt/local/sbin/vpnc /etc/vpnc/DalVPN.conf'
alias vpn-dis='sudo /opt/local/sbin/vpnc-disconnect'

alias photo-bu='rsync -ravz --delete /Volumes/Passport_Storage/Photos/ /Volumes/G_Storage/Photos/'

alias home='cd ~'
alias untar='tar -zxvf'

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
alias tree='find . -print | sed -e "s;[^/]*/;|____;g;s;____|; |;g"'

# tailoring 'less'
alias more='less'
export PAGER=less
export LESSCHARSET='latin1'
export LESSOPEN='|/usr/bin/lesspipe.sh %s 2>&-'
       # Use this if lesspipe.sh exists.
export LESS='-i -N -w  -z-4 -g -e -M -X -F -R -P%t?f%f \
:stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'

# Find a file with a pattern in name:
function ff()

{ find . -type f -iname '*'$*'*' -ls ; }

function fe()
{ find . -type f -iname '*'$1'*' -exec "${2:-file}" {} \;  ; }


export PATH="$HOME/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Setting PATH for MacPython 2.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

alias rmdbc="find . -name *\ \(*conflicted* -exec rm {} \;" # recursively delete Dropbox conflicted files
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
 
export PATH="/usr/local/bin:$PATH"

# MacPorts Installer addition on 2012-11-23_at_22:23:28: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/bin/git:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
