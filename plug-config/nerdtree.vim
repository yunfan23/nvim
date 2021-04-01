"########################################
" NerdTree
"########################################
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter *
            \   if !argc() && !exists("s:std_in")
            \ |   Startify
            \ |   wincmd w
            \ | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-n> :NERDTreeToggle<CR>
