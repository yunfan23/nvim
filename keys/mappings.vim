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

" disable arrow key
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

map <F5> :call CompileRun()<CR>

nmap <silent> <Leader>j <Plug>(coc-diagnostic-next-error)
nmap <silent> <Leader>k <Plug>(coc-diagnostic-prev-error)

nmap <silent> <C-_> <Plug>(pydocstring)
