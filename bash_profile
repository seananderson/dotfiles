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
alias halcircus='ssh nellieb1@nelliebellies.com'
alias fdca='sftp diaboloc@diabolo.ca'
alias cluster='ssh sean@cluster.mathstat.dal.ca'
alias baseline='ssh sean@baseline.stanford.edu'
alias bugaboo='ssh anderson@bugaboo.westgrid.ca'
alias bugaboo-fs='ssh anderson@bugaboo-fs.westgrid.ca'
alias raid='ssh sean@raid-ram.mathstat.dal.ca'
alias blade='ssh sean@ram-blade.biology.dal.ca'
alias emacs='cd /Applications/Emacs.app/Contents/MacOS && ./Emacs'
alias updateadobe='sudo /Applications/Utilities/Adobe\ Utilities.localized/Adobe\ Updater5/Adobe\ Updater.app/Contents/MacOS/Adobe\ Updater'
alias fixmailplane='cp ~/gmail-classic.icns /Applications/Mailplane.app/Contents/Resources/Mailplane.icns'

alias makebook='s -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=book.pdf `cat files.txt'


# alias circle='cd ~/Documents/halcircus/cc/wp-content/themes/circuscircle/'
alias pj='cd ~/Documents/Projects'
alias msc='cd ~/Documents/MSc'
alias mscwrite='cd ~/Documents/MSc/writing'

#alias vacuummail='sqlite3 ~/Library/Mail/Envelope\ Index vacuum index;'
alias vacuummail='sqlite3 ~/Library/Mail/V2/MailData/Envelope\ Index vacuum;'
alias cleanthings='rm /Users/seananderson/Library/Application\ Support/Cultured\ Code/Licenses.plist'
alias openbib='open -a bibdesk.app ~/Library/texmf/BIBINPUTS/ref.bib'

alias vpn='sudo /opt/local/sbin/vpnc /etc/vpnc/DalVPN.conf'
alias vpn-dis='sudo /opt/local/sbin/vpnc-disconnect'

alias halibut-up='zip hal-len-freq-sean.zip *.* -i@rsync-include.txt; rsync -ravz --delete --files-from '/Users/seananderson/Documents/halibut_contract/rsync-include.txt' ~/Documents/halibut_contract/ -e ssh diaboloc@diabolo.ca:public_html/seananderson/halibut/; rsync -ravz ~/Documents/halibut_contract/hal-len-freq-sean.zip -e ssh diaboloc@diabolo.ca:public_html/seananderson/halibut/'

alias cosewic-up='latex2rtf ~/Documents/Cosewic/writeup/cosewic.tex ; rsync -ravz --delete --exclude-from '/Users/seananderson/Documents/Cosewic/writeup/exclude.txt' ~/Documents/Cosewic/writeup/ -e ssh diaboloc@diabolo.ca:public_html/seananderson/cosewic/Writing/ ; rsync -ravz --delete --exclude-from '/Users/seananderson/Documents/Cosewic/Analysis/exclude.txt' ~/Documents/Cosewic/Analysis/ -e ssh diaboloc@diabolo.ca:public_html/seananderson/cosewic/Analysis/'

alias cosewic-analysis-up='rsync -ravz --delete --exclude-from '/Users/seananderson/Documents/Cosewic/Analysis/exclude.txt' ~/Documents/Cosewic/Analysis/ -e ssh diaboloc@diabolo.ca:public_html/seananderson/cosewic/Analysis/'

alias cosewic-writing-up='latex2rtf ~/Documents/Cosewic/writeup/cosewic.tex ; rsync -ravz --delete --exclude-from '/Users/seananderson/Documents/Cosewic/writeup/exclude.txt' ~/Documents/Cosewic/writeup/ -e ssh diaboloc@diabolo.ca:public_html/seananderson/cosewic/Writing/'

