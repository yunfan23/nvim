" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_detect_modified=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
