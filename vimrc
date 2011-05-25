colors desert
syntax on
set number
set hidden
set ignorecase
set background=dark
let mapleader = ","
noremap <Leader>d :NERDTreeToggle<CR>

set lines=75 columns=125

" set at least 5 lines above/below cursor
set scrolloff=5

" get ride of scrollbar crap
set guioptions-=r " no scrollbar on the right
set guioptions-=l " no scrollbar on the left
set guioptions-=b " no scrollbar on the bottom

"
" 4 spaces, current indent style
"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
