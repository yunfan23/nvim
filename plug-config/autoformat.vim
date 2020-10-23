let g:python3_host_prog="$HOME/anaconda3/bin/python"
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
au BufWrite * :Autoformat
noremap <F3> :Autoformat<CR>
let g:formatdef_autopep8 = "'autopep8 - --range '.a:firstline.' '.a:lastline"
let g:formatters_python = ['autopep8']
