" ------- Ctrl-P -------------------
"Put Ctrl-P at the bottom order from top to bottom
let g:ctrlp_match_window="bottom,order:ttb,min:1,max:20,results:20"
" use rg as Ctrl-p finder
let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
" since rg is fast, don't use cache
let g:ctrlp_use_caching = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:NERDTreeHighlightFoldersFullName = 1
let g:WebDevIconsUnicdeDecorateFolderNodes = 1 " enable folder glyph
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

" Disable NERDTree markers
let g:NERDTreeDirArrowExpandable = ' '
let g:NERDTreeDirArrowCollapsible = ' '

let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '
let g:DevIconsDefaultFolderOpenSymbol = ' '
