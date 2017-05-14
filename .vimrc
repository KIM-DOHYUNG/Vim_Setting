"Basic Settings
syntax on
set number
set ruler
set hlsearch
set smartcase
set mouse=a
set shiftwidth=4
set tabstop=4
set t_Co=256

set tags=/work/achroimx_kernel/tags

"Vundle Settings
set nocompatible
set rtp+=~/.vim/bundle/vundle
filetype off
call vundle#begin()
Bundle 'gmarik/vundle'
Bundle 'git://git.wincent.com/command-t.git'
Plugin 'The-NERD-tree'
Plugin 'AutoComplPop'
Plugin 'taglist.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic'
call vundle#end()
filetype plugin indent on



"Plugin Settings
nmap <F9>  : NERDTreeToggle<CR>
let NERDTreeShowHidden=1

nmap <F10> : TlistToggle<CR>
let Tlist_Use_Right_Window=1

set laststatus=2

"set statusline+=%#warningmsg#
"set statusline+=${SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_auto_loc_list=1
"let g:syntastic_check_on_open=1
"let g:syntastic_check_on_wq=0



"Shortcut Settings
map <F2>    : w!<CR>
map <F3>    : wq!<CR>
map <F4>    : q!<CR>
map <C-F5>  : !./%<<CR>
map <C-F7>  : !gcc % -o %<<CR>




"Color Settings
colorscheme molokai
