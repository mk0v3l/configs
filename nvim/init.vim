"  Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/Mofiqul/dracula.nvim'
Plug 'https://github.com/mg979/docgen.vim'
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
" Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
" " Plug 'https://github.com/glepnir/dashboard-nvim'
" Plug 'junegunn/fzf'
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

" Default settings
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
set splitbelow splitright
autocmd InsertEnter,InsertLeave * set cul!
set nowrap
set showcmd
let &t_SI = "\e[6 q]"
set clipboard+=unnamedplus 
" let mapleader = "\<Space>"
" nnoremap <SPACE> <Nop>
" unmap <k>
" set t_Co=256
" colorscheme solarized 




" KEY MAPPING

let mapleader = ';' " Leader Key

" Default Key Mapping
set background=dark
map m <Nop>
noremap k h
noremap l j
noremap o k
nnoremap m l
noremap j 0
noremap h @
noremap t o
noremap T O
map ù $

nnoremap <S-o>  <C-w>k
nnoremap <S-k>  <C-w>h
nnoremap <S-l>  <C-w>j
nnoremap <S-m> <C-w>l

map <C-y> :source ~/.config/nvim/init.vim<CR>
map <Leader>m :bnext<CR>
map <Leader>l :bprevious<CR>
map <Leader>; i

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
tmap <Esc> <C-\><C-n>map <C-s> :w<CR>
map <C-s> :w<CR>
map <C-q> :q<CR>
map <S-q> :q!<CR>
map <C-a-Q> :q!<CR>
map <C-S-Q> :q!<CR>
map <Leader>s :w! /home/mkovel/tmp//%:t<CR>
imap <C-s> <Esc>:w<CR>
imap <C-q> <Esc>:q<CR>
imap <Leader>s <Esc> :w! /home/mkovel/tmp//%:t<CR>
" noremap <S-h> b
noremap <C-k> b
" noremap <S-j> 5j
noremap <C-l> 5j
" noremap <S-k> 5k
" noremap <C-k> 5k
noremap <C-m> w 
" noremap <S-L> w
" noremap <C-L> w
noremap <C-o> 5k

map <Leader>v :vs 
map <Leader>h :sp 
nmap <C-v> :vs N<CR> 

map <S-Up> 5k
map <S-Down> 5j
" map <C-Right> w
" map <C-Left> b
map <S-Right> w
map <S-Left> b

" Color Scheme
colorscheme nord 

" Bookmark
let g:bookmark_sign = '♥'
let g:bookmark_no_default_key_mappings = 1
map <Leader>b :BookmarkToggle<CR>

" WhichKey
nnoremap <silent> <leader> :WhichKeyVisual ';'<CR>
set timeoutlen=5

" Move lines
nnoremap <C-u> :m .-2<CR>==
nnoremap <C-j> :m .+1<CR>==

" vmap <Leader>u :m .-2<CR>==
" vmap <Leader>j :m .+1<CR>==
" map <Leader>u :m .-2<CR>==
" map <Leader>j :m .+1<CR>==
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
" let g:doge_doc_standard_cpp


" DocGen
" g:doge_mapping :<C-y>
nmap ,d <Plug>(DocGen)
nmap ,D <Plug>(DocGen!)
nmap ,x <Plug>(DocBox)
nmap ,X <Plug>(DocBox!)

" map <Leader>t :term:<CR>i<CR>
let g:wheel#map#mouse = -1  

" airline
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

" Terminal
map <Leader>t :term<CR>i
imap <C-t> <Esc>:sp term://zsh<CR>i<CR>
map <C-t> :sp term://zsh<CR>i<CR>
map <Leader>, :sp term://zsh<CR>i<CR>
map <Leader>: :vs term://zsh<CR>i<CR>
imap <Leader>, <Esc>:sp term://zsh<CR>i<CR>
imap <Leader>: <Esc>:vs term://zsh<CR>i<CR>

" NERDTree
map <C-d> :NERDTreeToggle <CR>
map <Leader>d :NERDTreeToggle <CR>
map <Leader>f :NERDTreeFocus <CR>
" let NERDTreeMapJumpNextSibling='l'
let NERDTreeMapJumpPrevSibling='o'
" let NERDTreeMapOpenSplit='s'
let NERDTreeMapActivateNode='m'
let NERDTreeDirArrowsExpandable='l'
let NERDTreeShowHidden=1




