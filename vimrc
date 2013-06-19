" .vimrc file
" Many parts are taken from various other online sources.
"
" This setting prevents vim from emulating the original vi's bugs and limitations
set nocompatible
"
" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = []
if !has('gui_running')
    call add(g:pathogen_disabled, 'fuzzy_file_finder')
endif

filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype on

let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","

" Various ways to go to normal mode
inoremap jj <esc>
inoremap kj <Esc>

" latex:
nmap <leader>x :!latexmk %<CR><CR>
"nmap <leader>l :Latexmk<CR>

" Edit the vimrc file
nmap <silent> ,ev :e $MYVIMRC<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>

" When I let Vim write the current buffer I frequently mistype the
" command ":w" as ":W" - so I have to remap it to correct this typo:
nmap :W :w

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype indent on
filetype on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching preferences
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch
" set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase
set scrolloff=2
set showmatch
set hls "enable highlight when searching
set iskeyword+=:,_,-

" Clears search highlighting by just hitting a return.
" The <BS> clears the command line.
" (From Zdenek Sekera [zs@sgi.com]  on the vim list.)
" I added the final <cr> to restore the standard behaviour of
" <cr> to go to the next line
nnoremap <CR> :nohlsearch<CR>/<BS>

" map space to searching and back-searching
map <space> /

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File browsing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmode=longest,list
set wildignore=*.o,*.obj,*.bak,*.exe,*.log,*.rel,*.swp,*.bbl
set wildmenu
"autocmd BufEnter * lcd %:p:h "change to directory of current file
" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

set browsedir=buffer "Make GUI File Open use current directory

">fn inserts filename
">fd inserts directory of current file. Quite useful
cmap >fn e <c-r>=expand('%:p')<cr>
cmap >fd e <c-r>=expand('%:p:h').'/'<cr>

"map the command Kwbd to kill a buffer without closing the window
com! Kwbd enew|bw #

"nnoremap <C-N> :bnext<Enter>
"nnoremap <C-P> :bprev<Enter>
set confirm

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

"set anti enc=utf-8 gfn=Inconsolata:h14
"set anti enc=utf-8 gfn=ConsolasforBBEdit:h13
"set anti enc=utf-8 gfn=Envy\ Code\ R:h12
"set anti enc=utf-8 gfn=Source\ Code\ Pro:h12
set anti enc=utf-8 gfn=Menlo:h12
"set anti enc=utf-8 gfn=Helvetica:h12
"set anti enc=utf-8 gfn=AnonymousPro:h13
"set anti enc=utf-8 gfn=Cousine:h14
"set anti enc=utf-8 gfn=DejaVu\ Sans\ Mono:h12


set linespace=3
 set guioptions-=T
""set guioptions=ar "a means try and add copied text to system register
"set guioptions=r ""means add right scroll bar
" By default, Vim displays the current line of each minimized file,
" which isn't much help and takes up too 
set wmh=0
" Set up the gui cursor to look nice
" from http://www.derekwyatt.org/vim/the-vimrc-file/my-vimrc-file/

set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
""set guicursor+=i-ci:ver25-Cursor-blinkon0
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" set the gui options the way I like
set guioptions=ace

" The default screen size on start up
au GUIEnter * set lines=58 columns=82

" Wrap only at word boundaries
set lbr

" wrapping
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show the current mode? Yes!
set showmode

" This setting prevents vi from making its annoying beeps when a command doesn't work. Instead, it briefly flashes the screen -- much less annoying.
set vb t_vb=".

"Have the mouse enabled all the time:
"set mouse=a
set mousehide
" By default, vim doesn't let the cursor stray beyond the defined text. This setting allows the cursor to freely roam anywhere it likes in command mode. It feels weird at first but is quite useful.
set virtualedit=all

set bs=2 " backspacing over everything in insert mode

" set to auto read when a file is changed from the outside
set autoread

"Change buffer - without saving
set hid

"Do not redraw, when running macros.. Lazyredraw
set lazyredraw

