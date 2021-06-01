" PLUGIN: FZF
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <C-f> :Files<CR>
" nnoremap <silent> <Leader>f :Rg<CR>
" nnoremap <silent> <Leader>/ :BLines<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_buffers_jump = 1

let g:fzf_preview_window = 'right:50%'
let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Tell FZF to use RG - so we can skip .gitignore files even if not using
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
" If you want gitignored files:
"let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden'

let $FZF_DEFAULT_OPTS="
      \ --layout=reverse
      \ --info=inline
      \ --height=80%
      \ --multi
      \ --preview '([[ -f {}  ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {}  ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
      \ --color='hl:148,hl+:154,pointer:032,marker:010,bg+:237,gutter:008'
      \ --bind '?:toggle-preview'
      \ --bind 'ctrl-a:select-all'
      \ --bind 'ctrl-y:execute-silent(echo {+} | pbcopy)'
      \ --bind 'ctrl-e:execute(echo {+} | xargs -o vi)'
      \ --bind 'ctrl-v:execute(code {+})'
      \ "