alias dca-bu='rsync -ravz --delete --files-from '/Users/seananderson/Documents/Scripts/dca-bu-include.txt' --exclude-from '/Users/seananderson/Documents/Scripts/dca-bu-exclude.txt' -e ssh diaboloc@69.89.27.232:~/ ~/Documents/Archive/WebsiteBackups/'

alias dca-bu-test='rsync -ravzn --delete --files-from '/Users/seananderson/Documents/Scripts/dca-bu-include.txt' --exclude-from '/Users/seananderson/Documents/Scripts/dca-bu-exclude.txt' -e ssh diaboloc@69.89.27.232:~/ ~/Documents/Archive/WebsiteBackups/'

alias synch-contacts='/System/Library/PrivateFrameworks/GoogleContactSync.framework/Versions/A/Resources/gconsync --sync com.google.ContactSync'

alias fisheries-status-to-cluster='rsync -ravz --delete --exclude '.git' /Users/seananderson/Dropbox/ms/fisheries_status/r/ -e ssh sean@cluster.mathstat.dal.ca:/home/sean/Dropbox/ms/fisheries_status/r/;rsync -ravz --delete --exclude '.git' /Users/seananderson/Dropbox/ms/fisheries_status/data/ -e ssh sean@cluster.mathstat.dal.ca:/home/sean/Dropbox/ms/fisheries_status/data/'

# alias votw-bu='rsync -ravz --delete --exclude-from '/Users/seananderson/Documents/Scripts/votw-bu-exclude.txt' -e ssh diaboloc@diabolo.ca:~/public_html/votw/ /Volumes/Backup/votw/'

alias cluster-up='rsync -ravz --delete --files-from '/Users/seananderson/cluster-include.txt' ~/ -e ssh sean@cluster.mathstat.dal.ca:~/'

alias dal-bu='rsync -ravz --delete --files-from '/Users/seananderson/Documents/Scripts/dal-rsync-include.txt' --exclude-from '/Users/seananderson/Documents/Scripts/dal-rsync-exclude.txt' ~/ -e ssh sean@raid-ram.mathstat.dal.ca:~/backup/seananderson/'

# alias gallery-up='rsync -ravz --delete ~/Documents/seananderson.ca/gallery/ -e ssh diaboloc@diabolo.ca:public_html/seananderson/gallery/'

alias ipad-goodreader-papers='rsync -avzu --progress --size-only --omit-dir-times --exclude '.DS_Store' /Volumes/Sean-Andersons-iPad.local/Papers/ /Users/seananderson/Papers/;rsync -avzu --size-only --progress --delete --omit-dir-times --exclude '.DS_Store' /Users/seananderson/Papers/ /Volumes/Sean-Andersons-iPad.local/Papers/'


# alias gallery-new-template=''

# alias hc-up='rsync -ravz --delete --files-from '/Users/seananderson/Documents/halcircus/web/rsync.txt' ~/Documents/halcircus/web/ -e ssh diaboloc@diabolo.ca:public_html/halifaxcircus/'

# you'd better have both volumes mounted first!
# alias photo-bu-reverse='rsync -ravz --delete /Volumes/Portable/LRPhotos/ /Volumes/Storage/LRPhotos/'
# alias photo-bu-reverse-test='rsync -ravzn --delete /Volumes/Portable/LRPhotos/ /Volumes/Storage/LRPhotos/'

alias photo-bu='rsync -ravz --delete /Volumes/Passport_Storage/Photos/ /Volumes/G_Storage/Photos/'

#alias photo-bu='rsync -ravz --delete /Volumes/Storage/LRPhotos/ /Volumes/Portable/LRPhotos/'
#alias photo-bu-test='rsync -ravzn --delete /Volumes/Storage/LRPhotos/ /Volumes/Portable/LRPhotos/'

# alias photo-bu-G_Storage_to_WD_Storage='rsync -ravz --delete /Volumes/G_Storage/Photos/ /Volumes/WD_Storage/LRPhotos/Storage/Photos/'
# alias photo-bu-G_Storage_to_WD_Storage-test='rsync -ravzn --delete /Volumes/G_Storage/Photos/ /Volumes/WD_Storage/LRPhotos/Storage/Photos/'

