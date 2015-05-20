" .vimrc file

set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/ScrollColors'
Plug 'scrooloose/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'vim-scripts/Vim-R-plugin'
Plug 'chriskempson/base16-vim'
Plug 'junegunn/goyo.vim', { 'on':  'Goyo' }
Plug 'reedes/vim-litecorrect'
"Plug 'vim-pandoc/vim-pandoc-syntax'
Plug '~/src/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc'
Plug 'mja/vim-stan'
Plug 'reedes/vim-wordy'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/limelight.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'
Plug 'romainl/Apprentice'
Plug 'wimstefan/Lightning'
"Plug 'whatyouhide/vim-lengthmatters'

call plug#end()

" Comma as leader and local leader:
let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","

" How I get into normal mode usually:
inoremap kj <Esc>
inoremap jj <Esc>

" Quickly edit or source this file:
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" When I let Vim write the current buffer I frequently mistype the
" command ":w" as ":W":
nmap :W :w

filetype on
filetype indent on

" ------------------------------------------------
" Searching preferences
" ------------------------------------------------
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
nnoremap <CR> :nohlsearch<CR>/<BS>

" map space to searching and back-searching
map <space> /

" ------------------------------------------------
" File browsing
" ------------------------------------------------
set wildmode=longest,list
set wildignore=*.o,*.obj,*.bak,*.exe,*.log,*.rel,*.swp,*.bbl
set wildmenu
" When pressing <leader>cd, switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>

" Make GUI File Open use current directory
set browsedir=buffer

" >fn inserts filename
" >fd inserts directory of current file
cmap >fn e <c-r>=expand('%:p')<cr>
cmap >fd e <c-r>=expand('%:p:h').'/'<cr>

set confirm

" ------------------------------------------------
" Visual setup
" ------------------------------------------------
syntax enable

set anti enc=utf-8 gfn=Menlo:h12
"set anti enc=utf-8 gfn=Inconsolata\ for\ Powerline:h16
"set anti enc=utf-8 gfn=Sauce\ Code\ Powerline:h14
"set anti enc=utf-8 gfn=Menlo\ for\ Powerline:h14
"set anti enc=utf-8 gfn=Inconsolata:h14
"set anti enc=utf-8 gfn=ConsolasforBBEdit:h14
"set anti enc=utf-8 gfn=Envy\ Code\ R:h12
"set anti enc=utf-8 gfn=Source\ Code\ Pro:h12
"set anti enc=utf-8 gfn=Helvetica:h12
"set anti enc=utf-8 gfn=AnonymousPro:h13
"set anti enc=utf-8 gfn=Cousine:h14
"set anti enc=utf-8 gfn=DejaVu\ Sans\ Mono:h13
"set anti enc=utf-8 gfn=Monaco:h10
"set noantialias

set linespace=2
set wmh=0

" http://www.derekwyatt.org/vim/the-vimrc-file/my-vimrc-file/
set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" get cursors right in iTerm2 tmux:
" https://gist.github.com/andyfowler/1195581
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
 else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set guioptions=ace
au GUIEnter * set lines=59 columns=84

" ------------------------------------------------
" General setup
" ------------------------------------------------
filetype plugin on

" Wrap only at word boundaries:
set lbr

set wrap
set showmode
set autoindent

" This setting prevents vi from making its annoying beeps when a command
" doesn't work. Instead, it briefly flashes the screen -- much less annoying.
set vb t_vb=".

set mousehide

" By default, vim doesn't let the cursor stray beyond the defined text. This
" setting allows the cursor to freely roam anywhere it likes in command mode.
set virtualedit=all

" backspacing over everything in insert mode
set bs=2 

" set to auto read when a file is changed from the outside
set autoread

" Change buffer, without saving
set hid

" Do not redraw, when running macros
set lazyredraw

" Ignore filename with any of these suffixes when using the ":edit" command.
set suffixes=.rel,.bak,.dvi,.gz,.idx,.log,.ps,.swp,.tar

" startofline:  no:  do not jump to first character with page
" commands, ie keep the cursor in the current column.
set nostartofline

" textmode:
set notextmode

" ttyfast: are we using a fast terminal?
set nottyfast

" ttyscroll: turn off scrolling -> faster!
set ttyscroll=10

