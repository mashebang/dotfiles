
"" |  |_|  ||   _   ||       ||  | |  ||       ||  _    ||   _   ||  |  | ||       ||  |
"" |       ||  |_|  ||  _____||  |_|  ||    ___|| |_|   ||  |_|  ||   |_| ||    ___||  |
"" |       ||       || |_____ |       ||   |___ |       ||       ||       ||   | __ |  |
"" |       ||       ||_____  ||       ||    ___||  _   | |       ||  _    ||   ||  ||__|
"" | ||_|| ||   _   | _____| ||   _   ||   |___ | |_|   ||   _   || | |   ||   |_| | __
"" |_|   |_||__| |__||_______||__| |__||_______||_______||__| |__||_|  |__||_______||__| VIM


"
""
"""
"""""
""""""" PLUGINS
"""""
"""
""
"

set rtp+=~/.fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'wakatime/vim-wakatime'
Plugin 'airblade/vim-gitgutter'
Plugin 'xero/blaquemagick.vim'
Plugin 'alvan/vim-closetag'
Plugin 'aserebryakov/vim-todo-lists'
Plugin 'chemzqm/vim-jsx-improve'
Plugin 'yuezk/vim-js'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'mhinz/vim-startify'
Plugin 'cohama/agit.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sleuth'
Plugin 'davidyorr/vim-es6-unused-imports'
Plugin 'prettier/vim-prettier'
Plugin 'eslint/eslint'
Plugin 'dense-analysis/ale'
"
""
"""
"""""
"""""""  VISUAL PLUGINS
"""""
"""
""
"
Plugin 'thiagoalessio/rainbow_levels.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ryanoasis/vim-devicons'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'fcpg/vim-fahrenheit'
Plugin 'vim-airline/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'nanotech/jellybeans.vim'
Plugin 'glepnir/oceanic-material'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ap/vim-css-color'
Plugin 'felixhummel/setcolors.vim'
Plugin 'flazz/vim-colorschemes'

call vundle#end()



"
""
"""
"""""
""""""" VIM VARIABLES
"""""
"""
""
"

set nocompatible
syntax on
set mouse=a
set list
set relativenumber
set noautochdir
set showcmd
set autoindent
set nocursorline
set nocursorcolumn
set relativenumber
set laststatus=2
set hlsearch
set ic
set incsearch
set hidden
set autoread
set formatoptions=1
set lbr
set linebreak
set nowrap
set t_Co=256
set tabstop=2
set wildmenu




""" folding settings

"""set foldmethod=syntax "syntax highlighting items specify folds  
"set foldcolumn=2 "defines 1 col at window left, to indicate folding  
"let javaScript_fold=1 "activate folding by JS syntax  

""" for 80 column highlight
colorscheme gruvbox

highlight OverLength ctermbg=black ctermfg=white guibg=#999999
match OverLength /\%81v.\+/
highlight EndOfBuffer ctermfg=NONE guifg=NONE

"
""
"""
"""""
""""""" SHORTCUTS
"""""
"""
""
"

nmap <leader>ne :NERDTree<CR>
nmap <leader>nc :NERDTreeClose<CR>
nmap <leader>nf :NERDTreeFind<CR>
nmap <leader>f :ALEFix<CR>
nmap <C-]> :NERDTreeToggle<CR>
nmap <C-e> :vsplit<CR>
nmap <C-g> :split<CR>
nmap <C-t> :tabnew <CR>
nmap <C-l> :bn <CR>
nmap <C-h> :bp <CR>
nmap <C-k> :bdelete <CR>
nnoremap <C-P> :FZF <CR>
nnoremap <leader>tb :hi Normal guibg=NONE ctermbg=NONE<CR>
nnoremap <leader>git :Agit<CR>


"
""
"""
"""""
""""""" PLUGINS CONFIGS
"""""
"""
"

let mapleader = ","
let maplocalleader = ",,"

let NERDChristmasTree = 0
let NERDTreeHighlightCursorline = 0
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx,*.js,*.ts'
let g:syntastic_javascript_checkers=['eslint']
let g:webdevicons_conceal_nerdtree_brackets=2

let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='firefox'


"
"""
"""""
""""""" AIRLINE SHIET
"""""
"""
"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme = 'deus'
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_error = '??????'
let g:ale_sign_warning = '???'
" let g:ale_sign_column_always = 1
" let g:ale_fixers = {'javascript': ['eslint']}
" let g:ale_lint_on_save = 1


"""
"""""
""""""" filetype CONFIGS
"""""
"""

filetype plugin on
au BufRead,BufNewFile *.todo setfiletype todo
filetype plugin indent on

autocmd Filetype php setlocal sts=4 sw=4 expandtab
autocmd Filetype perl setlocal sts=4 sw=4 expandtab
autocmd Filetype sh setlocal sts=4 sw=4 expandtab
autocmd Filetype javascript setlocal sts=2 sw=2 expandtab
autocmd Filetype typescript setlocal sts=2 sw=2 expandtab
autocmd Filetype sql setlocal sts=2 sw=2 expandtab
autocmd Filetype lua setlocal sts=2 sw=2 expandtab
autocmd Filetype haskell setlocal sts=2 sw=2 expandtab
autocmd Filetype scss setlocal sts=2 sw=2 expandtab
autocmd Filetype less setlocal sts=2 sw=2 expandtab
autocmd Filetype css setlocal sts=2 sw=2 expandtab
autocmd Filetype html setlocal sts=2 sw=2 expandtab
autocmd Filetype python setlocal sts=4 sw=4 expandtab
autocmd Filetype c setlocal sts=4 sw=4 expandtab
autocmd Filetype ruby setlocal sts=2 sw=2 expandtab
autocmd Filetype vcl setlocal sts=4 sw=4 expandtab
autocmd Filetype json setlocal sts=4 sw=4 expandtab
autocmd Filetype erb setlocal sts=4 sw=4 expandtab
autocmd Filetype vue setlocal sts=2 sw=2 expandtab

"""
"""""
""""""" AUTOCMDS """""
"""

au BufNewFile,BufRead *.jsx,*.ts,*.tsx setlocal filetype=javascript
au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
autocmd BufWinEnter,BufWritePost *.js,*.jsx,*.ts,*.tsx execute "ES6ImportsHighlight"
autocmd BufWinEnter,BufWritePost *.js,*.jsx,*.ts,*.tsx execute "hi Normal guibg=NONE ctermbg=NONE"
autocmd VimEnter,ColorScheme * execute "hi Normal guibg=NONE ctermbg=NONE"
"""au BufNewFile,BufRead * :NERDTreeFind<CR><C-w>l


""" specific triggers and events
autocmd BufWritePost *.pug execute "!cd ~/proj/t9-resolveai-site && npm run build:html"
