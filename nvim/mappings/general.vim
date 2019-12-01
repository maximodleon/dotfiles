let mapleader=","
" let maplocalleader="-" TODO learn more about localleader

" Make it so I do not have to hit shift key to enter commands
nnoremap ; :
nnoremap : ;
nnoremap <leader>r :source ~/.config/nvim/general.vim<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR> <leader>q :q<CR>

" Quickly call external programs
nnoremap <leader>> :!<space>

"Copy/paste from register
vnoremap <leader>cc "*y
map <leader>vv "*p