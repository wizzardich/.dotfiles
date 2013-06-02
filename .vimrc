" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ===================== Pathogen
filetype off
call pathogen#incubate()
call pathogen#helptags()
filetype plugin indent on

" ===================== Global settings

set nu		            "" Line numbers
set numberwidth=3
set visualbell		      "" No fraking sounds
set autoread		      "" Reload files changed outside of VIM
set history=1000	      "" Command history size
set hidden		         "" Buffer2Back without writing
set wildmenu		      "" Autocomplete
set wildmode=list:longest
syntax on
set ruler
set fileencodings=utf-8,cp1251,koi8-r,latin1
highlight LineNr term=bold ctermfg=Brown
set t_Co=256            "" Full color support
colorscheme zenburn     " Set default colorscheme

" ===================== Search opts

set incsearch       	   "" Find the next match as we type the search
set hlsearch        	   "" Hilight searches by default
set viminfo='100,f1 	   "" Save up to 100 marks, enable capital marks

" ===================== Swap Files

set noswapfile
set nobackup
set nowb

" ===================== Persistent Undo

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ===================== Identation

set autoindent
set smartindent
set smarttab
set backspace=indent,eol,start
set shiftwidth=3
set softtabstop=3
set tabstop=3
set expandtab

" ===================== Scrolling

set scrolloff=4            "Start scrolling when we're 8 lines from margins
set sidescrolloff=16
set sidescroll=1

" ===================== Keymapping

nmap <silent> <C-D> :NERDTreeToggle<CR>
