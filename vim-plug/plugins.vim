" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'lepture/vim-jinja'
Plug 'gko/vim-coloresque'
Plug 'honza/vim-snippets'
Plug 'liuchengxu/vim-which-key'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'honza/vim-snippets'
Plug 'ChristianChiarulli/far.vim'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf',  {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
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
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tmhedberg/SimpylFold'
Plug 'Konfekt/FastFold'
Plug 'Chiel92/vim-autoformat'
Plug 'preservim/tagbar'
Plug 'luochen1990/rainbow'
Plug 'ryanoasis/vim-devicons'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'voldikss/vim-floaterm'
Plug 'machakann/vim-sandwich'
Plug 'unblevable/quick-scope'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'lervag/vimtex'

call plug#end()
