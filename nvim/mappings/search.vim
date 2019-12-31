" Language server
nmap <leader>ld <Plug>(coc-definition)zz
noremap <leader>lD :call CocAction('jumpDefinition', 'vsplit')<CR>zz
nmap <leader>la <Plug>(coc-reference)
nmap <leader>lr <Plug>(coc-rename)
noremap <leader>lh :call CocAction('doHover')<CR>
noremap <leader>lO :Vista<CR>
noremap <leader>lp :CocList diagnostics<CR>

" Quickfix
nnoremap <silent> <UP> :cope<CR>
nnoremap <silent> <DOWN> :cclose<CR>
nnoremap <silent> <leader>cn :cnext<CR>
nnoremap <silent> <leader>cp :cprev<CR>
nnoremap <silent> <RIGHT> :cnext<CR>
nnoremap <silent> <LEFT> :cprev<CR>

" Make many of the jump commands also centre on search term
nnoremap n nzz
nnoremap N Nzz
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz
nnoremap * *zz
nnoremap # #zz
nnoremap <leader>, :nohlsearch<CR>
nnoremap <leader>/ :silent grep<space>
nnoremap <leader>co :cw<CR>
nnoremap <leader>cc :ccl<CR>


" vnoremap <c-q><c-r> :%DB g:db_url<CR>
" nnoremap <c-q><c-s> :DB g:db_url =

nnoremap <BS> :b#<CR>
let g:vista_sidebar_width = 45
let g:vista_disable_statusline = 1

" Ensure you have installed some decent font to show these pretty
" symbols, then you can enable icon for the kind.
" Sneak
let g:sneak#label = 1
" Set ag as the grep progam
if executable('rg') 
   set grepprg=rq\ --vimgrep
endif

let g:vista#renderer#enable_icon = 1
let g:vista_icon_indent = ["▸", ""]

" The default icons can't be suitable for all the filetypes,
" you can extend it as you wish
let g:vista#renderer#icons = {
      \ "function": "ﬦ",
      \ "module": " ",
      \ "variable": "\ufb18",
      \ "constant": ""
      \}

let g:vista_default_executive = 'coc'

" supertab completions
" tabbing moves down the completion list
" from top to bottom
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'



" ----- NERDtree -----------
nnoremap <silent><leader>\ :NERDTreeToggle<CR>
nnoremap <silent><leader>f :Files<CR>
nnoremap <silent><leader>r :Buffers<CR>
" nnoremap <silent><leader>p :Clap files<CR>
" nnoremap <silent><leader>b :Clap buffers<CR>
" nnoremap <silent><leader>c :Clap command<CR>
