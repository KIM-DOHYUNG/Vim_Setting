"Basic Settings
syntax on
set number
set ruler
set hlsearch
set smartcase
set smartindent
set autoindent
set cindent
set mouse=a
set shiftwidth=4
set tabstop=4
set t_Co=256


"ctags
set tags=/usr/src/linux-source-4.10.0/tags


set tags=/tags


"Vundle Settings
set nocompatible
set rtp+=~/.vim/bundle/vundle/
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
nmap <C-f> : NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1

nmap <F10> : TlistToggle<CR>
let Tlist_Use_Right_Window=1

set laststatus=2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%#warningmsg#
set statusline+=${SyntasticStatuslineFlag()}

set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0



"Shortcut Settings
vmap      <Tab>          :><CR>
vmap      <Backspace>    :<<CR>
vmap      <C-c>          y<CR>
nmap      <C-v>          p<CR>
imap      <C-v>          <ESC>p<insert>
imap      <RightMouse>   <ESC>
nmap      <RightMouse>   <insert>

map       <F2>           :w!<CR>
map       <F3>           :wq!<CR>
map       <F4>           :q!<CR>
map       <C-F5>         :!./%<<CR>
map       <C-F7>         :!gcc % -o %<<CR>

nnoremap   &             :nohl<CR>
nnoremap   <             :tp<CR>
nnoremap   >             :tn<CR>


"Color Settings
colorscheme molokai
