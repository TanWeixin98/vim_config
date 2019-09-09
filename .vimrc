"install vim plug"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"plug ins managed by vim-plug"
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'

call plug#end()

"plugin configs"

"lightline"
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

"nerdtree"
map <C-x> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1

"vim configs"
syntax enable 
set number

set tabstop=2

au Filetype python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4 smartindent

"backspace to fix delete issue"
set backspace=2

"show status"
set laststatus=2

"tab converts to space"
set expandtab

"show column and line info of the cursor"
set ruler

"show incomplete command"
set showcmd

"show menue when using tab completion for command"
set wildmenu

"ignore case when search"
set ignorecase

"keep cursor 5 lines from top when centering vertically"
set scrolloff=5

"wrap word"
set lbr

"copy indentation of previous line"
set ai
set si
