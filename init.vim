" PUGINS
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'https://github.com/lervag/vimtex'
Plug 'https://github.com/peterbjorgensen/sved' " For emulating synctex with Evince 
Plug 'https://github.com/sirver/UltiSnips' " Adds snippets  Vim/NVim
Plug 'https://github.com/celdorwow/vim-snippets' " Forked vim-snippets
" Plug 'https://github.com/honza/vim-snippets' " Community maintained snippets for languages
Plug 'https://github.com/rmehri01/onenord.nvim', {'branch': 'main'}
Plug 'https://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
" Plug 'https://github.com/kyazdani42/nvim-web-devicons' " Web-Developper's icons
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tc50cal/vim-terminal' " Adds :Terminal bash, :TerminalTab, :TerminalSplit, and :TerminalVSplit
Plug 'https://github.com/hrsh7th/nvim-cmp'
"Plug 'nvim-treesitter/nvim-treesitter' " Adds org-mode
"Plug 'nvim-orgmode/orgmode'            " ...

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Additional plug settings
" ... NordTree
" nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" ... Air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='onedark' " 'atomic'
" ... SVED synctex
nmap <F4> :call SVED_Sync()<CR>
" ... UltiSnips
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsEditSplit='context'
" let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" Vimtex
autocmd FileType tex nmap <expr> <buffer> <F5> empty(glob(expand("%:p:r").".log")) ? ":echo expand(\"%:p:r\").'.log does not exist!'<CR>" : ":split \| view %:p:r.log<CR>"

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

" Setup VimTex
let maplocalleader = ","
let g:vimtex_view_method = 'general'
" let g:vimtex_compiler_latexmk['build_dir'] = ''

" Expand aliases
let $BASH_ENV = "~/.bash_aliases"

