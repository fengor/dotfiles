set nocompatible 
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-unimpaired'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'sheerun/vim-polyglot'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'itchyny/lightline.vim'
call plug#end()

syntax on
colorscheme badwolf

set number
set ts=4 sts=4 sw=4
set encoding=utf-8

let mapleader = ','
" fzf
map ; :Buffers<CR>
map <Leader>t :Files<CR>
map <Leader>r :Tags<CR>

" ag
nmap <M-k>	:Ack! "\b<cword>\b" <CR>
nmap <Esc>k	:Ack! "\b<cword>\b" <CR>
nmap <M-S-k>	:Ggrep! "\b<cword>\b" <CR>
nmap <Esc>K		:Ggrep! "\b<cword>\b" <CR>
nmap \x	:cclose<CR>

nmap \r :!tmux send-keys -t 0:0.1 C-p C-j <CR><CR>


cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
