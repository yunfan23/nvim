source $HOME/.config/nvim/vim-plug/ale.vim
source $HOME/.config/nvim/vim-plug/easymotion.vim
source $HOME/.config/nvim/vim-plug/startify.vim
source $HOME/.config/nvim/vim-plug/devicons.vim
source $HOME/.config/nvim/vim-plug/nerdtree.vim
source $HOME/.config/nvim/vim-plug/fzf.vim
source $HOME/.config/nvim/vim-plug/floaterm.vim
source $HOME/.config/nvim/vim-plug/tex.vim
source $HOME/.config/nvim/vim-plug/tagbar.vim
source $HOME/.config/nvim/vim-plug/asyncrun.vim
source $HOME/.config/nvim/vim-plug/leaderf.vim
source $HOME/.config/nvim/vim-plug/vista.vim
source $HOME/.config/nvim/vim-plug/indent.vim
source $HOME/.config/nvim/vim-plug/airline.vim
source $HOME/.config/nvim/vim-plug/snip.vim
if has("nvim")
  source $HOME/.config/nvim/vim-plug/telescope.vim
  source $HOME/.config/nvim/vim-plug/coc.vim
  " source $HOME/.config/nvim/vim-plug/lsp.vim
else
  source $HOME/.config/nvim/vim-plug/repl.vim
  source $HOME/.config/nvim/vim-plug/ycm.vim
endif
