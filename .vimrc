syntax on

set noerrorbells
set smartindent
set nu
set nowrap
set smartcase
set undodir=~/.vim/undodir
set undofile
set incsearch
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set pastetoggle=<F3>
set expandtab
set mouse=a

call plug#begin('~/vim/plugged')

"Plug 'dracula/vim', {'name':'dracula'}, 
Plug 'preservim/nerdtree'
Plug 'lyuts/vim-rtags'
Plug 'vim-utils/vim-man'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'Yohannfra/Vim-Goto-Header'
Plug 'dense-analysis/ale'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'drewtempelmeyer/palenight.vim'

"Plug 'jiangmiao/auto-pairs'

call plug#end()

"syntax on
set background=dark
colorscheme palenight
hi Normal ctermbg=None
hi LineNr ctermbg=None

let s:clip = '/mnt/c/Windows/System32/clip.exe'
if executable(s:clip)
  augroup WSLYank
    autocmd!
    autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
  augroup END
endif

:command NE NERDTree
nnoremap <F12> :GotoHeader <CR>
imap <F12> <Esc>:GotoHeader <CR>

autocmd FileType make set noexpandtab
command! Vb normal! <C-v> 




