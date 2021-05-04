"##############################################################################
" author: Yunfan
" v1: 22 oct 2020
" v2: 04 nov 2020
"##############################################################################
" vscode neovim extension
if exists('g:vscode')
  " VS Code extension
  source $HOME/.config/nvim/vscode/plugins.vim
  source $HOME/.config/nvim/vscode/settings.vim
  source $HOME/.config/nvim/vscode/keymappings.vim
  source $HOME/.config/nvim/vscode/easymotion.vim
else
  source $HOME/.config/nvim/vim-plug/plugins.vim
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/signify.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/devicons.vim
  source $HOME/.config/nvim/plug-config/ale.vim
  source $HOME/.config/nvim/plug-config/nerdcommenter.vim
  source $HOME/.config/nvim/plug-config/nerdtree.vim
  source $HOME/.config/nvim/plug-config/indent.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/session.vim
  source $HOME/.config/nvim/plug-config/floaterm.vim
  source $HOME/.config/nvim/themes/airline.vim
  source $HOME/.config/nvim/general/functions.vim
  source $HOME/.config/nvim/keys/which-key.vim
  source $HOME/.config/nvim/keys/mappings.vim
  source $HOME/.config/nvim/general/settings.vim
endif
