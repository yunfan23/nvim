" let g:python3_host_prog="$HOME/miniconda3/bin/python"
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
" au BufWrite * :Autoformat
noremap <F3> :Autoformat<CR>
let g:formatters_python = ['black']
" let g:run_all_formatters_python = 1
" let g:formatter_yapf_style = 'facebook'
" let g:autoformat_verbosemode=1
