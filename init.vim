"##############################################################################
" author: Yunfan
"##############################################################################
if exists('g:vscode')
  source $HOME/.config/nvim/vscode/plugins.vim
  source $HOME/.config/nvim/vscode/settings.vim
  source $HOME/.config/nvim/vscode/keymappings.vim
else
  source $HOME/.config/nvim/vim-plug/plugins.vim
  source $HOME/.config/nvim/vim-plug/plugconfig.vim
  source $HOME/.config/nvim/themes/airline.vim
  source $HOME/.config/nvim/keys/which-key.vim
  source $HOME/.config/nvim/keys/mappings.vim
  source $HOME/.config/nvim/ftplugin/python.vim
  source $HOME/.config/nvim/ftplugin/cpp.vim
  source $HOME/.config/nvim/general/functions.vim
  source $HOME/.config/nvim/general/settings.vim
endif
