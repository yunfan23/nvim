" map leader+r to toggle repl
nnoremap <leader>r :REPLToggle<Cr>
" position repl windown to right
let g:repl_position = 3
let g:repl_ipython_version = '7'
let g:repl_cursor_down = 1
let g:repl_python_automerge = 1
let g:repl_program = {
  \  'python': 'ipython',
  \  'python-debug': 'ipdb3',
  \  'default': 'zsh',
  \  }

let g:repl_exit_commands = {
  \ 'ipython': 'quit()',
  \ 'python3': 'quit()'
  \ }

autocmd Filetype python nnoremap <leader>d <Esc>:REPLDebugStopAtCurrentLine<Cr>
autocmd Filetype python nnoremap <leader>n <Esc>:REPLPDBN<Cr>
autocmd Filetype python nnoremap <leader>s <Esc>:REPLPDBS<Cr>
