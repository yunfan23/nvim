" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_detect_modified=1
" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Just show the filename (no path) in the tab
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_c = '%t'

" remove the ugly arrow right hand side
let g:airline_skip_empty_sections = 1
