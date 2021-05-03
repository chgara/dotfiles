"################################################
"#############Set relative numbers###############
"################################################

set updatetime=100
set number relativenumber
set nolist
augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
autocmd FileType scss setl iskeyword+=@-@
set encoding=utf-8
set fileencoding=utf-8
set mouse=a
set ruler
"set cursorline
set splitbelow
set splitright
set smartindent
set autoindent
set expandtab
set smarttab

set tabstop=4
set shiftwidth=4

"Prittier config
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:jsx_ext_required = 0
