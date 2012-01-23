set nocompatible                        " choose no compatibility with legacy vi
set number                              
set hidden                              " allow switching buffers without saving
set background=dark                     
set undofile                            " persistent undo!
set autoread                            " watch for file changes
set encoding=utf-8
set hlsearch                            " highlighting for search
set incsearch                           " Show matches as pattern is being typed
set ignorecase                          " ignore case in search
set smartcase                           " Ignore case only when pattern is all lowercase
set fileformats=unix,dos,mac            " Detect line endings correctly
set t_Co=256                            " 256 color mode
set wildignore+=.hg,.git,.svn           " Version control ignore
set wildignore+=*.o,*.obj,*.pyc         " command-T ignore
set wildignore+=*.DS_Store              " OSX bullshit
set guicursor+=n-v-c:blinkon0           " no more blinking!
set nowrap                              " none of that balogna
set expandtab                           " expand tabs to spaces
set nosmarttab                          " fuck tabs
set ruler                               " show where we are
set lazyredraw                          " don't redraw when don't have to
set showmatch                           " brackets/braces that is
set visualbell                          " shut the fuck up
set bg=dark                             " dark background
set formatoptions-=c                    " seriously, no auto comments
set sidescroll=10                       " deal with side scrolling more gracefully
set sidescrolloff=10                    " keep at least 5 lines left/right
set scrolloff=5                         " set at least 5 lines above/below cursor
set listchars+=precedes:<,extends:>
set lines=75 columns=125                " set dimensions of the vim window
set history=700                         " Sets how many lines of history VIM has to remember
set guioptions-=r                       " no scrollbar on the right
set guioptions-=l                       " no scrollbar on the left
set guioptions-=b                       " no scrollbar on the bottom
set guioptions=                         " definitely no scrollbars
set backspace=indent,eol,start          " backspace through everything in insert mode
set tabstop=4                           " tabs, spaces and how to deal with them
set shiftwidth=4
set softtabstop=4
set expandtab
set sw=4 sts=4 et
set wildmenu                            " wildmenu adjustments
set wildmode=list:longest,full
set ofu=syntaxcomplete#Complete

" set ai
" set autoindent                        " automatic indent new lines
" set smartindent                       " be smart about it
" set nolazyredraw                      " turn off lazy redraw

colors desert
syntax on

filetype plugin on
filetype plugin indent on               " load file type plugins + indentation

" clear the search
nnoremap <f2> :noh<return><esc>    

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

" au FocusLost * :wa                    " save? when vim buffer is no longer in focus

" reselect just pasted text to indent and etc with ,v
nnoremap <leader>v V`]

" sort css properties with ,s
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

" NERDTree
let mapleader = ","
noremap <Leader>d :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']

" Command-T
let g:CommandTMaxHeight = 15            " maximum height of 15

" quick switching between files
nnoremap <leader><leader> <c-^> 

" get rid of the auto commenting crap from vim
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" enable spell checking
setlocal spell spelllang=en_us

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
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

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


" warn if something changes
au FileChangedShell * echo "Warning: File changed on disk"

" tumblr theme support!
au! BufRead,BufNewFile *.tumblr.html setfiletype tumblr
