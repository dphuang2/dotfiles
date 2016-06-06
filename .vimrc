set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')

Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'vim-airline/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'zenburn'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ________________________________________________________AFTER PLUGINS_______________________________________________ 

"<C-P> to :CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"<F5> to :buffers
nnoremap <F5> :buffers<CR>:buffer<Space>

" Automatically start NERDTree
" autocmd vimenter * NERDTree
" Map Ctrl+N to Nerd Tree
map <C-n> :NERDTreeToggle<CR>
" Keep Airline from disappearing when NERDTree is gone
set laststatus=2

" Make backspace work properly in ConEmu
inoremap <Char-0x07F> <BS>
nnoremap <Char-0x07F> <BS>

set backspace=2 " make backspace work like most other apps

" For fast navigation
set relativenumber

syntax enable                   " Enable syntax highlighting

set hlsearch                    " Highlight search results
set incsearch                   " Jump to search results as you type

set softtabstop=4               " 4-space tabs
set shiftwidth=4
set expandtab
set autoindent			" auto indent

set number                      " Show line numbers
set cursorline                  " Highlight line cursor is on

syntax enable			" enable language syntax

if !has("gui_running")
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
    colorscheme solarized
endif
" _________________________________FOR GVIM__________________________________

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
  colorscheme solarized
endif

:set guioptions-=L  "remove left-hand scroll bar
:set guioptions-=m
:set guioptions-=T
