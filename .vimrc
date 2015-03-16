"Pathogen
call pathogen#infect()

" Colors
set background=dark
syntax enable
set t_Co=256
colorscheme solarized
" Syntax hilighting
"highlight StatusLine ctermfg=blue ctermbg=yellow

set nocompatible
set smarttab
set ruler
set nowrap
set number
set noesckeys
set history=500
set showcmd

" Leaders
let mapleader = ","
map <Leader>p :!pry
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :vsplit <C-R>=expand("%:p:h") . '/'<CR>

" Indent control
filetype plugin indent on
set backspace=indent,eol,start
set autoindent
set shiftwidth=2
set tabstop=2

" Show indent lines
set list
set listchars=tab:\|\ 

" Expandtab for ruby
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 tw=79 formatoptions=tcro
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 tw=79 formatoptions=tcro
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 tw=79 formatoptions=tcro
