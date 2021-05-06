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
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-sandwich'
Plug 'asvetliakov/vim-easymotion'
Plug 'unblevable/quick-scope'
Plug 'tpope/vim-surround'
call plug#end()
