" change preview windows color
highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_cache_omnifunc=0
let g:ycm_error_syymbol = '>>'
let g:ycm_warning_symbol= '>*'
let g:ycm_key_invoke_completion='<S-Space>'
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:SuperTabClosePreviewOnPopupClose = 1

" disable auto hover
let g:ycm_auto_hover=''
let s:lsp_ft_maps = 'python'

augroup ycm_settings | au!
    exe printf('au FileType %s call Ycm_mappings()', s:lsp_ft_maps)
augroup end

func! Ycm_mappings() abort
    " toggle hover
    nmap <silent><buffer> K <plug>(YCMHover)
  endfunc
