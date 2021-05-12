"########################################
" Python
"########################################

" autopep8 setting
au FileType python setlocal formatprg=autopep8\ -

" associate with file type
au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

au FileType python map <silent> <leader>b oimport pdb; pdb.set_trace()<esc>
au FileType python map <silent> <leader>B Oimport pdb; pdb.set_trace()<esc>

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
    normal!Goif '__main__' == __name__:
    normal!omain()
    normal!o
endfunc
