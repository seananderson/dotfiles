" vim: set foldmethod=marker foldlevel=1:

" ============================================================================
" VIM-PLUG BLOCK {{{
" ============================================================================

call plug#begin('~/.vim/plugged')

" Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'ervandew/supertab'
Plug 'lervag/vimtex'
Plug 'tommcdo/vim-lion'
if has("nvim")
  " Plug 'SirVer/ultisnips'
  " Plug 'SirVer/ultisnips'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " Plug 'ervandew/supertab'
  Plug 'Shougo/neosnippet.vim' " Snippets
  " Plug 'Shougo/neosnippet-snippets'
endif
" Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp'], 'do': function('BuildYCM') }
Plug 'Xuyuanp/nerdtree-git-plugin',    { 'on': 'NERDTreeToggle' }
Plug 'altercation/vim-colors-solarized'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim', { 'on':  'Goyo' }
Plug 'junegunn/gv.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align',       { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
Plug 'justinmk/vim-gtfo'
Plug 'kchmck/vim-coffee-script'
Plug 'mbbill/undotree',             { 'on': 'UndotreeToggle'   }
Plug 'mja/vim-stan'
Plug 'mllg/vim-devtools-plugin'
Plug 'morhetz/gruvbox'
Plug 'reedes/vim-litecorrect'
Plug 'reedes/vim-wordy'
Plug 'chrisbra/csv.vim'
Plug 'romainl/Apprentice'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tomasr/molokai'
Plug 'tpope/vim-commentary',
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-scripts/ScrollColors'
Plug 'maxbrunsfeld/vim-yankstack'
Plug '~/src/base16-vim'
" Plug 'base16-vim'
" Plug 'scrooloose/syntastic'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-scripts/moria'
Plug 'vim-scripts/xoria256.vim'
" if v:version >= 703
  " Plug 'majutsushi/tagbar',
  " Plug 'mhinz/vim-signify'
Plug 'kshenoy/vim-signature'
" endif
" Plug 'craigemery/vim-autotag'
if has("nvim")
  " Plug 'ludovicchabant/vim-gutentags'
endif
if has('nvim')
  " Plug 'jalvesaq/Nvim-R'
  Plug '~/src/Nvim-R'
else
  Plug 'jcfaria/Vim-R-plugin'
endif
Plug 'romainl/flattened'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'cocopon/iceberg.vim'
Plug 'jacoborus/tender.vim'
Plug 'airblade/vim-gitgutter'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" Plug 'unblevable/quick-scope', {'on': 'QuickScopeToggle'}
Plug 'justinmk/vim-sneak'
" Plug 'Raimondi/delimitMate'
" Plug 'rhysd/clever-f.vim'
" Plug 'taglist.vim'
" Plug 'chrisbra/Colorizer'
" Plug 'joshdick/onedark.vim'
" Plug 'junegunn/vim-xmark'
" Plug 'mattn/gist-vim'
" Plug 'reedes/vim-pencil'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0ng/vim-hybrid'
" Plug 'whatyouhide/vim-lengthmatters'
Plug 'ayu-theme/ayu-vim' " or other package manager

call plug#end()

" }}}
" ============================================================================
" BASIC SETTINGS {{{
" ============================================================================

" https://github.com/maxbrunsfeld/vim-yankstack
" must happen before any other yank related mappings:
call yankstack#setup()

" Comma as leader and local leader:
let mapleader = ","
let maplocalleader = ","
nnoremap <F6> ,

inoremap kj <Esc>

" ----------------------------------------------------------------------------
" Buffers
" ----------------------------------------------------------------------------
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>

" ----------------------------------------------------------------------------
" Tabs
" ----------------------------------------------------------------------------
nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>

" Quickly edit or source this file:
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap <silent> <leader>ea :e /Volumes/MacroSystem/<CR>
nnoremap :W :w

" ----------------------------------------------------------------------------
" Status line
" ----------------------------------------------------------------------------
" https://github.com/junegunn/dotfiles/blob/master/vimrc
" %< Where to truncate
" %n buffer number
" %F Full path
" %m Modified flag: [+], [-]
" %r Readonly flag: [RO]
" %y Type:          [vim]
" fugitive#statusline()
" %= Separator
" %-14.(...)
" %l Line
" %c Column
" %V Virtual column
" %P Percentage
" %#HighlightGroup#
set statusline=%<[%n]\ %F\ %m%r%y\ %{exists('g:loaded_fugitive')?fugitive#statusline():''}\ %=%-14.(%l,%c%V%)\ %P

filetype on
filetype indent on

set formatoptions+=1
if has('patch-7.3.541')
  set formatoptions+=j
endif
" if has('patch-7.4.338')
"   let &showbreak = '↳ '
"   set breakindent
"   set breakindentopt=sbr
" endif

" ----------------------------------------------------------------------------
" Searching preferences
" ----------------------------------------------------------------------------
set incsearch
set ignorecase
set smartcase
set scrolloff=5
set sidescrolloff=5
set display+=lastline
set showmatch
set nohls "enable highlight when searching
set iskeyword+=:,_,-

" Clears search highlighting by just hitting a return.
" nnoremap <CR> :nohlsearch<CR>/<BS>

nnoremap <space> /

" ----------------------------------------------------------------------------
" File browsing
" ----------------------------------------------------------------------------
set wildmode=longest,list:longest
set wildignore=*.o,*.obj,*.bak,*.exe,*.log,*.rel,*.swp,*.bbl
set wildmenu
" When pressing <leader>cd, switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>
" Make GUI File Open use current directory
set browsedir=buffer
set confirm
syntax enable

" Save
" inoremap <C-s>     <C-O>:update<cr>
nnoremap <C-s>     :update<cr>
nnoremap <leader>s :update<cr>
" nnoremap <leader>w :update<cr>

" Quit
inoremap <C-Q>     <esc>:q<cr>
nnoremap <C-Q>     :q<cr>
vnoremap <C-Q>     <esc>

" <F10> | NERD Tree
nnoremap <F10> :NERDTreeToggle<cr>

" <F9> | Tagbar
if v:version >= 703
  inoremap <F9> <esc>:TagbarToggle<cr>
  nnoremap <F9> :TagbarToggle<cr>
  let g:tagbar_sort = 0
endif

if has('gui_running')
  "set anti enc=utf-8 gfn=Menlo:h12
  "set anti enc=utf-8 gfn=Inconsolata\ for\ Powerline:h14
  "set anti enc=utf-8 gfn=Sauce\ Code\ Powerline:h14
  "set anti enc=utf-8 gfn=Menlo\ for\ Powerline:h14
  "set anti enc=utf-8 gfn=Inconsolata:h14
  "set anti enc=utf-8 gfn=ConsolasforBBEdit:h12
  "set anti enc=utf-8 gfn=Consolas:h14
  "set anti enc=utf-8 gfn=Envy\ Code\ R:h12
  "set anti enc=utf-8 gfn=Source\ Code\ Pro:h12
  "set anti enc=utf-8 gfn=AnonymousPro:h13
  "set anti enc=utf-8 gfn=Cousine:h14
  "set anti enc=utf-8 gfn=DejaVu\ Sans\ Mono:h13
endif

set linespace=3
set wmh=0

" ----------------------------------------------------------------------------
"
" ----------------------------------------------------------------------------
" http://www.derekwyatt.org/vim/the-vimrc-file/my-vimrc-file/
set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" " get cursors right in iTerm2 tmux:
" " https://gist.github.com/andyfowler/1195581
" " if exists('$TMUX')
     let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
     let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"  " else
"     " let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"     " let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" " endif

" http://blog.terriblelabs.com/blog/2013/02/09/stupid-vim-tricks-how-to-change-insert-mode-cursor-shape-with-tmux/
" set the cursor to a vertical line in insert mode and a solid block
" in command mode
" let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
" let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

set guioptions=acer
" au GUIEnter * set lines=59 columns=84

filetype plugin on

" Wrap only at word boundaries:
set lbr

set nowrap
set showmode
set autoindent

set mousehide

" By default, vim doesn't let the cursor stray beyond the defined text. This
" setting allows the cursor to freely roam anywhere it likes in command mode.
set virtualedit=all

" backspacing over everything in insert mode
set bs=2

" set to auto read when a file is changed from the outside
set autoread
set autowrite

" Change buffer, without saving
set hid

" Ignore filename with any of these suffixes when using the ":edit" command.
set suffixes=.rel,.bak,.dvi,.gz,.idx,.log,.ps,.swp,.tar

" startofline:  no:  do not jump to first character with page
" commands, ie keep the cursor in the current column.
set nostartofline

if !has('nvim')
  " textmode:
  set notextmode

  " ttyfast: are we using a fast terminal?
  set nottyfast

 " ttyscroll: turn off scrolling -> faster!
  set ttyscroll=10

" This setting prevents vi from making its annoying beeps when a command
" doesn't work. Instead, it briefly flashes the screen -- much less annoying.
  set vb t_vb=".

endif

" ------------------------------------------------
" Moving around
" ------------------------------------------------
" have the h and l cursor keys wrap between lines (like <Space> and <BkSpc> do
" by default), and ~ covert case over line breaks; also have the cursor keys
" wrap in insert mode:
set whichwrap=h,l,~,[,]

" nnoremap j gj
" nnoremap k gk
" vnoremap j gj
" vnoremap k gk

"------------------------------------------------
" Spell checking
"------------------------------------------------
set nospell
set spelllang=en_ca
set spellsuggest=8 "show only 8 suggestions for misspelled words
set dictionary+=~/.vim/dict/words
set dictionary+=/usr/share/dict/words
set thesaurus+=~/.vim/thesaurus/mthesaur.txt

" map control-x to choose the most likely replacement
nnoremap <C-x> 1z=

"------------------------------------------------
" Backups
"------------------------------------------------
set noswapfile
set nobackup
set nowb

"------------------------------------------------
" Folding
"------------------------------------------------
set foldmethod=manual   "to speed things up
set foldnestmax=2       "deepest fold is 2 levels
set foldlevelstart=99

"------------------------------------------------
" Clipboard
"------------------------------------------------
" make vim and normal clipboard sync
if has("gui_macvim")
  "set clipboard+=unnamed
  let macvim_hig_shift_movement = 1
endif

" set clipboard=unnamed

set synmaxcol=1000
set hidden
set laststatus=2
set showcmd
set showmode
set timeoutlen=500

" vimsensible:
if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Search the current file for the word under the cursor and display matches
nmap <silent> ,gw
     \ :vimgrep /<C-r><C-w>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:set nohls<CR>

" Search the current file for the WORD under the cursor and display matches
nmap <silent> ,gW
     \ :vimgrep /<C-r><C-a>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:set nohls<CR>

set ruler

"smoother scrolling:
map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>

" search recursively downwards from the current directory append ./** to path
set path+=./**

" bibtex command to open pdf Awesome
" map gp yi{:!open ~/Papers/<C-r>"<cr><cr>

" nerdtree:
map <F1> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.so$']

" because my leader
nnoremap K ,

" Normally don't automatically format 'text' as it is typed, only do this
" with comments, at 80 characters.
" au BufNewFile,BufEnter *.c,*.h,*.java,*.jsp,*.R,*.r,*.Rmd setlocal formatoptions=t tw=78

" au BufNewFile,BufEnter *.md,*.markdown setlocal tw=78
" au BufNewFile,BufEnter *.md,*.markdown setlocal wrap

" to make showmarks show up faster:
set updatetime=500

" ------------------------------------------------
" Splits and window management
" ------------------------------------------------
 " Quick jumping between splits
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

" Easily resize splits:
if bufwinnr(1)
  map + <C-W>+
  map _ <C-W>-
endif

set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set smartindent
set smarttab
set nrformats-=octal

nnoremap <localleader>mm :!make<CR><CR>

" autocmd BufEnter * silent! lcd %:p:h

" ----------------------------------------------------------------------------
" <leader>bs | buf-search
" ----------------------------------------------------------------------------
nnoremap <leader>bs :cex []<BAR>bufdo vimgrepadd @@g %<BAR>cw<s-left><s-left><right>

" ------------------------------------------------
" Pandoc
" -----------------------------------------------
" custom pandoc tidy function:
"nnoremap <leader>mt mx:%!pandoc -t markdown -s --no-wrap --atx-headers<CR>`x

" If you are using soft-wrapping, this will tell Vim to show part
" of a long line that runs off the bottom of the screen:
setlocal display+=lastline

let g:pandoc#formatting#textwidth = 78
let g:pandoc#syntax#conceal#use = 0
let g:pandoc_syntax_dont_use_conceal_for_rules = ["codeblock_start", "codeblock_delim"]
let g:pandoc#modules#disabled = ["folding"]
" let g:pandoc#biblio#bibs = ["/Users/seananderson/Dropbox/tex/ref3.bib"]
let g:pandoc#biblio#use_bibtool = 1
" let g:pandoc#formatting#mode = "hA"
let g:pandoc#formatting#smart_autoformat_on_cursormoved = 1
let g:pandoc#formatting#mode = "s"
" au BufNewFile,BufEnter *.Rmd let g:pandoc#formatting#mode = "s"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LaTeX
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd FileType tex setlocal textwidth=78
au BufRead,BufNewFile *.Rnw  set filetype=rnoweb.tex

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
autocmd FileType tex setlocal tw=80
autocmd FileType rnoweb set spell

" By default, Vim will highlight chunk headers of RMarkdown and
" RreStructuredText with a single color. When the code is processed by knitr,
" chunk headers should contain valid R code and, thus, you may want to highlight
" them as such. You can do this by putting in your |vimrc|:
let rrst_syn_hl_chunk = 1
let rmd_syn_hl_chunk = 1

"|nojoinspaces| allows you to use SHIFT-J in normal mode to join the next
"line with the current line without adding extra unwanted spaces.
setlocal nojoinspaces

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>o :set paste<CR>:put  *<CR>:set nopaste<CR>

" let g:ctrlp_cmd = 'CtrlPBuffer'
" let g:ctrlp_by_filename = 1
"
nmap <C-p> :Buffers<CR>

" Keep undo history across sessions, by storing in file
if version >= 703
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups//,.
  set undofile
endif

" move lines up or down easily:
nnoremap <silent> <leader>k :m-2<CR>==
nnoremap <silent> <leader>j :m+1<CR>==

" toggle line numbers:
" http://stackoverflow.com/questions/762515/vim-remap-key-to-toggle-line-numbering
nnoremap <f2> :set number! number?<cr>


" ----------------------------------------------------------------------------
" Colors and aesthetics
" ----------------------------------------------------------------------------

se nu
set t_Co=16
let g:solarized_termcolors = 16
let g:solarized_visibility = "normal"
let g:solarized_contrast = "normal"
let g:solarized_termtrans = 1
if $TERM == "xterm-256color"
  set t_Co=256
endif

" The following beast will return the syntax highlighting group that the
" current "thing" under the cursor belongs to -- very useful for figuring out
" what to change as far as syntax highlighting goes.
nmap <silent> ,vc :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name")
     \ . '> trans<' . synIDattr(synID(line("."),col("."),0),"name")
     \ . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
     \ . ">"<CR>

" ----------------------------------------------------------------------------
" Assorted
" ----------------------------------------------------------------------------

set runtimepath^=~/.vim/bundle/ctrlp.vim

" quick commenting:
nmap <C-c> gcc

" wrap this sentence
nmap ,ws visJ0)i<CR><ESC>
nmap ,wq mxvip:s/\. /\.\r/g<CR>`x

" Toggle background:
call togglebg#map("<F5>")

" Fold toggle:
nnoremap <C-f> za

autocmd VimEnter * autocmd FileType rnoweb set tw=78
autocmd VimEnter * autocmd FileType r set tw=78
autocmd VimEnter * autocmd FileType rnoweb setlocal formatoptions=nbcrq
autocmd VimEnter * autocmd FileType mail set tw=72
autocmd VimEnter * autocmd FileType mail setlocal comments+=nb:>
autocmd FileType mail setlocal formatoptions=tcq
autocmd FileType mail set noai
autocmd FileType mail set expandtab
autocmd FileType mail set spell
" http://unix.stackexchange.com/questions/166814/getting-vim-to-go-to-the-first-line-and-enter-insert-mode-when-writing-an-email
" I needed two autocmds to do this. To reach the gap between the headers and the message, search for an empty line:
autocmd BufRead *mutt-* execute "normal /^$/\n"
autocmd BufRead *mutt-* execute "normal 2o"
autocmd BufRead *mutt-* execute "normal k"
" autocmd BufRead *mutt-* execute 'normal gg/\n\n\n^M2j'
" then to enter insert mode:
autocmd BufRead *mutt-* execute ":startinsert"

" Tip: Place the cursor in the optimal position, editing email messages.
" Author: Davide Alberani
" Version: 0.1
" Date: 24 May 2006
" Description: if you use Vim to edit your emails, having to manually
" move the cursor to the right position can be quite annoying.
" This command will place the cursor (and enter insert mode)
" in the more logical place: at the Subject header if it's
" empty or at the first line of the body (also taking
" care of the attribution, to handle replies messages).
" Usage: I like to call the Fip command by setting the command that is used
" by my mail reader (mutt) to execute Vim. E.g. in my muttrc I have:
" set editor="vim -c ':Fip'"
" Obviously you can prefer to call it using an autocmd:
" " Modify according to your needs and put this in your vimrc:
" au BufRead mutt* :Fip
" Hints: read the comments in the code and modify it according to your needs.
" Keywords: email, vim, edit, reply, attribution, subject, cursor, place.

" Function used to identify where to place the cursor, editing an email.
" function FirstInPost (...) range
"   let cur = a:firstline
"   while cur <= a:lastline
"     let str = getline(cur)
"     " Found an _empty_ subject in the headers.
"     " NOTE: you can put similar checks to handle other empty headers
"     " like To, From, Newgroups, ...
"     if str == 'Subject: '
"       execute cur
"       :start!
"       break
"     endif
"     " We have reached the end of the headers.
"     if str == ''
"       let cur = cur + 1
"       " If the first line of the body is an attribution, put
"       " the cursor _after_ that line, otherwise the cursor is
"       " leaved right after the headers (assuming we're writing
"       " a new mail, and not editing a reply).
"       " NOTE: modify the regexp to match your mail client's attribution!
"       if strlen(matchstr(getline(cur), '^On.*wrote:.*')) > 0
"         let cur = cur - 1
"       endif
"       execute cur
"       :start
"     endif
"     let cur = cur + 1
"   endwhile
"   normal o
"   normal O
" endfunction
"
" Command to be called.
" com Fip :set tw=0<Bar>:%call FirstInPost()
" au BufRead *mutt-* :Fip

set cc=0

"http://stackoverflow.com/questions/356126/how-can-you-automatically-remove-trailing-whitespace-in-vim
" autocmd BufWritePre *.py :%s/\s\+$//e
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

" autocmd FileType vim,r,rmd,tex,Rnw,c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" set tags+=./tags;$HOME
" set tags+=./tags
set tags=./tags

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

" Ecology letters style .bbl file
" let @e = "yiw }\n0okjp0xa.\\kj0"

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
set ttyfast
set lazyredraw
set nocursorcolumn
set nocursorline

" ------------------------------------------------
" Writing
" ------------------------------------------------

"autocmd FileType pandoc setlocal formatoptions=lntqc
"autocmd FileType pandoc setlocal autoindent
autocmd FileType tex setlocal formatoptions=lntqc
autocmd FileType tex setlocal autoindent
autocmd FileType tex setlocal foldmethod=manual

" ------------------------------------------------
" Open help in new tabs
" https://github.com/junegunn/dotfiles/blob/master/vimrc
" ------------------------------------------------
" function! s:helptab()
"   if &buftype == 'help'
"     execute "normal! \<C-W>T"
"     nnoremap <buffer> q :q<cr>
"   endif
" endfunction

" augroup vimrc_help
"   autocmd!
"   autocmd BufEnter *.txt call s:helptab()
" augroup END

" ------------------------------------------------
" Goyo
" ------------------------------------------------
" function! s:goyo_enter()
"   set noshowmode
"   set noshowcmd
"   set scrolloff=5
"   Limelight
"   " set fullscreen
"   "set background=light
"   set linespace=4
" endfunction
"
" function! s:goyo_leave()
"   set showmode
"   set showcmd
"   set scrolloff=2
"   Limelight!
"   " set nofullscreen
"   "set background=dark
"   set linespace=2
" endfunction
"
" autocmd! User GoyoEnter
" autocmd! User GoyoLeave
" autocmd  User GoyoEnter nested call <SID>goyo_enter()
" autocmd  User GoyoLeave nested call <SID>goyo_leave()
"
let g:goyo_margin_top=1
let g:goyo_margin_bottom=1
nnoremap <Leader>G :Goyo<CR>

" ------------------------------------------------
" Miscellaneous
" ------------------------------------------------

" Title case:
vmap ,T :s/\<\(.\)\(\k*\)\>/\u\1\L\2/g<CR><CR>
vmap ,t :s/\<\(.\)\(\k*\)\>/\l\1\L\2/g<CR><CR>

" ------------------------------------------------
" vim-wordy
" ------------------------------------------------

" nnoremap <silent> K :NextWordy<cr>

" if has("autocmd")
"   let pandoc_pipeline  = "pandoc --no-wrap --from=latex --to=markdown"
"   "autocmd FileType html let &formatprg=pandoc_pipeline
"   let &formatprg=pandoc_pipeline
" endif
"
map <Esc>[B <Down>

" set list                        " Highlight white-space characters
" set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " but only the ones we don't want
au FileType gitcommit set textwidth=72 " Override the line length for git commits


let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" colorscheme base16-railscasts
" colorscheme base16-mocha
if has('gui_running')
  set guifont=Menlo\ for\ Powerline:h13
  " silent! colo seoul256-light
  " set bg=dark
  " set bg=dark
  " silent! colo solarized
  silent! colo seoul256
  " silent! colo flattened_light
else
  " let g:seoul256_background = 237 " 233:239, 237
" "   Range:   252 (darkest) ~ 256 (lightest)
" "   Default: 253
  " let g:seoul256_light_background = 255
  " silent! colo seoul256-light
  " silent! colo deep-space
  " let g:airline_theme = 'deep_space'
  let g:deepspace_italics=1
  silent! colo seoul256
  " silent! colo base16-tomorrow
  " set bg=dark
  silent! colo flattened_light
  " silent! colo gruvbox
  set guifont=Menlo\ for\ Powerline:h13
endif
" colorscheme gruvbox
" colorscheme base16-ocean
" colorscheme base16-ateliersulphurpool

" augroup pencil
"   autocmd!
"   autocmd FileType markdown,mkd,rmd,pandoc,tex call pencil#init()
"   autocmd FileType markdown,mkd,rmd,pandoc,tex setlocal wrap
" augroup END highlight
" let g:pencil#wrapModeDefault = 'hard'   " default is 'hard'
" let g:pencil#conceallevel = 0
" let g:pencil#textwidth = 78

noremap Y y$
" https://github.com/tpope/vim-sensible/issues/28
" inoremap <CR> <C-G>u<CR>

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif
inoremap <C-U> <C-G>u<C-U>

set list
set listchars=tab:\|\ ,
" if has('path_extra')
"   setglobal tags-=./tags tags-=./tags; tags^=./tags;
" endif
"
" if (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8') && version >= 700
"   let &listchars = "tab:\u21e5\u00b7,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
"   let &fillchars = "vert:\u259a,fold:\u00b7"
" else
"   set listchars=tab:>\ ,trail:-,extends:>,precedes:<
" endif
" set list

" set fileformats=unix,dos,mac
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set rnu
set gdefault

    let g:EasyMotion_use_upper = 0
    let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
" " Type Enter or Space key and jump to first match (first letter of |g:EasyMotion_keys| ):
"     let g:EasyMotion_enter_jump_first = 1
"     let g:EasyMotion_space_jump_first = 1
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

let g:sneak#s_next = 1
let g:gtfo#terminals = { 'mac' : 'iterm' }
" 1 : Case sensitivity is determined by 'ignorecase' and 'smartcase'.:
let g:sneak#use_ic_scs = 1

" https://www.reddit.com/r/vim/comments/4d6q0s/weekly_vim_tips_and_tricks_thread_4/d1o9it8
for char in [ '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+', '%', '`' ]
    execute 'xnoremap i' . char . ' :<C-u>normal! T' . char . 'vt' . char . '<CR>'
    execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
    execute 'xnoremap a' . char . ' :<C-u>normal! F' . char . 'vf' . char . '<CR>'
    execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor
" http://vi.stackexchange.com/questions/2846/how-to-set-up-vim-to-work-with-one-sentence-per-line
" function! MyFormatExpr(start, end)
"     silent execute a:start.','.a:end.'s/[.!?]\zs /\r/g'
" endfunction

" set formatexpr=MyFormatExpr(v:lnum,v:lnum+v:count-1)
" function AddSentenceMaps()
"   imap .<Space> .<CR>
"   imap !<Space> !<CR>
"   imap ?<Space> ?<CR>
" nmap <leader>gq vipJ:s/\\([.!?]\\)\\s\\+/\\1<CR>/g<CR>
" endfunction
"
nmap <leader>q <plug>(QuickScopeToggle)
vmap <leader>q <plug>(QuickScopeToggle)
" ----------------------------------------------------------------------------
" undotree
" ----------------------------------------------------------------------------
let g:undotree_WindowLayout = 2
nnoremap U :UndotreeToggle<CR>


" ----------------------------------------------------------------------------
" Help in new tabs
" ----------------------------------------------------------------------------
" https://github.com/junegunn/dotfiles/blob/master/vimrc"
function! s:helptab()
  if &buftype == 'help'
    wincmd T
    nnoremap <buffer> q :q<cr>
  endif
endfunction

augroup vimrc_help
  autocmd!
  autocmd BufEnter *.txt call s:helptab()
augroup END

set formatlistpat+=\\\|^\\*\\s*

" }}}
" ============================================================================
" FUNCTIONS & COMMANDS {{{
" ============================================================================
"http://stackoverflow.com/questions/356126/how-can-you-automatically-remove-trailing-whitespace-in-vim
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

" ----------------------------------------------------------------------------
" :Chomp
" ----------------------------------------------------------------------------
command! Chomp %s/\s\+$// | normal! ``

" ----------------------------------------------------------------------------
" :Root | Change directory to the root of the Git repository
" ----------------------------------------------------------------------------
function! s:root()
  let root = systemlist('git rev-parse --show-toplevel')[0]
  if v:shell_error
    echo 'Not in git repo'
  else
    execute 'lcd' root
    echo 'Changed directory to: '.root
  endif
endfunction
command! Root call s:root()

" ----------------------------------------------------------------------------
" HL | Find out syntax group
" ----------------------------------------------------------------------------
function! s:hl()
  " echo synIDattr(synID(line('.'), col('.'), 0), 'name')
  echo join(map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")'), '/')
endfunction
command! HL call <SID>hl()

" ----------------------------------------------------------------------------
" Todo
" ----------------------------------------------------------------------------
function! s:todo() abort
  let entries = []
  for cmd in ['git grep -n -e TODO -e FIXME -e XXX 2> /dev/null',
            \ 'grep -rn -e TODO -e FIXME -e XXX * 2> /dev/null']
    let lines = split(system(cmd), '\n')
    if v:shell_error != 0 | continue | endif
    for line in lines
      let [fname, lno, text] = matchlist(line, '^\([^:]*\):\([^:]*\):\(.*\)')[1:3]
      call add(entries, { 'filename': fname, 'lnum': lno, 'text': text })
    endfor
    break
  endfor

  if !empty(entries)
    call setqflist(entries)
    copen
  endif
endfunction
command! Todo call s:todo()

" ----------------------------------------------------------------------------
" <Leader>?/! | Google it / Feeling lucky
" ----------------------------------------------------------------------------
function! s:goog(pat, lucky)
  let q = '"'.substitute(a:pat, '["\n]', ' ', 'g').'"'
  let q = substitute(q, '[[:punct:] ]',
       \ '\=printf("%%%02X", char2nr(submatch(0)))', 'g')
  call system(printf('open "https://www.google.com/search?%sq=%s"',
                   \ a:lucky ? 'btnI&' : '', q))
endfunction

nnoremap <leader>? :call <SID>goog(expand("<cWORD>"), 0)<cr>
nnoremap <leader>! :call <SID>goog(expand("<cWORD>"), 1)<cr>
xnoremap <leader>? "gy:call <SID>goog(@g, 0)<cr>gv
xnoremap <leader>! "gy:call <SID>goog(@g, 1)<cr>gv


" }}}
" ============================================================================
" PLUGINS {{{
" ============================================================================

" ----------------------------------------------------------------------------
"  UltiSnips
" ----------------------------------------------------------------------------

" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


" ----------------------------------------------------------------------------
" fzf
" ----------------------------------------------------------------------------
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \ }

" ----------------------------------------------------------------------------
" Tagbar
" ----------------------------------------------------------------------------
let g:tagbar_type_pandoc = {
    \ 'ctagstype' : 'pandoc',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }
let g:tagbar_type_rmd = {
    \ 'ctagstype' : 'rmd',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3',
        \ 'f:Functions',
        \ 'g:GlobalVariables',
        \ 'v:FunctionVariables',
    \ ]
\ }
let g:tagbar_type_r = {
    \ 'ctagstype' : 'r',
    \ 'kinds'     : [
        \ 'f:Functions',
        \ 'g:GlobalVariables',
        \ 'v:FunctionVariables',
    \ ]
\ }
let g:tagbar_show_linenumbers = 2

" ----------------------------------------------------------------------------
" Syntastic
" ----------------------------------------------------------------------------
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" let g:syntastic_enable_r_lintr_checker = 1
" let g:syntastic_r_checkers = 1
" let g:syntastic_r_lintr_linters = "with_defaults(line_length_linter(80))"


" ----------------------------------------------------------------------------
" nvim-r
" ----------------------------------------------------------------------------
let R_assign = 0
let vimrplugin_assign = 0
let vimrplugin_assign_map = "_"
let r_indent_align_args = 0
let vimrplugin_latexcmd = "latexmk -pdf"
" open pdf after knit or tex:
let vimrplugin_openpdf = 1
" autoopen html after knit
let vimrplugin_openhtml = 1
autocmd FileType r set nospell
let R_start_libs = "base,stats,graphics,grDevices,utils,methods,dplyr,ggplot2,reshape2,purrr,devtools,readr" " default highlighting
" clear console before sending
let R_clear_line = 1
let rout_follow_colorscheme = 1
nmap <CR> <Plug>RDSendLine
" autocmd filetype r inoremap $ $<C-X><C-O>
" autocmd filetype rmd inoremap @ @<C-X><C-O>

" start R in the same working directory as vim:
let R_nvim_wd = 1
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
set smartindent

nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste


" ----------------------------------------------------------------------------
" vimtex
" ----------------------------------------------------------------------------

let g:tex_flavor = 'latex'
if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
      \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
      \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
      \ 're!\\hyperref\[[^]]*',
      \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
      \ 're!\\(include(only)?|input){[^}]*',
      \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
      \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
      \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
      \ ]

" Use deoplete.
" c
" let g:deoplete#enable_at_startup = 1

" " <TAB>: completion.
" " https://github.com/Shougo/neocomplete.vim/issues/32#issuecomment-20654071
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ deoplete#mappings#manual_complete()
" function! s:check_back_space()
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction

" }}}

autocmd BufEnter * call system("tmux rename-window " . expand("%:t"))
autocmd VimLeave * call system("tmux rename-window bash")
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")

" 2-character Sneak (default)
nmap s <Plug>Sneak_s
nmap S <Plug>Sneak_S

let g:ycm_filetype_blacklist = {}
let g:airline_theme = 'solarized'
" let g:airline_theme = 'base16'
" let g:airline_theme = 'sol'
" let g:airline_theme = 'dark'
" let g:airline_theme = 'sierra'
let g:airline_powerline_fonts = 1

" set background=dark
" colorscheme hybrid_material

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz

" http://stackoverflow.com/questions/486027/close-a-split-window-in-vim-without-resizing-other-windows
set noequalalways

" set completeopt=longest,menu

" let g:seoul256_background = 236 "237
" let g:seoul256_light_background = 256 "253

" colo seoul256
" se bg=light
" colo seoul256-light
" https://github.com/airblade/vim-gitgutter:
" the default value is 4 seconds but I suggest reducing it to around 250ms
set updatetime=250

" "True color" support now requires set termguicolors in your init.vim. NVIM_TUI_ENABLE_TRUE_COLOR is ignored. #4690
if has('nvim')
  let $FZF_DEFAULT_OPTS .= ' --inline-info'
  set termguicolors
endif

" toggle auto-wrap
" http://vim.wikia.com/wiki/Toggle_auto-wrap
nnoremap <f7> :call AutoWrapToggle()<CR>
function! AutoWrapToggle()
  if &formatoptions =~ 't'
    set fo-=t
  else
    set fo+=t
  endif
endfunction

nnoremap <Leader>a :setlocal formatoptions+=a<CR>
nnoremap <Leader>q :setlocal formatoptions-=a<CR>

se mouse=a

let g:deoplete#enable_at_startup = 1

" let g:UltiSnipsExpandTrigger='<C-j>'
" let g:UltiSnipsListSnippets='<C-l>'
" let g:UltiSnipsJumpForwardTrigger='<C-j>'
" let g:UltiSnipsJumpBackwardTrigger='<C-k>'


" call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])
" let g:UltiSnipsExpandTrigger="<C-j>"
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" close the preview window when you're not using it
" let g:SuperTabClosePreviewOnPopupClose = 1
"
"https://github.com/Shougo/deoplete.nvim/issues/470
" imap <expr><TAB>
"   \ neosnippet#expandable_or_jumpable() ?
"   \    "\<Plug>(neosnippet_expand_or_jump)" :
"   \    pumvisible() ? "\<C-n>" : "\<TAB>"
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

imap <C-s>     <Plug>(neosnippet_expand_or_jump)
smap <C-s>     <Plug>(neosnippet_expand_or_jump)
xmap <C-s>     <Plug>(neosnippet_expand_target)

let g:neosnippet#disable_runtime_snippets = {
 \   '_' : 1,
 \ }

let g:neosnippet#snippets_directory="~/src/vim-snippets"

autocmd BufRead,BufNewFile *.Rmd set ft=rmd.r

" let g:neosnippet#scope_aliases['rmd'] = 'rmd,r'

" https://vi.stackexchange.com/questions/4919/exit-from-terminal-mode-in-neovim
tnoremap kj <C-\><C-n>
tnoremap <Esc> <C-\><C-n>

"Remove all trailing whitespace by pressing F8
nnoremap <F8> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" nnoremap <F3> :setlocal
"

let g:gruvbox_contrast_dark = 'soft'

"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu


