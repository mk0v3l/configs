" nnoremap <SPACE> <Nop>
" let mapleader = "\<Space>"
let mapleader = ';'
nnoremap <silent> <leader> :WhichKey ';'<CR>
set timeoutlen=500
nnoremap <S-p> :m .-2<CR>==
nnoremap <S-m> :m .+1<CR>==
" autocmd BufEnter * lcd %:p:h
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
let NERDTreeShowHidden=1
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
" Plug 'https://github.com/mg979/docgen.vim'
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
" Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
" " Plug 'https://github.com/glepnir/dashboard-nvim'
" Plug 'junegunn/fzf'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
" Plug 'rbgrouleff/bclose.vim'
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
Plug 'terryma/vim-multiple-cursors'
" Plug 'https://github.com/preservim/tagbar'
" Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'ryanoasis/vim-devicons'
" Plug 'reedes/vim-wheel'
Plug 'https://github.com/github/copilot.vim.git'
" Plug 'JASONews/glow-hover'
Plug 'liuchengxu/vim-which-key'
set encoding=UTF-8
call plug#end()

let g:wheel#map#mouse = -1  


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

" set Copilot enable

" nnoremap geh <cmd>Telescope find_files hidden=true<cr>
" map <S-D>  :Telescope find_files hidden=true<CR>

" map <C-Left>  :bprevious<CR>
" map <C-Right> :bnext<CR>

set splitbelow splitright

map <C-Left>  <C-w>h
map <C-Right> <C-w>l
map <C-Up>  <C-w>k
map <C-Down>  <C-w>j

imap <C-Left> <Esc> <C-w>h
imap <C-Right> <Esc><C-w>l
imap <C-Up>  <Esc><C-w>k
imap <C-Down>  <Esc><C-w>j

" map <C-l> :source %<CR>
map <C-l> :source ~/.config/nvim/init.vim<CR>
map <Leader>m :bnext<CR>
map <Leader>l :bprevious<CR>
map <Leader>; i

imap <C-t> <Esc>:sp term://zsh<CR>i<CR>
" tmap <C-q> <C-\><C-n>:q<CR>
tmap <C-s> <C-\><C-n>
tmap <C-q> <C-\><C-n>:q<CR>
tmap <Leader>, <C-\><C-n>:q<CR>
tmap <Leader>: <C-\><C-n>:q<CR>
tmap <Leader>; <C-\><C-n>
tmap <C-Left>  <C-\><C-n><C-w>h
tmap <C-Right>  <C-\><C-n><C-w>l
tmap <C-Up>  <C-\><C-n><C-w>k
tmap <C-Down>  <C-\><C-n><C-w>j
tmap <Esc> <C-\><C-n>
" tmap <C-q> <C-\><C-n> :bprevious <CR> :bnext<CR>
" tmap <C-q> <C-\><C-n> :bprevious <CR> :bnext<CR>
" unmap <C-t>
map <C-t> :sp term://zsh<CR>i<CR>
map <Leader>, :sp term://zsh<CR>i<CR>
map <Leader>: :vs term://zsh<CR>i<CR>
" map <Leader>q :set splitabove<CR> :sp term://zsh<CR>i<CR>:set splitbelow
" map <Leader>s :vs term://zsh<CR>i<CR>
" map <C-Left>  gT
" map <C-Right> gt

imap <Leader>, <Esc>:sp term://zsh<CR>i<CR>
imap <Leader>: <Esc>:vs term://zsh<CR>i<CR>

" k,e kd,dsf df,sdf,;::;;; f sz

map <C-s> :w<CR>
map <C-q> :q<CR>
map <S-q> :q!<CR>
map <Leader>s :w! /home/mkovel/tmp//%:t<CR>
imap <C-s> <Esc>:w<CR>
imap <C-q> <Esc>:q<CR>
imap <Leader>s <Esc> :w! /home/mkovel/tmp//%:t<CR>
" nmap <leader>Right :bprevious<CR>
" nmap <leader>Left   :bnext<CR>
" nnoremap <SPACE-C> :bprevious<CR>
" nnoremap <SPACE>Left   :bnext<CR>
" nnoremap <silent> <leader>Right :bprevious<CR>
" nnoremap <silent> <leader>Left :bnext<CR>


" nnoremap <space-f>     :NERDTreeTabsToggle<CR>
" nnoremap <S-t> :TerminalVSplit zsh<CR>


nnoremap <C-f> :Telescope find_files cwd=/home/mkovel hidden=true<CR>
" nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-d> :NERDTreeToggle<CR>
nnoremap <C-d> :NERDTreeToggle <CR>
colorscheme nord 




let &t_SI = "\e[6 q]"

autocmd InsertEnter,InsertLeave * set cul!
set nowrap
set showcmd

noremap <S-h> b
noremap <S-j> 5j
noremap <S-k> 5k
noremap <S-L> w
map <Leader>v :vs 
map <Leader>h :sp 

map <S-Up> 5k
map <S-Down> 5j
" map <C-Right> w
" map <C-Left> b
map <S-Right> w
map <S-Left> b
" inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
" nnoremap <esc> :noh<return><esc>
inoremap <expr> <S-Tab> pumvisible() ? coc#_select_confirm() : "<S-Tab>"

" move lines

" nnoremap <C-p> :m-2<CR>
" nnoremap <C-m> :m+<CR>
" unbind <Enter>
" map <C-p> :m-2<CR>
" map <C-m> :m+<CR>

" inoremap <A-Up> <Esc>: m-2<CR>
" inoremap <A-Down> <Esc> :m+<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" keyset ("n", "gd", "<Plug>(coc-definition)", {silent = true})
" keyset ("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
" keyset ("n", "gi", "<Plug>(coc-implementation)", {silent = true})
" keyset ("n", "gr", "<Plug>(coc-references)", {silent = true})

" xnoremap <A-Up> :m-2<CR>gv=gv
" xnoremap <A-Down> :m'>+<CR>gv=gv

imap <C-a> <Esc>:Commentary<CR>i
map <C-a> :Commentary<CR>
nmap <F1> :TagbarToggle<CR>

nmap <C-h> :sp temp<CR> 
nmap <C-v> :vs N<CR> 
" inoremap <C-a> <Esc> :Commentary<CR>
" vnoremap <C-a> :Commentary<CR> 

