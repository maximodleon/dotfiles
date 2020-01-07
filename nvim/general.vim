syntax enable

" Colors and styling
highlight Comment cterm=italic
colorscheme challenger_deep

"Spaces and tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" UI config
set encoding=utf-8
" set inccommand=nosplit
" set list
set number
set relativenumber
set ruler
set cursorline
set smartindent
set autoindent
set wrap
set linebreak
set wildmenu
set lazyredraw
set showmatch
" set noshowmode
" set showtablinei=2
" set shortmess+=c
set updatetime=300
set signcolumn=yes

" Searching
set incsearch
set hlsearch
set smartcase
set ignorecase

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10

set nobackup
set nowritebackup
set noswapfile
set hidden
set history=100
set path +=**
set splitbelow
set splitright

set diffopt=vertical
set completeopt=menu,menuone,preview,noselect,noinsert
":au BufEnter * if &buftype == 'terminal' | :startinsert | endif
autocmd TermOpen term://* startinsert
autocmd BufLeave term://* stopinsert

if has('macunix')
  set rtp+=/usr/local/opt/fzf
  else 
    set rtp+=~/.fzf
endif

function! CreateCenteredFloatingWindow()
    let width = float2nr(&columns * 0.8)
    let height = float2nr(&lines * 0.8)
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    au BufWinLeave <buffer> exe 'bw '.s:buf
endfunction

function! OpenTerm(cmd)
    call CreateCenteredFloatingWindow()
    call termopen(a:cmd, { 'on_exit': function('OnTermExit') })
endfunction

function! OpenEmptyTerm()
  call OpenTerm('zsh')
endfunction

function! OpenTig()
   call OpenTerm('tig')
endfunction

function! OnTermExit(job_id, code, event) dict
    if a:code == 0
        bd!
    endif
endfunction