" Telescope
nnoremap <C-f> :Telescope find_files cwd=/home/mkovel hidden=true<CR>

" Coc
let g:coc_disable_startup_warning = 1
" S-Tab for autocomplete coc
inoremap <expr> <S-Tab> pumvisible() ? coc#_select_confirm() : "<S-Tab>"

" goto def/ref
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Commentary
imap <C-a> <Esc>:Commentary<CR>i 
map <C-a> :Commentary<CR>

" Tagbar
nmap <F1> :TagbarToggle<CR>








" set Copilot enable

" nnoremap geh <cmd>Telescope find_files hidden=true<cr>
" map <S-D>  :Telescope find_files hidden=true<CR>

" map <C-Left>  :bprevious<CR>
" map <C-Right> :bnext<CR>


" map <C-Left>  <C-w>h
" map <C-h>  <C-w>h
" map <S-h>  <C-w>h
"




" map <C-Right> <C-w>l
" map <C-l> <C-w>l
" map <S-l> <C-w>l
" map <S-k> <C-w>l

" map <C-Up>  <C-w>k
" map <C-k>  <C-w>k
" map <S-k>  <C-w>k

" map <C-Down>  <C-w>j
" map <C-j>  0
" map <C-ù>  $
" map <S-j>  <C-w>j


" imap <C-Left> <Esc> <C-w>h
" imap <C-h> <Esc> <C-w>h
" imap <C-k> <Esc> <C-w>h

" imap <C-Right> <Esc><C-w>l
" imap <C-l> <Esc><C-w>l
" imap <C-m> <Esc><C-w>l

" imap <C-Up>  <Esc><C-w>k
" imap <C-k>  <Esc><C-w>k
" imap <C-k>  <Esc><C-w>k
" imap <C-o>  <Esc><C-w>k

" imap <C-Down>  <Esc><C-w>j
" imap <C-j>  <Esc><C-w>j
" imap <C-l>  <Esc><C-w>j

" map <C-l> :source %<CR>
" tmap <C-q> <C-\><C-n> :bprevious <CR> :bnext<CR>
" tmap <C-q> <C-\><C-n> :bprevious <CR> :bnext<CR>
" unmap <C-t>

" map <Leader>q :set splitabove<CR> :sp term://zsh<CR>i<CR>:set splitbelow
" map <Leader>s :vs term://zsh<CR>i<CR>
" map <C-Left>  gT
" map <C-Right> gt


" k,e kd,dsf df,sdf,;::;;; f sz

" nmap <leader>Right :bprevious<CR>
" nmap <leader>Left   :bnext<CR>
" nnoremap <SPACE-C> :bprevious<CR>
" nnoremap <SPACE>Left   :bnext<CR>
" nnoremap <silent> <leader>Right :bprevious<CR>
" nnoremap <silent> <leader>Left :bnext<CR>


" nnoremap <space-f>     :NERDTreeTabsToggle<CR>
" nnoremap <S-t> :TerminalVSplit zsh<CR>


" nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-d> :NERDTreeToggle<CR>

" colorscheme dracula


" inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
" nnoremap <esc> :noh<return><esc>

" move lines

" nnoremap <C-p> :m-2<CR>
" nnoremap <C-m> :m+<CR>
" unbind <Enter>
" map <C-p> :m-2<CR>
" map <C-m> :m+<CR>

" inoremap <A-Up> <Esc>: m-2<CR>
" inoremap <A-Down> <Esc> :m+<CR>


" keyset ("n", "gd", "<Plug>(coc-definition)", {silent = true})
" keyset ("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
" keyset ("n", "gi", "<Plug>(coc-implementation)", {silent = true})
" keyset ("n", "gr", "<Plug>(coc-references)", {silent = true})

" xnoremap <A-Up> :m-2<CR>gv=gv
" xnoremap <A-Down> :m'>+<CR>gv=gv
" nmap <C-h> :sp temp<CR> 
" inoremap <C-a> <Esc> :Commentary<CR>
" vnoremap <C-a> :Commentary<CR> 

