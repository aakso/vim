"Pathogen
call pathogen#infect()

" Colors
set background=dark
syntax enable
set t_Co=256
colorscheme gruvbox
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

" Copy to X Window Clipboard
set clipboard=unnamedplus

" Expandtab for ruby
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 tw=79 formatoptions=tcro
autocmd Filetype eruby setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 tw=79 formatoptions=tcro
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 tw=79 formatoptions=tcro

" GO stuff
autocmd Filetype go setlocal tabstop=4 shiftwidth=4
autocmd Filetype go let g:go_fmt_command = "goimports"

" YAML
autocmd FileType yaml set ft=ansible "override filetype to use ansible plugin
autocmd FileType ansible set indentkeys-=- "disable stupid indentation with dash

" RST
autocmd FileType rst set tw=79 formatoptions=tcro
let g:riv_disable_folding=1
