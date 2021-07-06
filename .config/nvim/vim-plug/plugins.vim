call plug#begin('~/.config/nvim/plugged')
    " Comment code
    Plug 'tpope/vim-commentary'
    Plug 'shinchu/lightline-gruvbox.vim'
    Plug 'morhetz/gruvbox'

    if exists('g:vscode')
        " Easy motion for VSCode
        Plug 'asvetliakov/vim-easymotion'
    else
        " Syntax support
        Plug 'sheerun/vim-polyglot'
        Plug 'Brettm12345/moonlight.vim'
        " Autopairs
	Plug 'mattn/emmet-vim'
        Plug 'jiangmiao/auto-pairs'
        " File explorer
	Plug 'preservim/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'itchyny/lightline.vim'
        " Icons
        Plug 'ryanoasis/vim-devicons'
        " Intellisense
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'HerringtonDarkholme/yats.vim'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'jason0x43/vim-js-indent'
    Plug 'pangloss/vim-javascript'
        " Autoclose tags
        Plug 'alvan/vim-closetag'
        " Ranger
        Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
        " Prettier
        Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
 	Plug 'cakebaker/scss-syntax.vim'
	"Python
	Plug 'tell-k/vim-autopep8'
    endif
call plug#end()
