inoremap jk <Esc>
inoremap jj <Esc>
inoremap kj <Esc>

" commentary shortcut re-mapping
nnoremap <Space>/ :Commentary<CR>
vnoremap <Space>/ :Commentary<CR>
inoremap ZZ <Esc>:wqa<CR>

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>

" tag bar
nnoremap <Leader>t :TagbarToggle<CR>

" ctrl+s save in insert mode
imap <C-s> <Esc>:w!<CR>i

" use ctrl + e to list buffers
nnoremap <C-e> :set nomore <Bar> :ls <Bar> :set more <CR>:b<Space>

" quick movement from official web
" move to first non-black text
inoremap II <Esc>I
" move to end of line
inoremap AA <Esc>A
" open a new line
inoremap OO <Esc>O
" change what is right of the cursor
inoremap CC <Esc>C
" change the whole sentence
inoremap SS <Esc>S
" delete the whole line
inoremap DD <Esc>dd
" undo
inoremap UU <Esc>u
