call togglebg#map("<F5>")

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

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
