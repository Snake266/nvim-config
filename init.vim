set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set number


call plug#begin('~/.local/share/nvim/plugged')
"Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --racer-completer --omnisharp-completer --tern-completer' }
Plug 'racer-rust/vim-racer'
call plug#end()

autocmd BufReadPost *.rs setlocal filetype=rust

" Required for operations modifying multiple buffers like rename.

set hidden
let $RUST_SRC_PATH="/usr/local/src/rustc/src"
let g:racer_cmd = "/home/georgii/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

"let g:LanguageClient_serverCommands = {
"    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
"    \ }

" Automatically start language servers.
"let g:LanguageClient_autoStart = 1

" Maps K to hover, gd to goto definition, F2 to rename
"nnoremap <silent> K :call LanguageClient_textDocument_hover()
"nnoremap <silent> gd :call LanguageClient_textDocument_definition()
"nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()
