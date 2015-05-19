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
command Wq wq
command W w
command Q q

noremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

