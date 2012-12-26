runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

filetype plugin indent on
syntax enable
set number

set hlsearch
set incsearch
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

set backspace=2
set softtabstop=4
set shiftwidth=4
set expandtab

autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2
autocmd FileType eruby setlocal shiftwidth=2 softtabstop=2

command Markdown new | set ft=html | execute 'r !~/.vim/Markdown.pl #' | 1d
command Trigraphs s/#/??=/g | s/\\/??\//g | s/^/??'/g | s/\[/??(/g | s/\]/??)/g | s/|/??!/g | s/{/??</g | s/}/??>/g | s/~/??-/g

let g:Powerline_symbols = 'fancy'
set laststatus=2
set t_Co=256
colorscheme wombat256mod