" ------------------------------------------------
" Moving around
" ------------------------------------------------
" have the h and l cursor keys wrap between lines (like <Space> and <BkSpc> do
" by default), and ~ covert case over line breaks; also have the cursor keys
" wrap in insert mode:
set whichwrap=h,l,~,[,]

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"------------------------------------------------
" Spell checking
"------------------------------------------------
set spell
set spelllang=en_ca
set spellsuggest=9 "show only 9 suggestions for misspelled words
set dictionary+=~/.vim/dict/words
set dictionary+=/usr/share/dict/words
set thesaurus+=~/.vim/thesaurus/mthesaur.txt

" map control-z to choose the most likely replacement
nnoremap <C-x> 1z=

"------------------------------------------------
" Word completion
"------------------------------------------------
" tell complete to look in the dictionary
set complete-=k complete+=k

"------------------------------------------------
" Backups
"------------------------------------------------
set noswapfile
set nobackup
set nowb

"------------------------------------------------
" Folding
set foldmethod=manual   "to speed things up
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "don't fold by default

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make vim and normal clipboard sync
if has("gui_macvim")
  "set clipboard+=unnamed
  let macvim_hig_shift_movement = 1
endif

set clipboard=unnamed

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

" Make command line one line high
set ch=1

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2
"

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



" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=1

" visual shifting (builtin-repeat)
vnoremap < <gv
vnoremap > >gv

"smoother scrolling:
map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>

"I like gf to search recursively downwards from the current directory so I append ./** to my path like so
"set path+=./**
set path+=./**

" bibtex command to open pdf Awesome
"map gp yi{:!open ~/Papers/<C-r>"<cr><cr>

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
autocmd BufRead */temp/mutt-* call Fixflowed()

" nerdtree:
map <F1> :NERDTreeToggle<CR>

"The following trick is a really small one, but a super-efficient one, since it strips off two full keystrokes from almost every Vim command:
nnoremap ; :

" Normally don't automatically format 'text' as it is typed, only do this
" with comments, at 80 characters.
au BufNewFile,BufEnter *.c,*.h,*.java,*.jsp,*.R,*.r setlocal formatoptions-=t tw=80

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

" to make showmarks show up faster:
set updatetime=500

" so that crontab works:
au! BufNewFile,BufRead crontab.* set nobackup | set nowritebackup

" ------------------------------------------------
" Splits and window management
" ------------------------------------------------

" Easily resize splits:
if bufwinnr(1)
  map + <C-W>+
  map _ <C-W>-
endif

 " Quick jumping between splits
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set smartindent

nnoremap <localleader>mm :!make<CR><CR>

" ------------------------------------------------
" Pandoc
" -----------------------------------------------

" Underline the current line with '='
nmap <silent> ,u1 :t.\|s/./=/g\|set nohls<cr>
nmap <silent> ,u2 :t.\|s/./-/g\|set nohls<cr>

" custom pandoc tidy function:
"nnoremap <leader>mt mx:%!pandoc -t markdown -s --no-wrap --atx-headers<CR>`x

" If you are using soft-wrapping, this will tell Vim to show part
" of a long line that runs off the bottom of the screen:
setlocal display=lastline

" launch Marked.app
nnoremap <leader>mk :silent !open -a Marked.app '%:p'<cr>

let g:pandoc#syntax#conceal#use = 0
let g:pandoc_syntax_dont_use_conceal_for_rules = ["codeblock_start", "codeblock_delim"]
let g:pandoc#modules#disabled = ["folding"]
let g:pandoc#biblio#bibs = ["/Users/seananderson/Dropbox/tex/ref3.bib"]
let g:pandoc#biblio#use_bibtool = 1
"let g:pandoc#formatting#mode = "Ah"
let g:pandoc#formatting#mode = "s"

" ------------------------------------------------
" End Pandoc
" ------------------------------------------------

au BufRead,BufNewFile *.Rnw  set filetype=rnoweb.tex

autocmd BufEnter * silent! lcd %:p:h

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LaTeX
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType tex setlocal textwidth=78

nmap <leader>x :!latexmk %<CR><CR>
let g:LatexBox_Folding = 0
let g:LatexBox_fold_envs = 0
let g:LatexBox_fold_preamble = 0
let g:LatexBox_viewer = "open -a Skim"
map <silent> <Leader>ls :silent
                \ !/Applications/Skim.app/Contents/SharedSupport/displayline
                \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
                \ "%:p" <CR>
let g:LatexBox_latexmk_options
                \ = "-pdflatex='pdflatex -synctex=1 \%O \%S'" 

