set nocompatible
filetype off

" Plug plugin manager 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf'
Plug 'tpope/vim-unimpaired'
Plug 'sheerun/vim-polyglot'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'itchyny/lightline.vim'
call plug#end()

syntax on
set background=dark
colorscheme badwolf

set number
set ts=4 sts=4 sw=4
set encoding=utf-8

cnoremap <C-p> <Up> 
cnoremap <C-n> <Down>

let mapleader = ','

