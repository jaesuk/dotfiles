set nocompatible
filetype off

call plug#begin('~/.vim/plugged')    
    " vim-airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " NERDTree
    Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

    " fugitive.vim
    Plug 'tpope/vim-fugitive'

    " Solarized Colorscheme for Vim
    "Plug 'altercation/vim-colors-solarized'

    " onedark for Vim
    Plug 'joshdick/onedark.vim'

    " vim-polyglot
    Plug 'sheerun/vim-polyglot'

    " Vim Dev Icons
    Plug 'ryanoasis/vim-devicons'

    " Perl
    Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' } 
call plug#end()



" Common
set autoindent
set background=dark
set cindent
set expandtab
set hlsearch
set mouse=a
set nu
set shiftwidth=4
set showmatch
set smarttab
set smartindent
set tabstop=4
set encoding=UTF-8



" Solarized
"syntax enable
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256



" onedark 

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark



" Airline
let g:airline_theme='onedark'



" vim-poly
set nocompatible



"
" NERDTree
"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
let NERDTreeShowHidden=1

