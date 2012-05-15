let $PYTHONPATH=$PYTHONPATH . "/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages" 

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

colorscheme mayansmoke 

"show line numbers by default"
set number

"syntax highlighting on + enable filetype plugins
syntax on
filetype on
filetype plugin on

set foldmethod=indent
set foldlevel=99
set nopaste
set autoindent
set nosmartindent

let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
"Better python complete
inoremap <C-space> <C-x><C-o>

let mapleader="," 
noremap <leader>l :set nonumber!<CR>:set foldcolumn=0<CR>
map <leader>n :NERDTreeToggle<CR>
nmap <leader>a <Esc>:Ack!

"Command-T Flush"
set autochdir
augroup CommandTExtension
  autocmd!
  autocmd FocusGained * CommandTFlush
  autocmd BufWritePost * CommandTFlush
augroup END

"Ropevim
map <leader>j :RopeGotoDefinition<CR>
nnoremap <C-S-o> :RopeOrganizeImports<CR>0<CR><CR>
nnoremap <C-S-i> :RopeAutoImport<CR>
let ropevim_vim_completion=1
let ropevim_enable_autoimport=1
let ropevim_extended_complete=1

"moving around windows"
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
