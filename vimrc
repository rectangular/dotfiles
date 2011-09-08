colors desert
syntax on
set number
set hidden
set ignorecase
set background=dark
set ai
let mapleader = ","
noremap <Leader>d :NERDTreeToggle<CR>



" paraphrased from Zach Holman
set autoindent      " automatic indent new lines
set smartindent     " be smart about it
set nowrap          " none of that balogna
set expandtab       " expand tabs to spaces
set nosmarttab      " fuck tabs

set ruler           " show where we are
set nolazyredraw    " turn off lazy redraw

set showmatch       " brackets/braces that is
set visualbell      " shut the fuck up



set lines=75 columns=125

" set at least 5 lines above/below cursor
set scrolloff=5

" get ride of scrollbar crap
set guioptions-=r " no scrollbar on the right
set guioptions-=l " no scrollbar on the left
set guioptions-=b " no scrollbar on the bottom
set guioptions=   " definitely no scrollbars

set backspace=indent  " Allow backspacing over autoindent
set backspace+=eol    " Allow backspacing over line breaks (join lines)
set backspace+=start  " Allow backspacing over the start of insert

"
" 4 spaces, current indent style
"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

filetype plugin on

" enable spell checking
setlocal spell spelllang=en_us

"for python autocomplete
let g:pydiction_location = '/Users/geof/.vim/vimfiles/complete-dict'

set ofu=syntaxcomplete#Complete

" ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" ActionScript is similar enough to JavaScript
augroup actionscript
    au!
    autocmd BufRead *.as set filetype=actionscript
augroup END


" ropevim stuff
" source ~/.vim/plugin/ropevim.vim
" let ropevim_vim_completion=1
" add the name of modules you want to autoimport
" let g:ropevim_autoimport_modules = ["os", shutil]

set wildmenu
set wildmode=list:longest,full

:au FileChangedShell * echo "Warning: File changed on disk"
