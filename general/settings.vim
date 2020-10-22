"########################################
""########################################
" author: yunfan
" version: v1 17 Jun 2020
"        : v2 15 Jul 2020
"        : v3 17 Oct 2020
"########################################
syntax on
filetype plugin indent on

"########################################
"" Settings
"########################################
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") 
            \ | exec "normal! g'\"" | endif
imap jj <Esc>
set hls
set encoding=utf-8
set nocompatible
set incsearch
set noic
set number

"set cursorline
hi cursorline cterm=none term=none
hi cursorlinenr ctermfg=yellow term=none cterm=none
" set line number to dark grey
hi LineNr ctermfg=DarkGrey

au WinEnter * setlocal cursorline
au WinLeave * setlocal nocursorline

" Reloads vimrc after saving but keep cursor position
if !exists('*ReloadVimrc')
    fun! ReloadVimrc()
        let save_cursor = getcurpos()
        source $MYVIMRC
        call setpos('.', save_cursor)
    endfun
endif
au! BufWritePost $MYVIMRC call ReloadVimrc()

" access system clipboard
vmap '' :w !pbcopy<CR><CR>

" change cursor in insert and normal mode
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

"########################################
" Python
"########################################
" Minimal Config
set smartindent
set shiftwidth=4
set expandtab
set relativenumber

" Consistency
set tabstop=4
set smarttab

" proving the setting
set listchars=tab:>-,trail:-,nbsp:_
set list

" autopep8 setting
au FileType python setlocal formatprg=autopep8\ -

" improving backspace
set backspace=indent,eol,start
set textwidth=80

" highlight column after textwidth
set colorcolumn=+1

" set leader key
let g:mapleader = " "

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              	                " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %
