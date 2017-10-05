set nocompatible                        " be iMproved, required
so ~/.vim/plugins.vim                   " Plugin action
let mapleader = ',' 			"Use comma as default leader
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
"-------------Deoplete---------------"
let g:deoplete#enable_at_startup = 1
"-------------Emmet------------------"
let g:user_emmet_mode='a'
"-------------Search-----------------"
set hlsearch
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
set incsearch

"-------------Visuals---------------"
set termguicolors			"Use GUI Colors if we can
colorscheme NeoSolarized		"Colorscheme
set background=dark			"Always use dark themes
set nonumber				"No Linenumbers
set foldcolumn=2
hi FoldColumn guibg=None
hi vertsplit guifg=bg guibg=bg
set linespace=15 			"GUI only
set t_CO=256				"Use 256 colors for terminal vim
set guioptions-=l			"No Scrollbars!
set guioptions-=L
set guioptions-=r
set guioptions-=R

"-------------Split Mappings-------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"-------------Mappings-------------"
" Make it easy to edit .vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>es :edit ~/.vim/snippets

" Get rid of search hilight.
nmap <Leader><space> :nohlsearch<cr>

" Browse Tags.
nmap <C-R> :CtrlPBufTag<cr>
nmap <Leader>f :tag<space>

"-------------Laravel Specific--------"
nmap <Leader>lr :e routes/web.php<cr>
nmap <Leader>lm :! php artisan make:


"-------------Auto-Commands--------"
" Autoreload config file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost $MYVIMRC source %
augroup END

"-----------PHP General settings --"
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
let g:php_cs_fixer_level = "psr2"                   " options: --level (default:symfony)
augroup php
	autocmd BufRead,BufNewFile *.php set tabstop=4
augroup END
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Drupal *.module and *.install files.
augroup module
	autocmd BufRead,BufNewFile *.module set filetype=php
	autocmd BufRead,BufNewFile *.install set filetype=php
	autocmd BufRead,BufNewFile *.test set filetype=php
	autocmd BufRead,BufNewFile *.inc set filetype=php
	autocmd BufRead,BufNewFile *.profile set filetype=php
	autocmd BufRead,BufNewFile *.view set filetype=php
augroup END
