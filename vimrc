set t_Co=256

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
" Plugin 'kien/ctrlp.vim'
Plugin 'Shougo/unite.vim'
Plugin 'SirVer/ultisnips'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
"Install vim-snippets
Bundle "honza/vim-snippets"
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/syntastic'
Plugin 'roktas/syntastic-more'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'corntrace/bufexplorer'
Plugin 'godlygeek/csapprox'
Plugin 'klen/python-mode'
Plugin 'gregsexton/gitv'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
" Plugin 'Shougo/neocomplete'
" Plugin 'Shougo/neosnippet'
" Plugin 'Shougo/neosnippet-snippets'
Plugin 'jiangmiao/auto-pairs'
" Plugin 'mmozuras/vim-github-comment'
Plugin 'mattn/emmet-vim'

call vundle#end()            " required
filetype plugin indent on

map <F2> :NERDTreeToggle<CR>

syntax enable
set number
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set cursorline
set showmatch

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

set laststatus=2

set timeoutlen=1000 ttimeoutlen=0

colorscheme molokai

set backspace=2

let g:UltiSnipsExpandTrigger="<1>"
let g:UltiSnipsJumpForwardTrigger="<c-b"
let g:UltiSnipsJumpBackwardTrugger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

syntax enable

command WQ wq
command Wq wq
command W w
command Q q

command Y !go run %

" Python-mode
" " Activate rope
" " Keys:
" " K             Show python docs
" " <Ctrl-Space>  Rope autocomplete
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator
" modes)
" " ]]            Jump on next class or function (normal, visual, operator
" modes)
" " [M            Jump on previous class or method (normal, visual, operator
" modes)
" " ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1
"
"" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
"" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1
"
" " Enable breakpoints plugin
 let g:pymode_breakpoint = 1
 let g:pymode_breakpoint_bind = '<leader>b'
"
"" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
"
"
" " Use <leader>l to toggle display of whitespace
" nmap <leader>l :set list!<CR>
" " automatically change window's cwd to file's dir
" set autochdir
"
" " I'm prefer spaces to tabs
" set tabstop=4
" set shiftwidth=4
" set expandta
" :Y
" ::w
" "
" "
" "]
set foldlevelstart=10
set nofoldenable

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'
