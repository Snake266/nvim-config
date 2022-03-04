set number
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set autoindent
set expandtab
set smartindent
set mouse=a

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'

"Tree file explorer
Plug 'preservim/nerdtree'

"completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Tagbar
Plug 'preservim/tagbar'

"TeX support
Plug 'lervag/vimtex'

call plug#end()

set encoding=UTF-8
nmap <F8> :TagbarToggle<CR>

"Hotkeys for tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-q> :tabclose<CR>
nnoremap <C-n> :tabnew<CR>

nnoremap <C-g> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
