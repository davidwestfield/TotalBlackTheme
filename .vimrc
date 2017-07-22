set nocompatible
filetype plugin on
filetype indent on

set modeline
set modelines=5

vnoremap x d
nnoremap dx dd

vmap <leader>y :w! /tmp/vitmp<CR> 
nmap <leader>p :r! cat /tmp/vitmp<CR>

"delete to black hole register
nnoremap d "_d
vnoremap d "_d

nnoremap x "_x
vnoremap x "_x

set history=700

set autoread

set so=7

set wildmenu
set wildignore=*.o,*~,*.pyc,*.swp,*.bak

set ruler

set hid

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set undolevels=500

set ignorecase
set smartcase
set hlsearch
set incsearch

set lazyredraw

set magic

set showmatch
set mat=2

set noerrorbells
set novisualbell
set t_vb=
set tm=500

set clipboard=unnamedplus
set go+=a

syntax enable

set background=dark
colorscheme default

imap jk <Esc>

:command WQ wq
:command Wq wq
:command W w
:command Q q

set number
highlight LineNr ctermfg=DarkGrey

set t_Co=256

if has("gui_running")
   set lines=200
   colorscheme torte 
   set guifont=Consolas:h11:cANSI
   set guioptions-=m
   set guioptions-=T
   set guioptions-=r
   set guioptions+=e
   set gcr=a:blinkon0
   set t_Co=256
   highlight LineNr guifg=#505050 
   set guitablabel=%M\ %t
endif

set encoding=utf8
set ffs=unix,dos,mac
set fileformat=unix

set nobackup
set nowb

set autoindent
set copyindent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set cindent

set nowrap
set ai
set si

map j gj
map k gk

autocmd BufReadPost *
         \ if line("'\"") > 0 && line("'\"") <= line("$") |
         \   exe "normal! g`\"" |
         \ endif

set viminfo^=%

map 0 ^

func! DeleteTrailingWS()
   exe "normal mz"
   %s/\s\+$//ge
   exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

vnoremap <silent> gv :call VisualSelection('gv')<CR>

