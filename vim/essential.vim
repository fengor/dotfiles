execute pathogen#infect()

syntax on
colorscheme badwolf

set nocompatible
filetype plugin indent on
set number
set ts=4 sts=4 sw=4

map <F2> :NERDTreeToggle<CR>

" pymode settings
let g:pymode_rope = 0
let g:pymode_virtualenv = 1
let g:pymode_folding = 0

" go settings
let g:go_disable_autoinstall = 0
let g:go_hilight_functions = 1
let g:go_hilight_methods = 1
let g:go_hilight_structs = 1 
let g:go_hilight_operators = 1
let g:go_hilight_build_constraints = 1

" tagbar
nmap <F8> :TagbarToggle<CR>

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
