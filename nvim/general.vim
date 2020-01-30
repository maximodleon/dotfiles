syntax enable


" startify header
let g:startify_custom_header = [
 \'                   ____',
 \'                  (_  _)',
 \'        .  .       / /',
 \'     .`_.__..    / /',
 \'     \   o   /   / /',
 \'  Pru \ /   /  _/ /_',
 \'`. ~. `\___/./~. /.~`.',
 \'.``.`.``.~.`~.``.~`',
 \]

highlight Comment cterm=italic
colorscheme iceberg 

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
    let width = float2nr(&columns * 0.85)
    let height = float2nr(&lines * 0.85)
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

" Files + devicons + floating fzf
function! Fzf_dev()
  let l:fzf_files_options = '--preview "bat  --style=numbers,changes --color always {2..-1} | head -'.&lines.'"'
  function! s:files()
    let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
    return s:prepend_icon(l:files)
  endfunction

   function! s:prepend_icon(candidates)
     let l:result = []
     for l:candidate in a:candidates
       let l:filename = fnamemodify(l:candidate, ':p:t')
       let l:icon = WebDevIconsGetFileTypeSymbol(l:filename, isdirectory(l:filename))
       call add(l:result, printf('%s %s', l:icon, l:candidate))
     endfor
 
     return l:result
   endfunction
 
  function! s:edit_file(item)
    let l:pos = stridx(a:item, ' ')
    let l:file_path = a:item[pos+1:-1]
    execute 'silent e' l:file_path
  endfunction

  call fzf#run({
        \ 'source': <sid>files(),
        \ 'sink':   function('s:edit_file'),
        \ 'options': '-m --reverse ' . l:fzf_files_options,
        \ 'down':    '40%',
        \ 'window': 'call CreateCenteredFloatingWindow()'})

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

" Set ag as the grep progam
if executable('rg') 
   let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
   set grepprg=rg\ --vimgrep
   command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
   command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,fzf#vim#with_preview(), <bang>0)
endif
