" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'lepture/vim-jinja'
Plug 'gko/vim-coloresque'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
call plug#end()


" Nerd tree starts automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Nerd tree closes when the only tab is NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Plugins settings -------------------------
" vim-rainbow
let g:rainbow_active = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Basic configs
filetype plugin on
set encoding=UTF-8
set number relativenumber
set showcmd
syntax on
colorscheme onedark 

" Identation settings
set expandtab
set shiftwidth=4
set softtabstop=4
" set autoindent
set smartindent

" Split window
set splitbelow splitright

" Status bar
" set laststatus=2
" set statusline=\ %M
" set statusline+=\ %y
" set statusline+=\ %r
" set statusline+=\ %F
" Rigth side
" set statusline+=%=
" set statusline+=%l
" set statusline+=/
" set statusline+=%L

" Vim mappings
" Move between windows using <Ctrl>+<j> and <Ctrl>+<k>
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
nmap <c-h> <c-w>h<c-w><Bar>
nmap <c-l> <c-w>l<c-w><Bar>
" set wmw=0
" Change the size of vertical splits
map - <C-W>-
map + <C-W>+
map <C-n> :NERDTreeToggle<CR>
" Change the vim's tab
nnoremap <C-h> :tabprevious<CR>                                                                            
nnoremap <C-l> :tabnext<CR>
nnoremap <C-i> :tabnew<CR>

" 
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l
