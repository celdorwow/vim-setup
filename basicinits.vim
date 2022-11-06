" Set enconding to UTF-8
set encoding=utf-8

" enable syntax highlighting
syntax on
" Onenord requires plugin: Plug 'rmehri01/onenord.nvim', {'branch': 'main'}
colorscheme onenord

" show line numbers
set number

" set tabs to have 4 spaces
set ts=2

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 2 spaces
set shiftwidth=2

" show a visual line under the cursor's current line
set cursorline
hi CursorLine cterm=bold ctermbg=0 ctermfg=NONE
"hi CursorLine cterm=NONE ctermbg=0 ctermfg=NONE

" show the matching part of the pair for [] {} and ()
set showmatch

" Python
" ...
let g:python3_host_prog = '/usr/bin/python3'
" ... enable all Python syntax highlighting features
let python_highlight_all = 1

"autocmd BufRead *.py setlocal colorcolumn = 0
"autocmd FileType python set colorcolumn=120
hi ColorColumn ctermbg=8

" Set mouse to active
" set mouse=a

" Expand aliases
let $BASH_ENV = "~/.bash_aliases"