autocmd FileType tex setlocal formatoptions=nbcrq
autocmd FileType rnoweb.tex setlocal tw=80

autocmd FileType tex set spell
autocmd FileType rnoweb set spell

" By default, Vim will highlight chunk headers of RMarkdown and
" RreStructuredText with a single color. When the code is processed by knitr,
" chunk headers should contain valid R code and, thus, you may want to highlight
" them as such. You can do this by putting in your |vimrc|:
let rrst_syn_hl_chunk = 1
let rmd_syn_hl_chunk = 1

"set formatoptions=Bnawqorct
set listchars=tab:▸\ ,eol:¬
set nolist

"|nojoinspaces| allows you to use SHIFT-J in normal mode to join the next
"line with the current line without adding extra unwanted spaces.
setlocal nojoinspaces

" Preserve indentation while pasting text from the OS X clipboard
"noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" https://github.com/Lokaltog/vim-powerline
let g:ctrlp_cmd = 'CtrlPBuffer'

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

if version >= 730
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" move lines up or down easily:
nnoremap <silent> <leader>k :m-2<CR>==
nnoremap <silent> <leader>j :m+1<CR>==

set nohlsearch

" toggle line numbers:
" http://stackoverflow.com/questions/762515/vim-remap-key-to-toggle-line-numbering
nmap <f2> :set number! number?<cr>

nmap <localleader>w :update<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim R Plugin (keyword: stats)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " For tmux support
let g:ScreenImpl = 'Tmux'
let vimrplugin_vslplit = 1 " For vertical tmux split
let vimrplugin_assign = 0
let vimrplugin_assign_map = "_"
let r_indent_align_args = 0
let vimrplugin_vsplit = 1
let vimrplugin_latexcmd = "latexmk -pdf"
" clear console before sending
let vimrplugin_ca_ck = 1
" open pdf after knit or tex:
let vimrplugin_openpdf = 1
" autoopen html after knit
let vimrplugin_openhtml = 1
let vimrplugin_term_cmd = "/Applications/Utilities/iTerm.app/Contents/MacOS/iTerm -t R"
autocmd FileType r set nospell

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and aesthetics
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

se nu
set t_Co=16
let g:solarized_termcolors = 16
let g:solarized_visibility = "normal"
let g:solarized_contrast = "normal"
let g:solarized_termtrans = 1

" set background colour based on time of day:
"if strftime("%H") < 18
  "set background=light
"else
  "set background=dark
"endif

" The following beast will return the syntax highlighting group that the
" current "thing" under the cursor belongs to -- very useful for figuring out
" what to change as far as syntax highlighting goes.
nmap <silent> ,vc :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name")
     \ . '> trans<' . synIDattr(synID(line("."),col("."),0),"name")
     \ . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
     \ . ">"<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Assorted
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"http://stackoverflow.com/questions/356126/how-can-you-automatically-remove-trailing-whitespace-in-vim
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Quick commenting:
nmap <C-c> <Leader>c<space>