"For example VimTip# 498 describes how to use the syntax files to enable language specific tab completion like so:
"augroup vimrc_keyword
	"autocmd!
	"autocmd FileType * exec( 'setlocal dict+=' . $VIMRUNTIME . '/syntax/' . expand('') . '.vim' )
"augroup end

" suffixes:    Ignore filename with any of these suffixes
"              when using the ":edit" command.
"              Most of these are files created by LaTeX.
set   suffixes=.rel,.aux,.bak,.dvi,.gz,.idx,.log,.ps,.swp,.tar

" startofline:  no:  do not jump to first character with page
" commands, ie keep the cursor in the current column.
set nostartofline

"       textmode:    no - I am using Vim on UNIX!
set notextmode

" don't auto hardwrap:
set   textwidth=0 

"       ttyfast:     are we using a fast terminal?
"                    seting depends on where I use Vim...
set nottyfast
"
"       ttybuiltin:
""  set nottybuiltin
"
"       ttyscroll:      turn off scrolling -> faster!
set   ttyscroll=10

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" have the h and l cursor keys wrap between lines (like <Space> and <BkSpc> do
" by default), and ~ covert case over line breaks; also have the cursor keys
" wrap in insert mode:
set whichwrap=h,l,~,[,]

"noremap <Space> <PageDown>
noremap <BS> i<BS><ESC>
"noremap - <PageUp>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn on spell checking with English dictionary
set spell
set spelllang=en_ca
set spellsuggest=9 "show only 9 suggestions for misspelled words
""cmap <Tab> <C-l><C-d>
set dictionary+=~/.vim/dict/words 
set dictionary+=/usr/share/dict/words
set thesaurus+=~/.vim/thesaurus/mthesaur.txt
" make vim recognize the syntax files as part of the dictionary completion (C-x C-k):
"au FileType * exe('setl dict+='.$VIMRUNTIME.'/syntax/'.&filetype.'.vim')
"

" map control-z to choose the most likely replacement
nnoremap <c-z> 1z=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Word completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"inoremap <c-tab> <c-r>=InsertTabWrapper ("startkey")<cr>

" tell complete to look in the dictionary
set complete-=k complete+=k

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""set backup    " enable backup and define the backup file
"set backupext=.bak

"set backup
"set writebackup
"silent execute '!rm "~/.vim/temp/*~"'
"set backupdir=~/.vim/temp//
"set directory=~/.vim/temp//

" ================ Turn Off Swap Files ==============
"
set noswapfile
set nobackup
set nowb

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding test
" Toggle fold state between closed and opened.
"
" If there is no fold at current line, just moves forward.
" If it is present, reverse it's state.
fun! ToggleFold()
if foldlevel('.') == 0
normal! l
else
if foldclosed('.') < 0
. foldclose
else
. foldopen
endif
endif
" Clear status line
echo
endfun

" Map this function to C-f key.
"noremap <C-f> :call ToggleFold()<CR>

" ================ Folds ============================
"
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Minibuffer stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General abbreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab teh the
iab adn and
iab xdate <C-R>=strftime("%a %b %d %Y")<CR>
iab xnote <C-R>=strftime("%a %b %d %Y")<CR><CR>================
"iab xdate <C-R>=strftime("%a %b %d %T %Z %Y")<CR>
" Example: Tue Dec 16 12:07:00 CET 1997
iab xsig Sean <C-R>=strftime("%b %d %Y")<CR>
iab alos also
iab aslo also
iab charcter character
iab charcters characters
iab exmaple example
iab shoudl should
iab seperate separate
iab scaurl http://seananderson.ca/
iab dcaurl http://diabolo.ca/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Commenting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map ,co O"<ESC>69A"<ESC>69\|D<CR>i"<CR><ESC>i"<ESC>70a"<ESC>70\|D<ESC>kA<cr>"<ESC>lxi<space>

" Titlise Visually Selected Text (map for .vimrc)
vmap ,T :s/\<\(.\)\(\k*\)\>/\u\1\L\2/g<CR><CR>
vmap ,t :s/\<\(.\)\(\k*\)\>/\l\1\L\2/g<CR><CR>
" titlise a line
""nmap ,t :s/.*/\L&/<bar>:s/\<./\u&/g<cr>  *N*

