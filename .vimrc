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
noremap <Leader>m :TagbarToggle<CR>

autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2
autocmd FileType eruby setlocal shiftwidth=2 softtabstop=2
autocmd FileType jade setlocal shiftwidth=2 softtabstop=2
autocmd FileType go setlocal shiftwidth=0 softtabstop=0 noexpandtab

" For CS 233
autocmd FileType asm setlocal shiftwidth=0 softtabstop=0 noexpandtab

command Markdown new | set ft=html | execute 'r !~/.vim/Markdown.pl ' . shellescape(expand('#')) | 1d
command Trigraphs %s/#/??=/ge | %s/\\/??\//ge | %s/\^/??'/ge | %s/\[/??(/ge | %s/\]/??)/ge | %s/|/??!/ge | %s/{/??</ge | %s/}/??>/ge | %s/\~/??-/ge

" Statusline and colorscheme
let g:airline_powerline_fonts = 1
set laststatus=2
set t_Co=256

" Presentation Vim
if $PVIM == 1
    set background=light
    colorscheme solarized
else
    colorscheme wombat256mod
endif

set mouse=a

" Fix syntax highlighting for long files
autocmd BufEnter * :syntax sync fromstart

let g:ctrlp_custom_ignore = 'node_modules\|venv\|MathJax'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
