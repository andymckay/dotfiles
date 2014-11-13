set colorcolumn=80

set guioptions-=T
filetype plugin indent on
let g:pydiction_location = '/Users/andy/.vim/pydiction-1.2/complete-dict'

inoremap <D-s> <ESC>:w<CR>i  "insertmode
nnoremap <D-s> :w<CR>        "normalmode

set guifont=Source\ Code\ Pro:h14

if has("gui_macvim")
    map <D-r> :CommandT<CR>
    map <D-d> :Dash!<CR>
endif
