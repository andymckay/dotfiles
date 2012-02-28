set nocompatible

set modelines=0

set number
syntax on
set wildignore=*.swp,*.bak,*.pyc,*.class
set smartindent
"set tabstop=4
"set shiftwidth=4
set expandtab
"set softtabstop=4

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

set autochdir
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set wildignore=*.swp,*.bak,*.pyc,*.class
set incsearch
set hlsearch
set ignorecase
set smartcase

let python_highlight_all=1
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

set textwidth=79
set formatoptions=qrn1
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set background=dark
colorscheme molokai

highlight TrailingWhitespace ctermbg=darkgreen guibg=darkgreen
match TrailingWhitespace /\s\+$/
au TabEnter * :match TrailingWhitespace /\s\+$/

map <C-b> Oimport ipdb; ipdb.set_trace()<Esc>

" Trailing space removal on save
function! StripTrailingSpaces()
    let l = line(".")
    let c = col(".")
    silent! execute '%s/\s\+$//e'
    call cursor(l, c)
endfunction
au BufWritePre * :call StripTrailingSpaces()

function! RedBar()
    hi RedBar ctermfg=white ctermbg=red guibg=red
    echohl RedBar
    echon repeat(" ",&columns - 1)
    echohl
endfunction

set nobackup
set nowritebackup
set noswapfile

nnoremap <F11> :TlistToggle
nnoremap ; :

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType javascript setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType less setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType css setlocal expandtab shiftwidth=4 softtabstop=4
