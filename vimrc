"call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
runtime macros/matchit.vim
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
set hidden
set expandtab

set t_Co=256
set background=dark
colorscheme solarized

let mapleader = ","
nnoremap <leader>o o<esc>
vnoremap im :<C-U>/def<CR>jv/^\s\{2,2}end/<CR>l
omap im :normal vim<CR>?def<CR>$

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
