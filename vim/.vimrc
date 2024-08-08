call plug#begin()                       " vim-plug plugins will be downloaded there"
Plug 'bluz71/vim-moonfly-colors'
Plug 'vim-airline/vim-airline'          " nice colored bar the the bottom of the file
Plug 'tpope/vim-fugitive'               " git versioning and bar
Plug 'sheerun/vim-polyglot'             " syntax highlightning for different languages
Plug 'ervandew/supertab'                " tab autocomplete
Plug 'jiangmiao/auto-pairs'             " auto close brackets
Plug 'bfrg/vim-cpp-modern'
call plug#end()                         " vim-plugs should not be declared below this."=====================================

syntax on
colorscheme moonfly

let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1


set number "Number lines
set hlsearch "Highlights the search
set nowrap "Lets line continue forever
set ignorecase "Search cases ignore upper case
set autoindent "Tabs/Indentation
set expandtab
set tabstop=4
set softtabstop=4
autocmd BufWritePre * %s/\s\+$//e "Deletes all trailing white space
set novisualbell "No noise
set mouse=a "Mouse !
set ruler " (x,y) bottom right
set showcmd "Shows cmds you are typing

" makes it so that your 'yanked' (pasted) text can be copied to the rest of the computer
set clipboard^=unnamed,unnamedplus

" Opens a terminal that will be to the right of the screen, terminal size should be smaller 1!!!
command Vt :rightb :vert :terminal ++cols=80

set cursorline
set noshowmode

set guifont=DejaVuSansMonoPowerline:h11

autocmd filetype c nnoremap zz :w <CR>:!gcc % -o %:r && ./%:r<CR>