" fuzzyfinder stuff
"if has("gui_running")
"nmap <C-CR> :FuzzyFinderBuffer<cr>
"nmap <leader>f :FuzzyFinderFile<cr>
"endif

" peepopen alternative
 "if has("gui_macvim")
   "macmenu &File.New\ Tab key=<nop>
   "nmap ,p <Plug>PeepOpen
 "end
 "
 "Automatically quit PeepOpen when Vim exits.
"let p:peepopen_quit = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make vim and normal clipboard sync
"set clipboard+=unnamed
	if has("gui_macvim")
    "set clipboard+=unnamed
	  let macvim_hig_shift_movement = 1
	endif

"new stuff

" The following beast is something i didn't write... it will return the
" syntax highlighting group that the current "thing" under the cursor
" belongs to -- very useful for figuring out what to change as far as
" syntax highlighting goes.
nmap <silent> ,vc :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name")
     \ . '> trans<' . synIDattr(synID(line("."),col("."),0),"name")
     \ . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
     \ . ">"<CR>

" set text wrapping toggles
"nmap <silent> ,w :set invwrap<CR>:set wrap?<CR>

" Underline the current line with '='
nmap <silent> ,ul :t.\|s/./=/g\|set nohls<cr>

" Delete all buffers
"nmap <silent> ,da :exec "1," . bufnr('$') . "bd"<cr>

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

" Make command line one line high
set ch=1

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2
"
" Set the status line the way i like it
" from http://www.derekwyatt.org/vim/the-vimrc-file/my-vimrc-file/
"set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ %{fugitive#statusline()} 
"Buf:%n\_
"[%b][0x%B]


" Show the current command in the lower right corner
set showcmd

" Show the current mode
set showmode

" This is the timeout used while waiting for user input on a multi-keyed macro
" or while just sitting and waiting for another key to be pressed measured
" in milliseconds.
"
" i.e. for the ",d" command, there is a "timeoutlen" wait period between the
"      "," key and the "d" key.  If the "d" key isn't pressed before the
"      timeout expires, one of two things happens: The "," command is executed
"      if there is one (which there isn't) or the command aborts.
set timeoutlen=1000

" Keep some stuff in the history
set history=500

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" get rid of the silly characters in window separators
set fillchars=""
 ""set fillchars=stl: ,stlnc: ,vert:\|,fold:-,diff:-
                                                               
" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Search the current file for what's currently in the search
" register and display matches
nmap <silent> ,gs
     \ :vimgrep /<C-r>// %<CR>:ccl<CR>:cwin<CR><C-W>J:set nohls<CR>

" Search the current file for the word under the cursor and display matches
nmap <silent> ,gw
     \ :vimgrep /<C-r><C-w>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:set nohls<CR>

" Search the current file for the WORD under the cursor and display matches
nmap <silent> ,gW
     \ :vimgrep /<C-r><C-a>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:set nohls<CR>

 set ruler                           " show the cursor position all the time

"from: http://stackoverflow.com/questions/706173/closing-files-in-vim-from-directory-and-its-subdirectories
function! s:close_buffers(name_regexp)
    for buffer_number in range(1, bufnr('$'))
        if !buflisted(buffer_number)
            continue
        endif

        let name = fnamemodify(bufname( buffer_number ), ':p')
        if name =~ a:name_regexp
            exec 'bdelete '.buffer_number
        endif
    endfor
endfunction

command! -nargs=1 CloseBuffers call s:close_buffers(<f-args>)
"Use commands like

":CloseBuffers include
":CloseBuffers in.*e
"to close buffers which name matches passed regexp.

"That means that to close all files from the certain folder you can use

":CloseBuffers workspace/cpp
":CloseBuffers /home/my/project
"To close all the files from the current dir and all subdirs

":exec "CloseBuffers ".getcwd()


" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=1