function CapitalPythonTemplate()
    if expand('%:t') =~ '^[A-Z]'
        call setline('.', 'class '.expand('%:t:r').'():')
        call append(line('.'), '    def __init__(self')
        normal G$
    endif
endfunction
nmap <Leader>py :call CapitalPythonTemplate()<CR>

function MainPythonTemplate()
	call setline(1, '#!/usr/bin/env python3')
	call setline(2, '')
	call setline(3, 'def main():')
	call setline(4, '	print("Hello World!")')
	call setline(5, '')
	call setline(6, 'if __name__ == "__main__":')
	call setline(7, '	main()')
	normal gg3l$
endfunction

function MainCTemplate()
	call setline(1, '#include <stdio.h>')
	call setline(2, '')
	call setline(3, 'int main(int argc, char *argv[])')
	call setline(4, '{')
	call setline(5, '	printf("Hello World!");')
	call setline(6, '	return 0;')
	call setline(7, '}')
	normal gg5l$
endfunction

function MainCPlusTemplate()
	call setline(1, '#include <iostream>')
	call setline(2, '')
	call setline(3, 'int main(int argc, char *argv[])')
	call setline(4, '{')
	call setline(5, '	std::cout << "Hello World!" << std::endl;')
	call setline(6, '	return 0;')
	call setline(7, '}')
	normal gg3l$
endfunction

function MainJavaTemplate()
	call setline(1, 'public class '.expand('%:t:r').'{')
	call setline(2, '	public static void main(String[] args) {')
	call setline(3, '		System.out.println("Hello World!");')
	call setline(4, '	}')
	call setline(5, '}')
	normal gg2l$
endfunction

function InitClassIfCapJava()
	if expand('%:t') =~ '^[A-Z]'
	    call setline(1, 'public class '.expand('%:t:r').'{')
	    call setline(2, '	public '.expand('%:t:r').'(){')
	    call setline(3, '		')
	    call setline(4, '	}')
	    call setline(5, '}')
		normal gg2l$
	endif
endfunction

function InitCpp()
		let hppfile = expand('%:p:r').'.hpp'
		if filereadable(hppfile)
			let cmd = 'stubgen -qNlgn  ' . expand('%:p:r') . '.hpp'
			call system(cmd)
		endif
endfunction

function PreInitCpp()
	call InitCpp()
	edit %
endfunction

function GenerateCPP()
	execute "w"
	call InitCpp()
	let cppfile = expand('%:t:r').".cpp"
    execute "vs ".fnameescape(cppfile)
endfunction

map <Leader>c :call GenerateCPP()<CR>


function InitClassIfCapHpp()
    if expand('%:t') =~ '^[A-Z]'
		call setline(1, '#pragma once')
		" call setline(1, '#ifndef '.toupper(expand('%:t:r')).'_HPP')
		" call setline(2, '#define '.toupper(expand('%:t:r')).'_HPP')
		call setline(2, '')
		call setline(3, '')
		call setline(4, 'class '.expand('%:t:r').'{')
		call setline(5, 'public:')
		call setline(6, '	'.expand('%:t:r').'();')
		call setline(7, '	~'.expand('%:t:r').'();')
		call setline(8, '	')
		call setline(9, '};')
		call setline(10, '')
		" call setline(11, '#endif')
		normal gg8l$
		call GenerateCPP()

	endif
endfunction



augroup initLanguage
    autocmd!
	if !filereadable(expand("%:p"))
		autocmd VimEnter *.py call CapitalPythonTemplate()
		autocmd VimEnter main.py call MainPythonTemplate()
		autocmd VimEnter main.c call MainCTemplate()
		autocmd VimEnter main.cpp call MainCPlusTemplate()
		autocmd VimEnter Main.java call MainJavaTemplate()
		autocmd VimEnter main.java call MainJavaTemplate()
		autocmd VimEnter *.hpp call InitClassIfCapHpp()
		autocmd VimEnter *.java call InitClassIfCapJava()
		autocmd VimEnter *.cpp call PreInitCpp()
	" normal G$i
	endif
augroup END
" autocmd FileType text normal! Gihello\n
