set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
vundle#begin('$USERPROFILE/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" A tree explorer plugin for navigating the filesystem
Plugin 'The-NERD-tree'
" Beautiful dual light/dark, selective contrast, GUI/256/16 colorscheme
Plugin 'Solarized'

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

" Toggle BG in gVim
call togglebg#map("<F5>")

" Automatically start NERDTree and map Ctrl+N to Nerd Tree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" 256 colors and utf8 working in vim
function Set-CodePage
{
    [CmdletBinding()]
    param(
        [ValidateSet("UTF8", "Default")]
        [string]$CodePage
    )

    $codePageToNum = @{
        UTF8 = 65001;
        Default = 437;
    }

    chcp $codePageToNum[$CodePage] | Out-Null
}

if(Test-Path Env:ConEmuBuild)
{
    Set-CodePage UTF8
}

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

syntax enable                   " Enable syntax highlighting

set hlsearch                    " Highlight search results
set incsearch                   " Jump to search results as you type

set softtabstop=4               " 4-space tabs
set shiftwidth=4
set expandtab

" Goodies
set number                      " Show line numbers
set cursorline                  " Highlight line cursor is on

syntax enable
set background=dark
colorscheme solarized
