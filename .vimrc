""" VUNDLE PLUGINS

set nocompatible
filetype off

set rtp+=~/.fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'wakatime/vim-wakatime'
Plugin 'mxw/vim-jsx'
Plugin 'airblade/vim-gitgutter'
Plugin 'xero/blaquemagick.vim'
Plugin 'ap/vim-buftabline'
Plugin 'alvan/vim-closetag'
Plugin 'morhetz/gruvbox'
Plugin 'aserebryakov/vim-todo-lists'

call vundle#end()

"""
"""""
""""""" VIM VARIABLES 
"""""
"""

syntax on
set mouse=a
set nonumber
set showcmd
set autoindent
set cursorline
set nocursorcolumn
set laststatus=2
set hlsearch
set ic
set hidden
set autoread
set formatoptions=1
set lbr
set linebreak
set wrap
"set background=dark
colorscheme slate
"set t_Co=256

"""
"""""
""""""" SHORTCUTS 
"""""
"""

nmap <leader>ne :NERDTree<CR>
nmap <leader>nc :NERDTreeClose<CR>
nmap <C-]> :NERDTreeToggle<CR>
nmap <C-e> :vsplit<CR>
nmap <C-g> :split<CR>
nmap <C-t> :tabnew <CR>
nmap <C-l> :bn <CR>
nmap <C-h> :bp <CR>
nnoremap <C-P> :FZF <CR>

"""
"""""
""""""" PLUGINS CONFIGS 
"""""
"""
"
let NERDChristmasTree = 1
let NERDTreeHighlightCursorline = 1

au BufRead,BufNewFile *.todo setfiletype todo

filetype plugin indent on
autocmd Filetype php setlocal sts=4 sw=4 expandtab
autocmd Filetype perl setlocal sts=4 sw=4 expandtab
autocmd Filetype sh setlocal sts=4 sw=4 expandtab
autocmd Filetype javascript setlocal sts=2 sw=2 expandtab
autocmd Filetype sql setlocal sts=2 sw=2 expandtab
autocmd Filetype lua setlocal sts=2 sw=2 expandtab
autocmd Filetype haskell setlocal sts=2 sw=2 expandtab
autocmd Filetype scss setlocal sts=2 sw=2 expandtab
autocmd Filetype less setlocal sts=2 sw=2 expandtab
autocmd Filetype css setlocal sts=2 sw=2 expandtab
autocmd Filetype html setlocal sts=2 sw=2 expandtab
autocmd Filetype python setlocal sts=4 sw=4 expandtab
autocmd Filetype c setlocal sts=4 sw=4 expandtab}
autocmd Filetype ruby setlocal sts=2 sw=2 expandtab
autocmd Filetype vcl setlocal sts=4 sw=4 expandtab
autocmd Filetype json setlocal sts=4 sw=4 expandtab
autocmd Filetype erb setlocal sts=4 sw=4 expandtab
autocmd Filetype vue setlocal sts=2 sw=2 expandtab
au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

