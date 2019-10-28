set nocompatible              " be iMproved, required

" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Init VimPlug
call plug#begin('~/.vim/plugins')

Plug 'tpope/vim-obsession'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'scrooloose/nerdtree'

Plug 'Raimondi/delimitMate'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'flazz/vim-colorschemes'

Plug 'crusoexia/vim-monokai'

Plug 'vim-scripts/L9'

Plug 'vim-syntastic/syntastic'

Plug 'christoomey/vim-tmux-navigator'

Plug 'will133/vim-dirdiff'

" All of your Plugins must be added before the following line
call plug#end()            " required

" ############################################
" SET COMMANDS

" Allow non-visible buffers
set hidden

" Activate mouse functionality
set mouse=a

" show number lines
set number

" set GUI font/colors
if has('gui_running')
    set guifont=Hack\ Nerd\ Font\ 11
endif

" do not store global and local values in a session
" set ssop-=options
" do not store folds
" set ssop-=folds

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" colorscheme
syntax enable
set termguicolors
colorscheme monokai

" This is only necessary if you use "set termguicolors".
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" fixes glitch? in colors when using vim with tmux
"set background=dark
"set t_Co=256 "force 256-color

let g:airline_powerline_fonts = 1

let g:syntastic_shell = "/bin/bash"

" ############################################
" KEYMAPS

map <C-n> :NERDTreeToggle<CR>