" from http://www.zzapper.co.uk/vim-tips-blog/2009/08/clean-up-text-file-with-vim-function.html
""Execute with
"": call Clean()
function! Clean()
" Clean up a text file
" delete pesky (MSDOS) control-M 's
exe ':%s/\r//ge'
" delete pesky non-asciis
exe ':%s/[\x00-\x1f\x80-\xff]/ /eg '
" compress multiple spaces 
exe ':%s/\s\s\+/ /eg'
" delete end of line spaces 
exe ':%s/\s\+$//e'
" compress multiple blank lines 
exe ':silent! v/./,/./-j'
endfunction

" visual shifting (builtin-repeat)
vnoremap < <gv
vnoremap > >gv

"smoother scrolling:
map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>
" from http://blog.golden-ratio.net/2008/08/using-tabs-in-vim/                        
function! GuiTabLabel()
	" add the tab number
	let label = '['.tabpagenr()
 
	" modified since the last save?
	let buflist = tabpagebuflist(v:lnum)
	for bufnr in buflist
		if getbufvar(bufnr, '&modified')
			let label .= '*'
			break
		endif
	endfor
 
	" count number of open windows in the tab
	let wincount = tabpagewinnr(v:lnum, '$')
	if wincount > 1
		let label .= ', '.wincount
	endif
	let label .= '] '
 
	" add the file name without path information
	let n = bufname(buflist[tabpagewinnr(v:lnum) - 1])
	let label .= fnamemodify(n, ':t')
 
	return label
endfunction
 
set guitablabel=%{GuiTabLabel()}
                        
au BufRead,BufNewFile *.bbcode		setfiletype bbcode

" PHP
" highlights interpolated variables in sql strings and does sql-syntax highlighting. yay
"autocmd FileType php let php_sql_query=1
" does exactly that. highlights html inside of php strings
"autocmd FileType php let php_htmlInStrings=1
" discourages use oh short tags. c'mon its deprecated remember
"autocmd FileType php let php_noShortTags=1
" automagically folds functions & methods. this is getting IDE-like isn't it?
"autocmd FileType php let php_folding=1

" set "make" command when editing php files
"set makeprg=php\ -l\ %
"set errorformat=%m\ in\ %f\ on\ line\ %l    
"To use, simply issue “:make %” command inside of VIM to check the syntax of your php against the interpreter. Syntax highlighting can only do so much


" autocomplete funcs and identifiers for languages
" Basically, while in insert mode, you can type <C-x> <C-o> to have vim attempt to autocomplete the current keyword
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

