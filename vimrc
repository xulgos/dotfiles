syntax on
filetype plugin indent on

set nocompatible
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=500		" keep 500 lines of command line history
set ruler
set showcmd		" display incomplete commands
set autoindent
set nowrap
set backupdir=~/.tmp
set directory=~/.tmp " Don't clutter my dirs up with swp and tmp files
set laststatus=2  " Always show status line.
set number 
set nofoldenable

" Highlight the status line
highlight StatusLine ctermfg=blue ctermbg=yellow

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set background=dark
colorscheme solarized

