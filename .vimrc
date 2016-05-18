set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" A tree explorer plugin for navigating the filesystem
Plugin 'The-NERD-tree'
" Beautiful dual light/dark, selective contrast, GUI/256/16 colorscheme
Plugin 'Solarized'
" Airline
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Automatically start NERDTree
autocmd vimenter * NERDTree
" Map Ctrl+N to Nerd Tree
map <C-n> :NERDTreeToggle<CR>

syntax enable                   " Enable syntax highlighting

set hlsearch                    " Highlight search results
set incsearch                   " Jump to search results as you type

set softtabstop=4               " 4-space tabs
set shiftwidth=4
set expandtab
set autoindent

" Goodies
set number                      " Show line numbers
set cursorline                  " Highlight line cursor is on

syntax enable
set background=dark
colorscheme solarized
" _________________________________FOR GVIM__________________________________

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

:set guioptions-=L  "remove left-hand scroll bar
:set guioptions-=m
:set guioptions-=T
