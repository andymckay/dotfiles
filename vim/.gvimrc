set colorcolumn=80

set guioptions-=T
filetype plugin indent on
let g:pydiction_location = '/Users/andy/.vim/pydiction-1.2/complete-dict'

autocmd VimEnter * NERDTree %:p:h
autocmd BufEnter * NERDTreeMirror

set guifont=Menlo:h14
set colorscheme molokai
