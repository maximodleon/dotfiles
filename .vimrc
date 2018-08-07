" --------------
" vim-plug config
call plug#begin('~/.vim/bundle')
" themes
Plug 'tomasr/molokai'
Plug 'sts10/vim-pink-moon'
Plug 'alvarocz/vim-fresh'
Plug 'baines/vim-colorscheme-thaumaturge'
Plug 'roosta/srcery'
Plug 'bluz71/vim-moonfly-colors'
Plug 'exitface/synthwave.vim'
Plug 'alessandroyorba/arcadia'
Plug 'dylanaraps/crayon'
" end themes
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'kannokanno/previm'
Plug 'unblevable/quick-scope'
Plug 'godlygeek/tabular'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'plasticboy/vim-markdown'
Plug 'terryma/vim-multiple-cursors'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'janko-m/vim-test'
Plug 'valloric/youcompleteme', {'do': './install.py --tern-completer'}
Plug 'ryanoasis/vim-devicons' 
Plug 'ap/vim-css-color'
Plug 'yuttie/comfortable-motion.vim'
call plug#end()
" Basic settings
" --------------
execute pathogen#infect()
syntax enable " enable syntax processing
colorscheme thaumaturge
filetype plugin on
" filetype indent on " load filetype-specific indent files
let mapleader=","

" use spaces as indent. Source: http://vim.wikia.com/wiki/Indenting_source_code
set softtabstop=2 " Number of spaces in tab when editing
set shiftwidth=2 " Number of spaces in tab when editing

set expandtab " tabs are spaces
set number " show line numbers
set relativenumber " relative line numbers
set showcmd " show command in bottom bar
set cursorline " hightlight current line
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches
set foldenable " enable folding
set foldlevelstart=10 " open most folds on start
set foldnestmax=10 " 10 nested fold max
set foldmethod=indent " fold based on indent level

" ----------
" Mappings
" ----------
nnoremap <space> za " folding
nnoremap <leader><space> :nohlsearch<CR> " set search highlighting off
" nnoremap j gj " cursor movement
" nnoremap k gk " cursor movement
nnoremap <leader>nt :NERDTreeToggle<CR> " toggle nerdtree explorer
" map split window movement
nnoremap <leader>fwl <C-w>h " focus window on the left
nnoremap <leader>fwb <C-w>j " focus window below  
nnoremap <leader>fwa <C-w>k " focus window above  
nnoremap <leader>fwr <C-w>l " focus window on the right 
nnoremap <leader>+    <C-w>+ " increate current window height
nnoremap <leader>-    <C-w>- " decrease current window height
nnoremap <leader>=    <C-w>= " make all windows the same size
nnoremap <leader><    <C-w>< " decrease current window width
nnoremap <leader>>    <C-w>> " increase current window width
nnoremap <leader>mwl <C-w>H " move current window to far left
nnoremap <leader>mwb <C-w>J " move current window to bottom
nnoremap <leader>mwt <C-w>K " move current window to top
nnoremap <leader>mwr <C-w>L " move crreut window to far right

" ---------------------
" Settings for plugins
" ---------------------

" ALE (https://github.com/w0rp/ale)
let g:ale_sign_error = '●'
let g:ale_linters = { }
let g:ale_linters.javascript = ['eslint', 'standard']
let g:ale_fix_on_save = 1

" vim-airline (https://github.com/vim-airline/vim-airline) 
let g:airline_powerline_fonts=1
let g:airline_detect_spelllang=0
let g_airline_detect_spell=0
let g:airline_skip_empty_sections=1
let g:airline_section_x=''
let g:airline_section_c = airline#section#create(['%f'])

" vim-markdown (https://github.com/plasticboy/vim-markdown)
set conceallevel=2
let g:vim_markdown_new_list_item_indent=2 " automatically indent new items in list 

" previm (https://github.com/kannokanno/previm)
let g:previm_open_cmd='firefox'
augroup PrevimSettings
  autocmd!
  autocmd BufNewFile, BufRead *.{md, mdwn, mkd, mkdn, mark*} set filetype=markdown
augroup END 


" YouCompleteMe (https://github.com/valloric/youcompleteme)
let g:ycm_key_list_select_completion=['<Down>'] " change the binding for select so it can play nice with UltiSnips
let g:ycm_key_list_previous_completion=['<Up>'] " change the binding for select so it can play nice with UltiSnips
" Tabular (https://github.com/godlygeek/tabular)

" vim-test (https://github.com/janko-m/vim-test)

" emmet-vim (https://github.com/mattn/emmet-vim)

" UltiSnips (https://github.com/sirver/ultisnips)

" NERD Commenter (https://github.com/scrooloose/nerdcommenter)
let g:NERDSpaceDelims = 1 " add spaces after comment delimiters by default
let g:NERDTrimTrailingWhitespace = 1 " enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1
" surround (https://github.com/tpope/vim-surround)
