" PUGINS
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'https://github.com/lervag/vimtex'                               " Latex
Plug 'https://github.com/peterbjorgensen/sved'                        " For emulating synctex with Evince 
Plug 'https://github.com/sirver/UltiSnips'                            " Adds snippets  Vim/NVim
Plug 'https://github.com/celdorwow/vim-snippets'                      " Forked vim-snippets
Plug 'https://github.com/rmehri01/onenord.nvim', {'branch': 'main'}   " Colour themes
Plug 'https://github.com/tpope/vim-surround'                          " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree'                          " NerdTree
Plug 'https://github.com/tpope/vim-commentary'                        " For Commenting gcc & gc
Plug 'https://github.com/ryanoasis/vim-devicons'                      " Developer Icons
Plug 'https://github.com/vim-airline/vim-airline'                     " Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes'              " Themes
Plug 'https://github.com/rafi/awesome-vim-colorschemes'               " Retro Scheme
Plug 'https://github.com/tc50cal/vim-terminal'                        " :Terminal, :TerminalTab, :TerminalSplit, :TerminalVSplit
Plug 'https://github.com/iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': 'markdown' } " then run :call mkdp#util#install()
Plug 'https://github.com/neovim/nvim-lspconfig'                       " LSP
Plug 'https://github.com/hrsh7th/nvim-cmp'                            " Completion
Plug 'https://github.com/hrsh7th/cmp-nvim-lsp'                        "   ..
Plug 'https://github.com/hrsh7th/cmp-buffer'                          "   ..
Plug 'https://github.com/hrsh7th/cmp-path'                            "   ..
Plug 'https://github.com/hrsh7th/cmp-cmdline'                         "   ..
Plug 'https://github.com/L3MON4D3/LuaSnip'                            " For lua 
Plug 'https://github.com/saadparwaiz1/cmp_luasnip'                    "   ..
Plug 'https://github.com/SirVer/ultisnips'                            " For UltiSnipps
Plug 'https://github.com/quangnguyen30192/cmp-nvim-ultisnips'         "   ..
"Plug 'https://github.com/lukas-reineke/indent-blankline.nvim'         " Vertical bars at indentations
"Plug 'https://github.com/honza/vim-snippets'                          " Community maintained snippets for languages
"Plug 'https://github.com/kyazdani42/nvim-web-devicons' " Web-Developper's icons
"Plug 'https://github.com/rhysd/clever-split.vim'                      " Splits horizontally or vertically 
"Plug 'https://github.com/p00f/nvim-ts-rainbow'                        " Adds rainbow brackets
"Plug 'https://github.com/nvim-treesitter/nvim-treesitter'
"Plug 'https://github.com/romgrk/barbar.nvim'                          " Adds clicable title in top bar 
"Plug 'https://github.com/nvim-orgmode/orgmode'                        " Org-mode
call plug#end()

""" Additional plug settings
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

" Setup VimTex
let maplocalleader = ","
let g:tex_flavor = 'latex'
let g:vimtex_quickfix_mode=0
let g:vimtex_view_method = 'general'
autocmd FileType tex nnoremap <expr> <buffer> <F5> empty(glob(expand("%:p:r").".log")) ? ":echo expand(\"%:p:r\").'.log does not exist!'<CR>" : ":split \| view %:p:r.log<CR>"
autocmd FileType tex setlocal spell|setlocal spelllang=en_gb,pl|inoremap <buffer> <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
"autocmd FileType tex noremap <localleader><BS> :s/\s\+/ /g<CR> :noh<CR>
"autocmd FileType tex noremap <localleader>d <Esc>ciw<Space><Esc>
"autocmd FileType tex set colorcolumn=120

" Indent blankline
"lua << EOF
"vim.opt.termguicolors = true
"vim.cmd [[highlight IndentBlanklineIndent1 guifg=#363f4e gui=nocombine]]
"vim.opt.list = true
"require("indent_blankline").setup {
"    buftype_exclude = {"terminal"},
"    char_highlight_list = {
"        "IndentBlanklineIndent1",
"    },
"}
"EOF

" Markdown Preview
" let g:mkdp_markdown_css = '/home/ziko/.md/style.css'
let g:mkdp_theme = 'light'
autocmd FileType markdown setlocal spell|setlocal spelllang=en_gb,pl|inoremap <buffer> <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" LSP
"source ~/.config/nvim/lsp-init.vim

" Other settings
source ~/.config/nvim/basicinits.vim

