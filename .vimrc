set nocp
set directory=~/.vim/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-swap/

" Plugin config
let g:github_user="booleangate"
let g:syntastic_javascript_checkers=['eslint']

if filereadable('env/bin/python')
    let g:syntastic_python_python_exec = 'env/bin/python'
    let g:syntastic_python_flake8_exec = 'env/bin/python'
elseif filereadable('python3')
    let g:syntastic_python_python_exec = 'env/bin/python'
    let g:syntastic_python_flake8_exec = 'python3'
endif
let g:syntastic_python_flake8_args = ['-m', 'flake8']

let g:ctrlp_working_path_mode = 'ra'
let g:rehash256 = 1
set completeopt-=preview


" Turn plugin features on
filetype plugin indent on
set autoindent
set showmatch


" Manage multiple buffers
set hidden

" Use the file's name in the title
set title

" No annoying beep
"set visualbell

" Turn on syntax highlighting
syntax on

if !empty(glob('~/.vim/bundle/molokai'))
    colorscheme molokai
endif

" Utility features
set ruler
set number
set cursorline
set history=1000
set bs=2

" Set the terminal font encoding
set encoding=utf-8
set termencoding=utf-8

" Bash-like tab completion
set wildmenu
set wildchar=<Tab>
set wildmode=list:longest
set wildignore+=*.pyc,.hg,.git,.svn,*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/env/*

" Mouse options
set mouse=a
set mousemodel=popup

" Spacing and tabbing
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=120
set nowrap

" Split manipulation
set wmh=0
nmap + :resize <CR>
nmap - :resize -1000<CR>
nmap = :wincmd =<CR>
nmap [ :wincmd k<CR>:resize<CR>
nmap ] :wincmd j<CR>:resize<CR>

" Command Timeouts
set timeout
set ttimeout
set ttimeoutlen=10
set timeoutlen=10

" Tab navigation
nmap <F4> :tabnew<CR>
nmap <F5> :tabp<CR>
nmap <F6> :tabn<CR>

" Scrolling context
set scrolloff=3

" Map leader to ,
let mapleader = ","

" Shortcuts
au Filetype php        noremap ; :!php -l %<CR>
au Filetype sh         noremap ; :!bash -n %<CR>
au Filetype bash       noremap ; :!bash -n %<CR>
au Filetype ruby       noremap ; :!ruby -c %<CR>
au Filetype python     noremap ; :!python -m py_compile %<CR>
au Filetype javascript noremap ; :JSLintUpdate<CR>

" Scrolling speed
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

" Filetype-specific formatting
set formatoptions+=t,c,r,o,n

au FileType c,cpp,h set cindent formatoptions+=ro
au FileType c set omnifunc=ccomplete#Complete
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType html,xhtml,xml set omnifunc=htmlcomplete#CompleteTags tw=0
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType make set noexpandtab shiftwidth=8
au FileType php set omnifunc=phpcomplete#CompletePHP
au FileType python set omnifunc=pythoncomplete#Complete et sw=4 sts=4 ts=4 ai
au FileType ruby set omnifunc=rubycomplete#Complete
au FileType tex SPCheck
au FileType tex let dialect='US'
au Syntax {cpp,c,idl} runtime syntax/doxygen.vim

au BufRead,BufNewFile PKGBUILD set ts=2 sts=2 et sw=2
au BufNewFile,BufRead .Xdefaults* set filetype=xdefaults
au BufNewFile,BufRead *.lss set filetype=less
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.css set filetype=less

" Trim trailing whitespace on write
autocmd FileType c,cpp,java,php,python,javascript,json,ruby,markdown autocmd BufWritePre * :%s/\s\+$//e

" Completion
inoremap <Nul> <C-x><C-p>

" Status line settings
set laststatus=2
set statusline=%-3.3n\ %f%(\ %r%)%(\ %#WarningMsg#%m%0*%)%=(%l/%L,\ %c)\ %P\ [%{&encoding}:%{&fileformat}]%(\ %w%)\ %y
set shortmess+=aI

hi StatusLine term=inverse cterm=NONE ctermfg=red ctermbg=white
hi StatusLineNC term=none cterm=NONE ctermfg=darkgray ctermbg=lightgray

" Folding
if has("folding")
    set foldenable
    set foldmethod=marker
    set foldopen=hor,mark,search,tag,undo
endif

hi Folded term=standout ctermfg=3 ctermbg=none

" Searching & Replacing
set hlsearch

" Enable extended % matching
runtime macros/matchit.vim