# alias photo-bu-dal-G_Storage_to_Maxtor_Network_Drive='rsync -ravz --size-only --omit-dir-times --delete /Volumes/G_Storage/Photos/ /Volumes/Sean\ Anderson/Photos/'

# alias photo-bu-G_Storage_to_Maxtor_Network_Drive='rsync -ravz --size-only --omit-dir-times --delete /Volumes/G_Storage/Photos/ /Volumes/Sean\ Anderson/Photos/'

# alias photo_backup_G_Storage_to_Passport_Storage='rsync -ravz --exclude=/Volumes/G_Storage/Photos/2011/ --size-only --omit-dir-times --delete /Volumes/G_Storage/Photos/ /Volumes/Passport_Storage/Photos/'

# alias photo_backup_G_Storage_to_Passport_Storage_2011='rsync -ravz --size-only --omit-dir-times --delete /Volumes/G_Storage/Photos/2011/ /Volumes/Passport_Storage_Temp/Photos/2011/'

# rsync -ravzn --size-only --omit-dir-times --delete /Volumes/Seagate_Storage/Photos/ /Volumes/G_Storage/Photos/

# rsync -ravzn --size-only --omit-dir-times --delete /Volumes/G_Storage/Photos/ /Volumes/Seagate_Storage/Photos/

# rsync -ravn /Volumes/Seagate_Storage/Music/ /Volumes/G_Storage/Music/


# rsync -ravz --size-only --omit-dir-times --delete /Volumes/G_Storage/Photos/2011/ /Volumes/Passport_Storage_Temp/Photos/2011/

# alias testing='find . -type f -name '*.rtf' -exec cp {} com \;'

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
# alias tree='tree -Csu'        # nice alternative to 'ls'
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

# find pattern in a set of filesand highlight them:

# function fstr()
# {
#     OPTIND=1
#     local case=""
#     local usage="fstr: find string in files.
# Usage: fstr [-i] \"pattern\" [\"filename pattern\"] "
#     while getopts :it opt
#     do
#         case "$opt" in
#         i) case="-i " ;;
#         *) echo "$usage"; return;;
#         esac
#     done
#     shift $(( $OPTIND - 1 ))
#     if [ "$#" -lt 1 ]; then
#         echo "$usage"
#         return;
#     fi
#     local SMSO=$(tput smso)
#     local RMSO=$(tput rmso)
#     find . -type f -name "${2:-*}" -print0 |
#     xargs -0 grep -sn ${case} "$1" 2>&- | \
#     sed "s/$1/${SMSO}\0${RMSO}/gI" | more
# }

function swap()         # swap 2 filenames around
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}

# function my_ip() # get IP adresses
# {
#     MY_IP=$(/sbin/ifconfig ppp0 | awk '/inet/ { print $2 } ' | \
# sed -e s/addr://)
#     MY_ISP=$(/sbin/ifconfig ppp0 | awk '/P-t-P/ { print $3 } ' | \
# sed -e s/P-t-P://)
# }
#
# function ii()   # get current host related info
# {
#   echo -e "\nYou are logged on ${RED}$HOST"
#   echo -e "\nAdditionnal information:$NC " ; uname -a
#   echo -e "\n${RED}Users logged on:$NC " ; w -h
#   echo -e "\n${RED}Current date :$NC " ; date
#   echo -e "\n${RED}Machine stats :$NC " ; uptime
#   echo -e "\n${RED}Memory stats :$NC " ; free
#   my_ip 2>&- ;
#   echo -e "\n${RED}Local IP Address :$NC" ; echo ${MY_IP:-"Not connected"}
#   echo -e "\n${RED}ISP Address :$NC" ; echo ${MY_ISP:-"Not connected"}
#   echo
# }




