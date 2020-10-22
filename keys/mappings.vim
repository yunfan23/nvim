inoremap jk <Esc>
inoremap jj <Esc>
inoremap kj <Esc>

" commentary shortcut re-mapping
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>
inoremap ZZ <Esc>:wqa<CR>

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>

" Toggle terminal on/off (neovim)
nnoremap <S-t> :call TermToggle(12)<CR>
inoremap <S-t> <Esc>:call TermToggle(12)<CR>
tnoremap <S-t> <C-\><C-n>:call TermToggle(12)<CR>
