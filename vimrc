colors desert
syntax on
set number
set hidden
set ignorecase
set background=dark
" set ai
filetype plugin on
filetype plugin indent on       " load file type plugins + indentation
set undofile                    " persistent undo!

set encoding=utf-8

" do I dare disable the arrow keys?
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" no more help key mishaps
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" focus when vim buffer is no longer in focus
" au FocusLost * :wa

" reselect just pasted text to indent and etc with ,v
nnoremap <leader>v V`]

" sort css properties with ,s
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

let mapleader = ","
noremap <Leader>d :NERDTreeToggle<CR>

set nocompatible                " choose no compatibility with legacy vi

set guicursor+=n-v-c:blinkon0   " no more blinking!

" quick switching between files
nnoremap <leader><leader> <c-^> 

" paraphrased from Zach Holman
" set autoindent      " automatic indent new lines
" set smartindent     " be smart about it
set nowrap          " none of that balogna
set expandtab       " expand tabs to spaces
set nosmarttab      " fuck tabs
set ruler           " show where we are
set nolazyredraw    " turn off lazy redraw
set showmatch       " brackets/braces that is
set visualbell      " shut the fuck up

" get rid of the auto commenting crap from vim
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set formatoptions-=c  " seriously, no auto comments

" deal with horizontal scrolling a bit
" more gracefully
set sidescroll=5
set listchars+=precedes:<,extends:>

set lines=75 columns=125

set history=700 " Sets how many lines of history VIM has to remember

set scrolloff=5 " set at least 5 lines above/below cursor

" get rid of scrollbar crap
set guioptions-=r " no scrollbar on the right
set guioptions-=l " no scrollbar on the left
set guioptions-=b " no scrollbar on the bottom
set guioptions=   " definitely no scrollbars

set backspace=indent,eol,start  " backspace through everything in insert mode

"
" 4 spaces, current indent style
"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" enable spell checking
setlocal spell spelllang=en_us

"for python autocomplete
"let g:pydiction_location = '/Users/geof/.vim/vimfiles/complete-dict'

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

" let's assume these are django files
au BufNewFile,BufRead admin.py     setlocal filetype=python.django
au BufNewFile,BufRead urls.py      setlocal filetype=python.django
au BufNewFile,BufRead models.py    setlocal filetype=python.django
au BufNewFile,BufRead views.py     setlocal filetype=python.django
au BufNewFile,BufRead settings.py  setlocal filetype=python.django
au BufNewFile,BufRead forms.py     setlocal filetype=python.django

" actionscript is similar enough to javascript
augroup actionscript
    au!
    autocmd BufRead *.as set filetype=actionscript
augroup END

set wildmenu
set wildmode=list:longest,full

" warn if something changes
au FileChangedShell * echo "Warning: File changed on disk"