export PATH="$HOME/bin:$PATH"
#source ~/bin/git-completion.bash
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/bin:$PATH"
#source ~/bin/git-completion.bash
# PS1='[\u@\h \w$(__git_ps1 " (%s)")]\$ '

##
# Your previous /Users/seananderson/.bash_profile file was backed up as /Users/seananderson/.bash_profile.macports-saved_2009-04-27_at_12:06:50
##

# MacPorts Installer addition on 2009-04-27_at_12:06:50: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2009-04-27_at_12:06:50: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.



##
# Your previous /Users/seananderson/.bash_profile file was backed up as /Users/seananderson/.bash_profile.macports-saved_2009-09-05_at_10:17:58
##

# MacPorts Installer addition on 2009-09-05_at_10:17:58: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# generate password:
# e.g.:
# genpasswd 16
# uw8CnDVMwC6vOKgW
genpasswd() {
    local l=$1
            [ "$l" == "" ] && l=20
                    tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}

# Setting PATH for MacPython 2.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

##
# Your previous /Users/seananderson/.bash_profile file was backed up as /Users/seananderson/.bash_profile.macports-saved_2011-11-17_at_15:38:30
##

# MacPorts Installer addition on 2011-11-17_at_15:38:30: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#export DYLD_LIBRARY_PATH=/usr/local/gfortran/lib

alias rmdbc="find . -name *\ \(*conflicted* -exec rm {} \;" # recursively delete Dropbox conflicted files
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# for image magic to work:
#export MAGICK_HOME="$HOME/ImageMagick-6.8.0"
#export PATH="$MAGICK_HOME/bin:$PATH"
# export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"
 
 export PATH="/usr/local/bin:$PATH"

##
# Your previous /Users/seananderson/.bash_profile file was backed up as /Users/seananderson/.bash_profile.macports-saved_2012-11-23_at_22:23:28
##

# MacPorts Installer addition on 2012-11-23_at_22:23:28: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/usr/local/bin/git:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

alias fixfinder='sudo killall -KILL appleeventsd'

alias syncjekyll='rsync -avzh --progress --rsh='"'ssh -p42'"' --no-p --delete --exclude=stats --exclude=.DS_Store /Users/seananderson/Dropbox/seananderson.github.com/_site/ sean@173.230.131.228:/home/sean/public_html/'

# rsync -avzhn --progress --rsh='ssh -p42' --rsync-path='sudo rsync' --delete --exclude=stats --exclude=.DS_Store sean@173.230.131.228:/home/sean/public_html/ /Users/seananderson/Dropbox/seananderson.github.com/_site/ 

# alias makejekyll='jekyll /Users/seananderson/Dropbox/seananderson.github.com/'

alias msjekyll='makejekyll ; syncjekyll'

#[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

alias sp='cd ~/Dropbox/ms/metafolio/inst/examples/;ls'

alias ql="qlmanage -p &>/dev/null"

# Select the current directory in launchbar, optionally a file
lb () {
	if [[ $# = 1 ]]; then
		[[ -e "$(pwd)/$1" ]] && open "x-launchbar:select?file=$(pwd)/$1" || open "x-launchbar:select?file=$1"
	else
		open "x-launchbar:select?file=$(pwd)"
	fi
}
alias psgrep="ps -Aco pid,comm | sed 's/^ *//'| sed 's/:/ /'|grep -iE"

fp () { #find and list processes matching a case-insensitive partial-match string
		ps Ao pid,comm|awk '{match($0,/[^\/]+$/); print substr($0,RSTART,RLENGTH)": "$1}'|grep -i $1|grep -v grep
}

fk () { 
	IFS=$'\n'
	PS3='Kill which process? (1 to cancel): '
	select OPT in "Cancel" $(fp $1); do
		if [ $OPT != "Cancel" ]; then
			kill $(echo $OPT|awk '{print $NF}')
		fi
		break
	done
	unset IFS
}

#if [[ ! $TERM =~ screen ]]; then
      #exec tmux
#fi
