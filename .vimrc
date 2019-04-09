"========== Basic Settings ==========
syntax on
set number
set ruler
set hlsearch
set smartcase
set smartindent
set autoindent
set cindent
set cursorline
set cursorcolumn
set hidden
set mouse=a
set shiftwidth=4
set tabstop=4
set t_Co=256
set encoding=utf-8 nobomb
set fileencodings=utf-8 nobomb
set backspace=indent,eol,start



"========== Color Settings ==========
"colorscheme molokai
colorscheme codedark


"========== Vundle Settings ==========
set nocompatible
filetype off
set rtp+=~/.vim/Vundle.vim
call vundle#begin()
Plugin 'AutoComplPop'
Plugin 'The-NERD-tree'
Plugin 'taglist.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'inkarkat/vim-ingo-library'
Plugin 'inkarkat/vim-mark'
Plugin 'kien/ctrlp.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'tomasiser/vim-code-dark'
call vundle#end()
filetype plugin indent on



"========== Plugin Settings ==========
"[NERDTree]
nmap <F9>  : NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
"[taglist]
nmap <F10> : TlistToggle<CR>
let Tlist_WinWidth=60
let Tlist_Use_Right_Window=1
"[vim-airline]
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'codedark'
"[vim-mark]
nmap		n			<Plug>MarkSearchCurrentNext
nmap		N			<Plug>MarkSearchCurrentPrev
nmap 		<leader>1	<Plug>MarkSearchGroup1Next
nmap 		<leader>2	<Plug>MarkSearchGroup2Next
nmap 		<leader>3	<Plug>MarkSearchGroup3Next
nmap 		<leader>4	<Plug>MarkSearchGroup4Next
nmap 		<leader>5	<Plug>MarkSearchGroup5Next
nmap 		<leader>6	<Plug>MarkSearchGroup6Next
nmap 		<leader>!	<Plug>MarkSearchGroup1Prev
nmap 		<leader>@	<Plug>MarkSearchGroup2Prev
nmap 		<leader>#	<Plug>MarkSearchGroup3Prev
nmap 		<leader>$	<Plug>MarkSearchGroup4Prev
nmap 		<leader>%	<Plug>MarkSearchGroup5Prev
nmap 		<leader>^	<Plug>MarkSearchGroup6Prev


"========== Basic Shortcut Settings ==========
vmap		<tab>		:><CR>
vmap		<backspace>	:<<CR>
map			<F2>		:w!<CR>
map			<F3>		:wq!<CR>
map			<F4>		:q!<CR>
nmap 		<leader>w 	:enew<CR>
nmap 		<leader>] 	:bnext<CR>
nmap 		<leader>[ 	:bprevious<CR>
nmap 		<leader>q 	:bp <BAR> bd #<CR>
nmap 		gw			:tabnew<CR>
nmap 		g] 			:tabnext<CR>
nmap 		g[ 			:tabprevious<CR>
nmap 		gq 			:tabclose<CR>


"========== ctags ==========
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR>
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR>

if filereadable("cscope.out")
	cs add $PWD/cscope.out
else
	cs add $CSCOPE_DB
endif

"========== ctags ==========
set tags+=$HOME/Public/MyOS/tags,$HOME/Work/linux-4.9.47/tags



