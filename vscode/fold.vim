let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1

nmap zuz <Plug>(FastFoldUpdate)

let g:fastfold_savehook = 0
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:fastfold_fold_command_suffixes =
     \['x','X','a','A','o','O','c','C','r','R','m','M','i','n','N']

let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring	= 1
let b:SimpylFold_fold_docstring = 1
let g:SimpylFold_fold_import = 1
let b:SimpylFold_fold_import = 1
let g:SimpylFold_fold_blank = 1
let b:SimpylFold_fold_blank = 1

set foldmethod=indent
au FileType * exe "normal zR"
set nofoldenable

nnoremap <space> za
vnoremap <space> zf
