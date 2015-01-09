set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
execute pathogen#infect()
let g:SuperTabDefaultCompletionType = "context"
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

let mapleader = " "
"nnoremap <silent> [b :bprevious<CR> 
"nnoremap <silent> ]b :bnext<CR>
"nnoremap <silent> <leader>d :bdelete<CR>
nnoremap <leader><leader> "+
nnoremap <leader>d :bdelete<CR>
nnoremap <leader>u <C-r>
nnoremap <leader>h :bprevious<CR>
nnoremap <leader>l :bnext<CR>
nnoremap <leader>ts :TagbarToggle<CR>
nnoremap <leader>tf :ta 
nnoremap <leader>tl :tn<CR>
nnoremap <leader>th :tp<CR>
nnoremap <leader>td <c-]>

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
