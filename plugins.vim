filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" General
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'   
Plugin 'iCyMind/NeoSolarized'
Plugin 'mattn/emmet-vim'
" Autocomplete
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'Shougo/deoplete.nvim'
" Search and Replace
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
" PHP
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'tobyS/vmustache'                                        "Needed for PDV
Plugin 'tobyS/pdv'
call vundle#end()            " required
filetype plugin indent on    " required