" wrap this sentence
nmap ,ws visJ0)i<CR><ESC>
nmap ,wq mxvip:s/\. /\.\r/g<CR>`x

" Toggle background:
call togglebg#map("<F5>")

" Fold toggle:
nnoremap <C-f> za

autocmd VimEnter * autocmd FileType rnoweb set tw=80
autocmd VimEnter * autocmd FileType r set tw=80
autocmd VimEnter * autocmd FileType rnoweb setlocal formatoptions=nbcrq
autocmd VimEnter * autocmd FileType mail set tw=72
autocmd FileType mail setlocal formatoptions=tcql
autocmd FileType mail set noai
autocmd FileType mail set expandtab
autocmd FileType mail set spell

set cc=0
set nocursorline

" Strip tailing whitespace on save:
autocmd BufWritePre *.r :%s/\s\+$//e
autocmd BufWritePre *.R :%s/\s\+$//e
autocmd BufWritePre *.tex :%s/\s\+$//e
autocmd BufWritePre *.Rnw :%s/\s\+$//e
" "autocmd BufWritePre *.md :%s/\s\+$//e
" autocmd BufWritePre *.Rmd :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e

"http://stackoverflow.com/questions/356126/how-can-you-automatically-remove-trailing-whitespace-in-vim
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType tex,Rnw,c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

if has('gui_running')
  set background=dark
  set transparency=0
else
  set background=dark
endif

autocmd VimEnter * autocmd FileType r se fo+=roc

" GitGutter plugin:
highlight clear SignColumn

let vimrplugin_term_cmd = "/Applications/Utilities/iTerm.app/Contents/MacOS/iTerm -t R"

set tags+=./tags;$HOME

set shell=/bin/bash
"nnoremap <bs> :Ack! '\b<c-r><c-w>\b'<cr>

" http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" " http://stackoverflow.com/questions/2447109/showing-a-different-background-colour-in-vim-past-80-characters
" " In Vim >= 7.3, also highlight columns 120+
" if exists('+colorcolumn')
"   " (I picked 120-320 because you have to provide an upper bound and 320 just
"   "  covers a 1080p GVim window in Ubuntu Mono 11 font.)
"   let &colorcolumn="80,".join(range(120,320),",")
" else
"   " fallback for Vim < v7.3
"   autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" endif

let g:vim_markdown_folding_disabled=0

set modeline
let g:gitgutter_enabled = 0

" Ecology letters style .bbl file
" let @e = "yiw }\n0okjp0xa.\\kj0"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader magic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Type leader o to open a new file:
nnoremap <Leader>o :CtrlP<CR>
"Type leader w to save file (a lot faster than :w<Enter>):
nnoremap <Leader>w :w<CR>

"Copy & paste to system clipboard with <Space>p and <Space>y:
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

"Enter visual line mode with <Space><Space>:
nmap <Leader><Leader> V

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enabling plugins on various file types
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup litecorrect
  autocmd!
  autocmd FileType markdown,mkd call litecorrect#init()
  autocmd FileType tex call litecorrect#init()
augroup END

" speed up syntax highlighting, especially tex
syn sync maxlines=100
syn sync minlines=15
" let g:tex_fast= "M" " see :h tex-slow
" let g:tex_fast= "" " see :h tex-slow

" re-wrap paragraph with Q and jump back to where I was:
nmap Q mxgqap`x

" ------------------------------------------------
" Speed
" ------------------------------------------------
"speed things up:
set synmaxcol=1000
set ttyfast
set lazyredraw
set nocursorline
set nocursorcolumn 

" ------------------------------------------------
" Writing
" ------------------------------------------------

"autocmd FileType pandoc setlocal formatoptions=lntqc
"autocmd FileType pandoc setlocal autoindent
autocmd FileType tex setlocal formatoptions=lntqc
autocmd FileType tex setlocal autoindent
autocmd FileType tex setlocal foldmethod=manual
nmap <C-Q> :setlocal formatoptions+=a<CR>
nmap <C-q> :setlocal formatoptions-=a<CR>

" ------------------------------------------------
" Open help in new tabs
" https://github.com/junegunn/dotfiles/blob/master/vimrc
" ------------------------------------------------
function! s:helptab()
  if &buftype == 'help'
    execute "normal! \<C-W>T"
    nnoremap <buffer> q :q<cr>
  endif
endfunction

augroup vimrc_help
  autocmd!
  autocmd BufEnter *.txt call s:helptab()
augroup END

" ------------------------------------------------
" Goyo
" ------------------------------------------------
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  "set scrolloff=10
  "Limelight
  set fullscreen
  "set background=light
  set linespace=4
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  "set scrolloff=5
  "Limelight!
  set nofullscreen
  "set background=dark
  set linespace=2
endfunction

autocmd! User GoyoEnter
autocmd! User GoyoLeave
autocmd  User GoyoEnter nested call <SID>goyo_enter()
autocmd  User GoyoLeave nested call <SID>goyo_leave()

let g:goyo_margin_top=1
let g:goyo_margin_bottom=1
nnoremap <Leader>G :Goyo<CR>

" ------------------------------------------------
" Miscellaneous 
" ------------------------------------------------

" Title case:
vmap ,T :s/\<\(.\)\(\k*\)\>/\u\1\L\2/g<CR><CR>
vmap ,t :s/\<\(.\)\(\k*\)\>/\l\1\L\2/g<CR><CR>

"colo base16-flat
"colo base16-grayscale
"se bg=light
se bg=light
colo solarized
"colo base16-ocean
"colo seoul256


" ------------------------------------------------
" vim-wordy
" ------------------------------------------------

nnoremap <silent> K :NextWordy<cr>

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" if has("autocmd")
"   let pandoc_pipeline  = "pandoc --no-wrap --from=latex --to=markdown"
"   "autocmd FileType html let &formatprg=pandoc_pipeline
"   let &formatprg=pandoc_pipeline
" endif
