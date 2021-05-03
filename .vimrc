" Vim with all enhancements
"source $VIMRUNTIME/vimrc_example.vim
"
" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction



"################################################
"#################Enable plugins#################
"################################################

syntax on
set nocompatible
set encoding=UTF-8
filetype on
filetype plugin indent on
set modifiable
let NERDTreeShowHidden=1
set laststatus=2

"################################################
"####################Colors######################
"################################################

set background=light 
"colo ThemerVim
if exists('+termguicolors')
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
endif

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

set backspace=indent,eol,start

"################################################
"#############Set relative numbers###############
"################################################

set updatetime=100
set number relativenumber
set nolist
filetype plugin indent on
augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
autocmd FileType scss setl iskeyword+=@-@

"################################################
"#################Finding files##################
"################################################

"Search down into subfolders
"Provide tab completition forf related tasks
set path+=**

"Display all matching files whrn we tab complete
set wildmenu

"Now we can:
" -Hit tab to :find partial match
" -Use * to make it fuzzy
" -Consider: :b lets you autocomplete any open buffer

"################################################
"####################Vim plug####################
"################################################

call plug#begin('~/.vim/plugged')
	"Colors
Plug 'arcticicestudio/nord-vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'morhetz/gruvbox'

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'itchyny/lightline.vim'
  "Emmet
Plug 'mattn/emmet-vim'
  "Show Errors
  "Ts Hylight
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jason0x43/vim-js-indent'
Plug 'pangloss/vim-javascript'
  "AutoCompletition
Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Rainbow brackets
 Plug 'frazrepo/vim-rainbow'
  "Auto Pairs
 Plug 'jiangmiao/auto-pairs'
  "Prittier
Plug 'prettier/vim-prettier', { 'do': 'yarn install'}
	"Scss
 Plug 'cakebaker/scss-syntax.vim'
Plug 'ryanoasis/vim-devicons'

	"Python
Plug 'tell-k/vim-autopep8'
call plug#end()


""""""""""""""""
"""""Colors"""""
""""""""""""""""
let g:airline_powerline_fonts = 1
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_bold_vertical_split_line = 1
let g:nord_uniform_diff_background = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_underline = 1

"""""""""""""""""
"ColorSchemes""""
"""""""""""""""""

"colorscheme nord
colorscheme gruvbox
let g:lightline = { 'colorscheme': 'gruvbox' }
set background=light 


"NerdTreeTooggle
map <C-b> :NERDTreeToggle<CR>

"Coc config
let g:coc_disable_startup_warning = 1
let g:coc_global_extensions = [ 'coc-tsserver' ]
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
:imap ii <Esc>
map <silent>Îz dw <CR>
source ~/.vim/coc.vim

"Prittier config
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0


set tabstop=4
set shiftwidth=4

let g:jsx_ext_required = 0
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff=1
