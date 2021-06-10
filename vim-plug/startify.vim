let g:startify_session_dir = '~/.config/nvim/sessions'
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.bashrc' },
            \ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_custom_header = [
        \ '       _      ',
        \ ' __ __(_)_ _  ',
        \ '| |/ / /  ` \ ',
        \ '|___/_/_/_/_/ ',
        \]
