runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" Performance optimizations for tmux
set ttyfast
set ttyscroll=3
set lazyredraw

filetype plugin indent on
syntax enable
set number
set cursorline

set hlsearch
set incsearch
nnoremap <silent> <C-l> :noh<CR>:pc<CR>:ccl<CR><C-l>

set backspace=2

set softtabstop=4
set shiftwidth=4
set expandtab

set printoptions=paper:letter

let mapleader=","

noremap <Leader>n :NERDTreeToggle<CR>

autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2
autocmd FileType eruby setlocal shiftwidth=2 softtabstop=2
autocmd FileType jade setlocal shiftwidth=2 softtabstop=2
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2
autocmd FileType go setlocal shiftwidth=0 softtabstop=0 noexpandtab
autocmd FileType tf setlocal shiftwidth=2 softtabstop=2

" For CS 233
autocmd FileType asm setlocal shiftwidth=0 softtabstop=0 noexpandtab

autocmd BufNewFile,BufRead *.groovy.flow setfiletype groovy

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
set ttymouse=sgr

" Fix syntax highlighting for long files
autocmd BufEnter * :syntax sync fromstart

let g:ctrlp_custom_ignore = 'node_modules\|venv\|MathJax'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
