syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch
set softtabstop=4
set textwidth=79
set autoindent
set number
set formatoptions-=cro
set splitright

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
autocmd BufWritePre * :%s/\s\+$//e

inoremap <expr> j pumvisible() ? "\<C-N>" : "j"
inoremap <expr> k pumvisible() ? "\<C-P>" : "k"

set filetype=on
filetype plugin on
filetype indent on
set backspace=indent,eol,start

autocmd FileType html set textwidth=0

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

command WQ wq
command WQa wqa
command Wqa wqa
command Wq wq
command W w
command Q q
cnoremap q1 q!

noremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

let mapleader = ","

execute pathogen#infect()

map <C-v> :NERDTreeTabsToggle<CR>
noremap <leader>d "_d
let g:nerdtree_tabs_open_on_console_startup=1

" syntax enable
" set background=dark
" let g:solarized_contrast="low"
" let g:solarized_visibility="low"
" let g:solarized_termcolors=128
" colorscheme solarized

let g:airline#extensions#tabline#enabled=1
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
noremap <silent> <Leader>y :TagbarToggle<CR>
