runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

filetype plugin indent on
syntax enable
set number
set cursorline

set hlsearch
set incsearch
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

set backspace=2

set softtabstop=4
set shiftwidth=4
set expandtab

let mapleader=","

noremap <Leader>n :NERDTreeToggle<CR>

autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2
autocmd FileType eruby setlocal shiftwidth=2 softtabstop=2
autocmd FileType jade setlocal shiftwidth=2 softtabstop=2

" For CS 233
autocmd FileType asm setlocal softtabstop=0 noexpandtab

command Markdown new | set ft=html | execute 'r !~/.vim/Markdown.pl ' . shellescape(expand('#')) | 1d
command Trigraphs %s/#/??=/ge | %s/\\/??\//ge | %s/\^/??'/ge | %s/\[/??(/ge | %s/\]/??)/ge | %s/|/??!/ge | %s/{/??</ge | %s/}/??>/ge | %s/\~/??-/ge

let g:Powerline_symbols = 'fancy'
set laststatus=2
set t_Co=256

" Presentation Vim
if $PVIM != 1
    colorscheme wombat256mod
endif

set mouse=a
