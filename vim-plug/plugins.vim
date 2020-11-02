" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'liuchengxu/vim-which-key'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'honza/vim-snippets'
Plug 'ChristianChiarulli/far.vim'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'kassio/neoterm'
Plug 'benmills/vimux'
Plug 'mhinz/vim-startify'
Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'
Plug 'rbgrouleff/bclose.vim'
Plug 'junegunn/goyo.vim'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'unblevable/quick-scope'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mileszs/ack.vim'
Plug 'Yggdroot/indentLine'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

if exists('g:vscode')
	Plug 'asvetliakov/vim-easymotion'
endif
call plug#end()
