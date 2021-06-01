"########################################
" Python
"########################################

" formatter setting
au FileType python setlocal formatprg=yapf\ -

" open tagbar on opening
" au FileType python TagbarOpen()

" associate with file type
au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

" Python Auto insert
autocmd BufNewFile *py :call SetPythonTitle()
func SetPythonTitle()
    call setline(1,"# Copyright (c) Yunfan Zhang All Rights Reserved.")
    call append(line("."), "\# File Name: ".expand('%:t'))
    call append(line(".")+1, "\# Author: Yunfan Zhang")
    call append(line(".")+2, "\# Mail: yunfan.zhang23@gmail.com")
    call append(line(".")+3, "\# Github: https://github.com/yunfan23")
    call append(line(".")+4, "\# Blog: http://www.zhangyunfan.tech/")
    call append(line(".")+5, "\# Created Time: ".strftime("%Y-%m-%d",localtime()))
    call append(line(".")+6, "")
    call append(line(".")+7, "")
    " normal!Godef run_main():
    " normal!opass
    " normal!o
    " normal!o
    " normal!Goif '__main__' == __name__:
    " normal!orun_main()
    " normal!o
endfunc

" Set the errorformat.
compiler pyunit

" Set 'makeprg': this allows you to call :make on any .py file and
" run all of the unit tests in the current working directory.
" Ensure you have this file.
"setlocal makeprg=${HOME}/.config/nvim/ftplugin/alltests.py

let b:ale_disable_lsp = 1
" Check Python files with flake8
let b:ale_linters = ['flake8']
let b:ale_linters_ignore = ['pyright']
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = [
\   'remove_trailing_lines',
\   'isort',
\   'ale#fixers#generic_python#BreakUpLongLines',
\   'autopep8',
\   'yapf',
\]
