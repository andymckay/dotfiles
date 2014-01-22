set nocompatible

set modelines=0

set number
syntax on
set wildignore=*.swp,*.bak,*.pyc,*.class
set smartindent
set tabstop=4
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

map <Esc><Esc> :w<CR>

nnoremap <F11> :TlistToggle
nnoremap ; :

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType less setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType css setlocal expandtab shiftwidth=4 softtabstop=4
" autoindent http://www.vim.org/scripts/script.php?script_id=1171
" autocmd BufReadPost * :DetectIndent

"Credit Damian Conway for the rest.
nnoremap <SPACE> <PAGEDOWN>

set undolevels=5000
set virtualedit=block

vnoremap <silent> I I<C-R>=TemporaryColumnMarkerOn()<CR>
vnoremap <silent> A A<C-R>=TemporaryColumnMarkerOn()<CR>

function! TemporaryColumnMarkerOn ()
        set cursorcolumn
        inoremap <silent> <ESC>
        \ <ESC>:call TemporaryColumnMarkerOff()<CR>
        return ""
endfunction

function! TemporaryColumnMarkerOff ()
        set nocursorcolumn
        iunmap <ESC>
endfunction



autocmd BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$")
\| exe "normal! g`\""
\| endif

nmap S :%s//g<LEFT><LEFT>
vmap S :s//g<LEFT><LEFT>

set autoindent smartindent
"No stupid outdent for scripting comments...
inoremap # X<C-H>#
"And no stupid shift-resistance either...
nnoremap <silent> >> :call ShiftLine()<CR>
function! ShiftLine()
        set nosmartindent normal! >>
        set smartindent
endfunction

nmap / /\v
cmap s/ s/\v

nmap <DEL> :nohlsearch<CR>

let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

execute pathogen#infect()

nnoremap <silent> <Leader>f :CommandT<CR>
nnoremap <silent> <Leader>b :CommandTBuffer<CR>
nnoremap <silent> <Leader>u :GundoToggle<CR>
nnoremap <silent> <Leader>g :GitGutterNextHunk<CR>
