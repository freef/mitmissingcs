" VIM CONFIG

" General =====================================================================
set nocompatible       " Turn off VI compatability so VIM can be happy
set shortmess+=I       " Disable startup message
set backspace=indent,eol,start    " Make backspace behave reasonably
set hidden             " Allow hidden buffers
set noerrorbells visualbell t_vb= " Blink cursor on error instead of beeping
set matchpairs+=<:>    " use % to jump between pairs of <> brackets
set ttyfast            " Smooth redraw with multiple windows
set mouse+=a           " Enable mouse

" Security ====================================================================
set modelines=0        " Prevent vim from auto-running code

" Colors ======================================================================
syntax on              " Show syntax highlighting
" from https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
set t_Co=256           " set 256 colors
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

" UI Config ===================================================================
set number             " Show line numbers
set relativenumber     " Show relative numbers
set showcmd            " Show command in bottom bar
set showmatch          " Highlight matching braces when cursor is over brace
set laststatus=2       " Always show status bar even with one window
set scrolloff=5        " Show five lines below cursor when possible
set ruler              " Always show cursor position
set linebreak          " Only break lines at word ends
set wrap               " Wrap lines if longer than window
set tabstop=4          " Set one tab length to four spaces
set shiftwidth=4       " Set auto format indents to four spaces
set softtabstop=4      " When insering tab, replace with four spaces
set expandtab          " Convert all tabs to spaces

" Search ======================================================================
set ignorecase         " Set case-insensitive search
set smartcase          " If search contains caps search is case sensitive
set incsearch          " Enable search while typing
set hlsearch           " Enable highlighting of search results

" Keybindings =================================================================
" Map jj to <ESC> in insert mode, jh to <ESC> in visual mode, disable Q 
inoremap jj <ESC>
vnoremap jh <ESC>
nnoremap <CTRL>p :CtrlP<CR>
nmap Q <Nop>

" Leader Shortcuts ============================================================
let mapleader=","      " Set <Leader> to command 
nnoremap <leader>ev :tabnew $MYVIMRC<CR>
nnoremap <leader>lv :source $MYVIMRC<CR>
map <leader>q gqip
map <leader><space> :let @/=''<cr>

" Disable Crutches ============================================================
cnoremap <Down> :echoe "Use j"<CR>
cnoremap <Left> :echoe "Use h"<CR>
cnoremap <Right> :echoe "Use l"<CR>
cnoremap <Up> :echoe "Use k"<CR>

inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>

nnoremap <Down> :echoe "Use j"<CR>
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>

vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>
vnoremap <Up> <NOP>

" Plugins =====================================================================
filetype off
filetype plugin indent on " enable file type detection
set autoindent
set runtimepath^=~/.vim/bundle/ctrlp.vim

