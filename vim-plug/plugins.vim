" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" disable ale lsp
let g:ale_disable_lsp = 1

" Run PlugInstall if there are missing plugins
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif


call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'lepture/vim-jinja'
Plug 'gko/vim-coloresque'
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
Plug 'preservim/tagbar'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/gv.vim'
Plug 'junegunn/goyo.vim'
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
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'kassio/neoterm'
Plug 'benmills/vimux'
Plug 'mhinz/vim-startify'
Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'
Plug 'rbgrouleff/bclose.vim'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'unblevable/quick-scope'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mileszs/ack.vim'
Plug 'Yggdroot/indentLine'
Plug 'Chiel92/vim-autoformat'
Plug 'luochen1990/rainbow'
Plug 'ryanoasis/vim-devicons'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'voldikss/vim-floaterm'
Plug 'machakann/vim-sandwich'
Plug 'unblevable/quick-scope'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'lervag/vimtex'
Plug 'godlygeek/tabular'
Plug 'rking/ag.vim'
Plug 'neomake/neomake'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-endwise'
Plug 'tomasr/molokai'
Plug 'neovim/nvim-lspconfig'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }


call plug#end()
