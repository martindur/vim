set nocompatible		" required
filetype off			" required

" set the runtime path to include Vundle initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
"Plugin 'nview/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tikhomirov/vim-glsl'
Plugin 'andymass/vim-matchup'
"Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/Auto-Pairs'
"Plugin 'frazrepo/vim-rainbow'
"Plugin 'othree/html5.vim'
"Plugin 'mattn/emmet-vim'
Plugin 'alvan/vim-closetag'
Plugin 'sheerun/vim-polyglot'

"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'

Plugin 'tweekmonster/django-plus.vim'

Plugin 'dart-lang/dart-vim-plugin'
Plugin 'thosakwe/vim-flutter'

" All of your Plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Default Spacing
set tabstop=4
set shiftwidth=4
set expandtab

" Rainbow
let g:rainbow_active = 1
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" Docstrings on folding
let g:SimpylFold_docstring_preview=1

au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ | set softtabstop=4
    \ | set shiftwidth=4
    \ | set textwidth=79
    \ | set expandtab
    \ | set autoindent
    \ | set fileformat=unix

au BufNewFile, BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ | set softtabstop=2
    \ | set shiftwidth=2

au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

" YouCompleteMe Customize
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" python highlighting
let python_highlight_all=1
syntax on

colors zenburn

" Hidden files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']

" Line numbering
set nu

set clipboard=unnamed

