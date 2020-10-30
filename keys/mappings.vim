inoremap jk <Esc>
inoremap jj <Esc>
inoremap kj <Esc>

" commentary shortcut re-mapping
nnoremap <Space>/ :Commentary<CR>
vnoremap <Space>/ :Commentary<CR>
nnoremap <C-/> :Commentary<CR>
vnoremap <C-/> :Commentary<CR>
inoremap ZZ <Esc>:wqa<CR>

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>

" Toggle terminal on/off (neovim)
nnoremap <C-T> :call TermToggle(12)<CR>
inoremap <C-T> <Esc>:call TermToggle(12)<CR>
tnoremap <C-T> <C-\><C-n>:call TermToggle(12)<CR>

map <F5> :call CompileRun()<CR>
nmap <silent> <C-_> <Plug>(pydocstring)

" mapping key to add quote around the word
nnoremap <Leader>q" ciW""<Esc>P
nnoremap <Leader>q' ciW''<Esc>P
nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P
