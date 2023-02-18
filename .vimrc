syntax on

" Tabbing
set shiftwidth=4
set tabstop=4 
set softtabstop=4
" set smartindent
set autoindent
" set noexpandtab
set expandtab
set noerrorbells

set nowrap
set smartcase
set ignorecase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
" set hlsearch
set pastetoggle=<F2>
set number relativenumber
"set list

let mapleader = "-"
let maplocalleader = "\\"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap jk <esc>

""" latex compilation
" nnoremap <leader>i :! pdflatex -shell-escape %<cr><cr>
" nnoremap <leader>l :! lualatex -shell-escape %<cr><cr>

nnoremap <c-d> <c-d>zz
nnoremap <c-u> <c-u>zz

""" Make space more useful
nnoremap <space> za

""" uppercase whole line in insert mode
inoremap <c-u> <esc>VU<esc>A
" nnoremap <c-u> viwU<esc>

""" run actual line as shell-command
noremap <leader><cr> !!sh<CR>

" vnoremap <C-c> "+y  
" map <C-p> "+P

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"Invisible character colors
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

" unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>
set nocp

if has("autocmd")
	augroup templates
		autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
		autocmd BufNewFile *.py 0r ~/.vim/templates/skeleton.py
	augroup END
endif

""" file browser similiar to Nerdtree
inoremap <c-b> <ESC>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-b> <ESC>:Lex<cr>:vertical resize 30<cr>

" https://stackoverflow.com/questions/21316727/automatic-closing-brackets-for-vim
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
