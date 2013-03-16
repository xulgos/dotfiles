set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
execute pathogen#infect()
syntax on
filetype plugin indent on
runtime macros/matchit.vim
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

set noshowmode
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
set hidden
set expandtab

set t_Co=256
set background=dark
colorscheme solarized

let mapleader = ","
nnoremap <leader>o o<esc>
nnoremap <leader>l <c-w>l
nnoremap <leader>h <c-w>h
nnoremap <leader>k <c-w>k
nnoremap <leader>j <c-w>j
nnoremap <leader>> <c-w>>
nnoremap <leader>< <c-w><
nnoremap <leader>r <c-r>

nnoremap <silent> [b :bprevious<CR> 
nnoremap <silent> ]b :bnext<CR>

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
