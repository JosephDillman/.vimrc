" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()         
filetype plugin indent on 

" Install Plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install Plugins
call plug#begin('~/.vim/plugged')
Plug 'haya14busa/incsearch.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/seoul256.vim'
call plug#end()

" Plugin settings
map /  <Plug>(incsearch-forward)
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }
let g:seoul256_background = 235

colo seoul256
set ignorecase
syntax enable
set showmatch
set number
set cursorline
nnoremap j gj
nnoremap k gk
nnoremap <Tab> <Esc>
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