"I like gf to search recursively downwards from the current directory so I append ./** to my path like so
"set path+=./**
set path+=./**

" bibtex command to open pdf Awesome
"map gp yi{:!open ~/Papers/<C-r>"<cr><cr>

" for Alpine
"autocmd FileType mail set textwidth=100000
autocmd FileType mail set tw=72
"autocmd FileType mail set fo=tcoqwanl
"autocmd FileType mail set fo+=w " format flowed
autocmd FileType mail set noai
autocmd FileType mail set expandtab
"autocmd FileType mail set bg=light
autocmd FileType mail colo solarized

autocmd Filetype mail nmap Q gqip
nmap Q gqip

" see: http://vim.wikia.com/wiki/Correct_format-flowed_email_function
function! Fixflowed()
  " save cursor position
  let pos = getpos(".")
  " add spaces to the end of every line
  silent! %s/\([^]> :]\)\ze\n>[> ]*[^> ]/\1 /g
  " remove extraneous spaces
  silent! %s/ \+\ze\n[> ]*$//
  " make sure there's only ONE space at the end of each line
  silent! %s/ \{2,}$/ /
  " fix the wockas spacing from the text
  silent! %s/^[> ]*>\ze[^> ]/& /
  " compress the wockas
  while search('^>\+ >', 'w') > 0
    s/^>\+\zs >/>/
  endwhile
  " restore the original cursor location
  call setpos('.',pos)
endfunction

function! Fixindented()
  " remove spaces at end of indented lines
  silent! %s/^\s.*\zs \+$//
endfunction
autocmd Filetype mail command! Fixq call Fixflowed()
autocmd Filetype mail autocmd BufWritePre <buffer> call Fixindented()


iab Xsup (\textit{SI Methods})


" nerdtree:
map <F2> :NERDTreeToggle<CR>

"nmap <leader>q1 :sort /.*\%1v/<cr>
"nmap <leader>q2 :sort /.*\%2v/<cr>
" For todo lists
"nmap <C-Down> ddp<cr>
"nmap <C-Up> ddkP<cr>
"nmap <leader>q1 gg/Importance<cr><cr>jVGGk:sort /.*\%1v/<cr>
"nmap <leader>q2 gg/Importance<cr><cr>jVGGk:sort /.*\%2v/<cr>

"vmap <leader>q3 :sort /.*\%1v/<cr>

" if has("gui_macvim")
"	     " set macvim specific stuf f
"		 endif

"The following trick is a really small one, but a super-efficient one, since it strips off two full keystrokes from almost every Vim command:
nnoremap ; :
"nnoremap : ;

" Normally don't automatically format 'text' as it is typed, only do this
  " with comments, at 70 characters.
  au BufNewFile,BufEnter *.c,*.h,*.java,*.jsp,*.R,*.r set formatoptions-=t tw=70

autocmd FileType tex set spell
autocmd FileType rnoweb set spell
	
"map ,p :YRShow<cr>


" If buffer modified, update any 'Last modified: ' in the first 20 lines.
" 'Last modified: ' can have up to 10 characters before (they are retained).
" Restores cursor and window position using save_cursor variable.
function! LastModified()
  if &modified
    let save_cursor = getpos(".")
    let n = min([20, line("$")])
    exe '1,' . n . 's#^\(.\{,10}Last modified: \).*#\1' .
          \ strftime('%b %d, %Y') . '#e'
    call setpos('.', save_cursor)
  endif
endfun
autocmd BufWritePre * call LastModified()

 
"http://vim.wikia.com/wiki/Use_eval_to_create_dynamic_templates
augroup templates
  au!
  " read in template files
  autocmd BufNewFile *.* silent! execute '0r $HOME/.vim/template/skeleton.'.expand("<afile>:e")

  " parse special text in the templates after the read
  autocmd BufNewFile * %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge
augroup END

""" latex suite stuff:
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"nmap <leader>lr :!rubber %<cr><cr>

"nnoremap <F5> :GundoToggle<CR>

" to make showmarks show up faster:
set updatetime=500

" so that crontab works:
au! BufNewFile,BufRead crontab.* set nobackup | set nowritebackup

"Automatically quit PeepOpen when Vim exits.
"let p:peepopen_quit = 1

"" from: https://github.com/topfunky/PeepOpen-Issues/issues#issue/87
"let g:peepopen_loaded = 1
"let g:peepopen_cwd = getcwd()

"let s:save_cpo = &cpo
"set cpo&vim

"function s:LaunchPeepOpenViaVim()
 "let cwd = g:peepopen_cwd
 "silent exe "!open -a PeepOpen " . shellescape(cwd)
"endfunction

" see http://winterdom.com/2008/08/molokaiforvim :



" latex-box
let g:LatexBox_viewer = "/Applications/Skim.app"

map <silent> <Leader>ls :silent !/Applications/Skim.app/Contents/SharedSupport/displayline \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>" "%:p" <CR>

"if bufwinnr(1)
  "map = <C-W>+
  "map - <C-W>-
"endif
"if bufwinnr(1)
  "map + <C-W>>
  "map _ <C-W><
"endif
if bufwinnr(1)
  map + <C-W>+
  map _ <C-W>-
endif

 " Quick jumping between splits
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" nerd toggle comment:
map <C-c> <leader>c<space>



"set norelativenumber
"set number

" Set relative line numbers
"set norelativenumber " Use relative line numbers. Current line is still in status bar.
"set number
"au BufReadPost * set norelativenumber

"au BufReadPost * set number
	 
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set smartindent


"For other highlighting options, add the following in your vimrc (ensure 'colorscheme zenesque' is called after the below statement) 
"set colorscheme zenesque

"light with colors: 
"let g:zenesque_colors=1 

"dark without colors: 
"let g:zenesque_colors=2 

"dark with colors: 
"let g:zenesque_colors=3 

"if you want to revert back to the default then set: g:zenesque_colors=0 
"
"
"
"


 "highlight Normal guibg=#4a525a
 "highlight Normal guibg=#32383e

 "set nocursorline

"nnoremap <localleader>m :!make<CR><CR>
nnoremap <localleader>mm :!make<CR><CR>
   let vimrplugin_underscore = 0

   "set background=light
   "colorscheme solarized
"function! ToggleBackground()
    "if (w:solarized_style=="dark")
    "let w:solarized_style="light"
    "colorscheme solarized
"else
    "let w:solarized_style="dark"
    "colorscheme solarized
"endif
"endfunction
"command! Togbg call ToggleBackground()
"nnoremap <F5> :call ToggleBackground()<CR>
"inoremap <F5> <ESC>:call ToggleBackground()<CR>a
"vnoremap <F5> <ESC>:call ToggleBackground()<CR>
   
set background=light
"colorscheme birds_of_paradise
if has("gui_running")
     "let g:molokai_original = 1
     
     set background=light
     "colorscheme molokai
     colorscheme solarized
     "colorschemeobsidian2
     "colorscheme birds_of_paradise_sean
     "colorscheme Tomorrow-Night 
endif
"if has("gui_running")
       "echo "yes, we have a GUI"
    "else
       "echo "Boring old console"
    "endif

     "set background=dark
     "colorscheme xoria256
     "set background=light
     "colorscheme solarized
     "colorscheme molokai
     "colorscheme pyte
     "colorscheme idlefingerscustom

     "http://www.kevinberridge.com/2010/10/vim-escape.html


"map <silent> <Leader>ls :silent !/Applications/Skim.app/Contents/SharedSupport/displayline
		"\ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>" "%:p" <CR> 

nmap <silent> <Leader>ef :vsplit<bar>wincmd l<bar>exe "norm! Ljz<c-v><cr>"<cr>:set scb<cr>:wincmd h<cr> :set scb<cr>

"http://vim.wikia.com/wiki/Formatting_paragraphs_in_LaTeX:_an_%22environment-aware_gqap%22
" latex wrap paragraph (i.e., gqlp)
"omap lp ?^$\\|^\s*\(\\begin\\|\\end\\|\\label\)?1<CR>//-1<CR>.<CR>

"autocmd FileType tex set formatoptions=tc
"autocmd FileType tex set fo+=a
"autocmd FileType tex set textwidth=78

let g:pandoc_bibfiles = ['/Users/seananderson/Dropbox/tex/ref3.bib']
"The syntax highlighting should be fairly accurate and complete. By default, the bundle tries to be smart, and only highlight implicit links if there is a matching link definition. This can be expensive on large files and slow things down. To disable it, set g:pandoc_no_empty_implicits:
let g:pandoc_no_empty_implicits = 1

"Due to the way they are handled, span elements (emphasis, bold, tt, subscript and superscript) can cause slowdowns. If you desire to disable highlighting of them altogether, set g:pandoc_no_spans:
let g:pandoc_no_spans = 1
"Note that this will also disable highlighting of embedded html, because otherwise stuff like <code> (which is unformatted) is detected as containing html that doesn't end.
"

    let g:pandoc_use_bibtool = 1

let g:LuckyOutputFormat = 'markdown'
let g:pandoc_no_folding = 0

"let vimrplugin_applescript = 1
"let vimrplugin_screenplugin = d

" relative line numbers in normal mode, 
" regular line number in insert mode:
" http://news.ycombinator.com/item?id=4172099

"
"set rnu
"au InsertEnter * :set nu
"au InsertLeave * :set rnu
"au FocusLost * :set nu
"au FocusGained * :set rnu
"set number
"set numberwidth=4
"set scrolloff=4

" Show syntax highlighting groups for word under cursor
" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
"nmap <C-S-O> :call <SID>SynStack()<CR>
"function! <SID>SynStack()
  "if !exists("*synstack")
    "return
  "endif
  "echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
"endfunc

"if exists('*HexHighlight()')
  "nmap <leader>h :call HexHighlight()<Return>
"endif

"If the yanked element has a length less than this value 
"if will not be added to the YankRing.  This can be useful if 
"you want to bypass single letter deletes by adding the 
"following to your .vimrc: >
let g:yankring_min_element_length = 2
let g:yankring_replace_n_pkey = '<S-p>'
let g:yankring_replace_n_nkey = '<S-n>'

" rewrap pararaph:
"nnoremap <C-q> vipgq`.

au BufRead,BufNewFile *.Rnw  set filetype=rnoweb.tex

"au BufRead,BufNewFile *.tex	 setlocal formatoptions+=wa
"au BufRead,BufNewFile *.tex  setlocal textwidth=80
"au BufRead,BufNewFile *.Rnw	 setlocal formatoptions+=wa
"au BufRead,BufNewFile *.Rnw  setlocal textwidth=80

"autocmd FileType rnoweb.tex setlocal formatoptions+=wa
"autocmd FileType rnoweb.tex setlocal textwidth=80 
"autocmd FileType tex setlocal formatoptions=nbcrq
"autocmd FileType tex setlocal textwidth=80 
"set formatoptions+=co

" task list
"let g:tlTokenList = ['FIXME', 'TODO', 'XX', 'REF', 'todo', 'nkd', 'abc'] 
"let g:tlWindowPosition = 1 " open at bottom
"map <leader>tl <Plug>TaskList

autocmd BufEnter * silent! lcd %:p:h

" see https://github.com/laktek/distraction-free-writing-vim
let g:fullscreen_colorscheme = "iawriter"
"let g:fullscreen_colorscheme = "solarized"
"let g:fullscreen_colorscheme = "birds_of_paradise_sean"
let g:fullscreen_font = "Cousine:h18"
let g:normal_colorscheme = "solarized"
let g:normal_font="Inconsolata:h14"

"colorscheme birds_of_paradise_sean

"nnoremap <silent> <F5> :TlistToggle<CR>
set nocursorline

"The Vim-R-plugin includes a script to automatically indent R files. By
"default, the script aligns function arguments if they span for multiple lines.
"If you prefer do not have the arguments of functions aligned, put in your
"|vimrc|:

let r_indent_align_args = 0
   let vimrplugin_tmux = 1
   let g:ScreenImpl = 'Tmux'
   "let vimrplugin_screenvsplit = f
   map <silent> <Leader>rh :call RAction("head")<CR>
   map <silent> <LocalLeader>rk :call RAction("levels")<CR>
   
   "map <C-c> <Plug>RToggleComment
   nmap <Leader>xx <Plug>RToggleComment

"let r_indent_align_args = 0
   "let vimrplugin_tmux = 0
   "let vimrplugin_applescript = 1
   "let g:ScreenImpl = 'Tmux'
   "let vimrplugin_screenvsplit = f
   "map <silent> <Leader>rh :call RAction("head")<CR>
   "map <silent> <LocalLeader>rk :call RAction("levels")<CR>


"   set background=dark
   " solarized options 
    let g:solarized_termcolors = 16
    let g:solarized_visibility = "normal"
    let g:solarized_contrast = "normal"
    let g:solarized_termtrans = 1
    call togglebg#map("<F6>")
    colorscheme solarized
   "set t_Co=256

   set runtimepath^=~/.vim/bundle/ctrlp.vim

   let NERDTreeIgnore=['\.pdf$', '\~$', '\.docx$', '\.wmv$', '\.tar.gz$', '\.ppt$', '\.zip$', '\.rtf$', '\.xls$']

   "http://stackoverflow.com/questions/1447334/how-do-you-add-nerdtree-to-your-vimrc
"   autocmd VimEnter * NERDTree
   autocmd VimEnter * wincmd p

let g:LatexBox_Folding = 1
let g:LatexBox_fold_envs = 0
let g:LatexBox_fold_preamble = 1

"http://stackoverflow.com/questions/356126/how-can-you-automatically-remove-trailing-whitespace-in-vim
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

nmap <leader>y :YRShow<CR>ctrlp.vim

" toggle line numbers:
" http://stackoverflow.com/questions/762515/vim-remap-key-to-toggle-line-numbering
nmap <f2> :set number! number?<cr>

"By default, Vim will highlight chunk headers of RMarkdown and
"RreStructuredText with a single color. When the code is processed by knitr,
"chunk headers should contain valid R code and, thus, you may want to highlight
"them as such. You can do this by putting in your |vimrc|:
let rrst_syn_hl_chunk = 1
let rmd_syn_hl_chunk = 1

"set formatoptions=Bnawqorct
set listchars=tab:▸\ ,eol:¬
set nolist

let g:molokai_original=0 "use the original molokai colouring

colo solarized

" set background colour based on time of day:
"if strftime("%H") < 18
  "set background=light
"else
  "set background=dark
"endif

"|nojoinspaces| allows you to use SHIFT-J in normal mode to join the next
"line with the current line without adding extra unwanted spaces.
setlocal nojoinspaces

let g:pandoc_use_hard_wraps = 0
let g:pandoc_auto_format = 0
let g:pandoc_no_empty_implicits = 1
let g:pandoc_no_spans = 1
let g:pandoc_no_folding = 0

nnoremap <localleader>- yyp<c-v>$r-
nnoremap <localleader>= yyp<c-v>$r=

" " Preserve indentation while pasting text from the OS X clipboard
 noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

 "https://github.com/Lokaltog/vim-powerline
 let g:ctrlp_cmd = 'CtrlPBuffer'

nmap <S-CR> :CtrlPBuffer<CR>


let g:pandoc_bibfiles = ['/Users/seananderson/Dropbox/tex/ref3.bib']

" get cursors right in iTerm2 tmux:
"https://gist.github.com/andyfowler/1195581
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
 else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set t_Co=256

se nu
set background=light

" ================ Persistent Undo ==================
" " Keep undo history across sessions, by storing in file.
" " Only works all the time.
"
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" move lines up or down easily:
nnoremap <silent> <leader>k :m-2<CR>==
nnoremap <silent> <leader>j :m+1<CR>==


" http://stackoverflow.com/questions/5860154/vim-spell-checking-comments-only-in-latex-files
syntax spell toplevel

"set rnu
set nohlsearch
se nu

nmap <C-S> :update<CR>

nmap <localleader>w :update<CR>

autocmd FileType tex setlocal textwidth=80 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim R Plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:vimrplugin_term = "terminal"
"let g:vimrplugin_term_cmd = "terminal"
"let vimrplugin_applescript = 0
"let vimrplugin_screenplugin = 0
 ""let g:vimrplugin_map_r = 1

"By default, the window will be split horizontally. Put the following in your
 let vimrplugin_conquevsplit = 1
 let ConqueTerm_Color = 0 
 " To open R in terminal rather than RGui (only necessary on OS X)
 let vimrplugin_applescript = 0
 let vimrplugin_screenplugin = 1
   " For tmux support
   let g:ScreenImpl = 'Tmux'
   let vimrplugin_screenvsplit = 1 " For vertical tmux split
   let g:ScreenShellInitialFocus = 'shell' 
   " instruct to use your own .screenrc file
   let g:vimrplugin_noscreenrc = 1
   let vimrplugin_conqueplugin = 0

    "colo tomorrow
    colo solarized
    se bg=light

autocmd FileType pandoc setlocal nonu
autocmd FileType tex setlocal formatoptions=nbcrq
autocmd FileType tex setlocal tw=79

let g:pandoc_use_hard_wraps = 0
let g:pandoc_auto_format = 0

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/

" launch Marked.app
nnoremap <leader>mk :silent !open -a Marked.app '%:p'<cr>

" Set colorscheme to solarized
colorscheme solarized
se bg=dark