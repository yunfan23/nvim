"########################################
" Python
"########################################

" formatter setting
au FileType python setlocal formatprg=autopep8\ -

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
