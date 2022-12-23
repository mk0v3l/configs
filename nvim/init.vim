
" Default mapping
" let g:multi_cursor_use_default_mapping=0
" let g:multi_cursor_start_word_key      = '<C-n>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" let g:multi_cursor_skip_key            = '<C-x>'
" let g:multi_cursor_select_all_word_key = '<A-n>'

" let g:multi_cursor_quit_key            = '<Esc>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_next_key            = '<C-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
"
let g:coc_disable_startup_warning = 1
" let g:doge_doc_standard_cpp

" g:doge_mapping :<C-y>
nmap ,d <Plug>(DocGen)
nmap ,D <Plug>(DocGen!)
nmap ,x <Plug>(DocBox)
nmap ,X <Plug>(DocBox!)

set number
set relativenumber
syntax on
set tabstop=4
set backspace=indent,eol,start
set incsearch
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set mouse=a
set autoindent
set smarttab
set softtabstop=4
set shiftwidth=4
call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/mg979/docgen.vim'
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
" Plug 'https://github.com/glepnir/dashboard-nvim'
Plug 'junegunn/fzf'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'rbgrouleff/bclose.vim'
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/preservim/tagbar'
set encoding=UTF-8
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''


let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'onedark'
set showtabline=2

nmap <C-Right> :bprevious<CR>
nmap <C-Left>   :bnext<CR>


nnoremap <C-t> :TerminalVSplit zsh<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-d> :NERDTreeToggle<CR>
colorscheme nord 




let &t_SI = "\e[6 q]"

autocmd InsertEnter,InsertLeave * set cul!
set nowrap
set showcmd

noremap <C-h> b
noremap <C-j> 5j
noremap <C-k> 5k
noremap <C-L> w


map <C-Up> 5k
map <C-Down> 5j
map <C-Right> w
map <C-Left> b
map <A-Right> w
map <A-Left> b
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
" nnoremap <esc> :noh<return><esc>

" move lines
nnoremap <C-p> :m-2<CR>
nnoremap <C-m> :m+<CR>
" inoremap <A-Up> <Esc>: m-2<CR>
" inoremap <A-Down> <Esc> :m+<CR>


" xnoremap <A-Up> :m-2<CR>gv=gv
" xnoremap <A-Down> :m'>+<CR>gv=gv

map <C-a> :Commentary<CR>
nmap <F1> :TagbarToggle<CR>
" inoremap <C-a> <Esc> :Commentary<CR>
" vnoremap <C-a> :Commentary<CR> 

