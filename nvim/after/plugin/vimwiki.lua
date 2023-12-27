local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

local wiki1 = {}
wiki1.path = '~/vimwiki'
wiki1.path_html = '~/vimwiki/html'

local wiki2 = {}
wiki2.path = '~/wiki/personal'
wiki2.path_html = '~/wiki/personal/html'
wiki2.syntax = 'markdown'
wiki2.ext = 'md'

local wiki3 = {}
wiki3.path = '~/wiki/books'
wiki3.path_html = '~/wiki/books/html'
wiki3.syntax = 'markdown'
wiki3.ext = 'md'


vim.g.vimwiki_list = {wiki1, wiki2, wiki3}
--vim.g.vimwiki_folding='list'

keymap("n", "<leader>ww", ":VimwikiIndex<CR>", opts)
keymap("n", "<leader>wt", ":VimwikiTabIndex<CR>", opts)
keymap("n", "<leader>ws", ":VimwikiUISelect<CR>", opts)
keymap("n", "<leader>wd", ":VimwikiDeleteFile<CR>", opts)
keymap("n", "<leader>wr", ":VimwikiRenameFile<CR>", opts)
keymap("n", "<leader>wT", ":VimwikiSearchTags", opts)
keymap("n", "<leader>wl", ":VimwikiToggleListItem<CR>", opts)

-- Vimwiki diary
keymap("n", "<leader>wDi", ":VimwikiDiaryIndex<CR>", opts)
keymap("n", "<leader>wDn", ":VimwikiMakeDiaryNote<CR>", opts)
keymap("n", "<leader>wDt", ":VimwikiMakeTomorrowDiaryNote<CR>", opts)
keymap("n", "<leader>wDy", ":VimwikiMakeYesterdayDiaryNote<CR>", opts)

-- Need to call this after setting vimwiki variables
vim.cmd(':call vimwiki#vars#init()')

local autogrp = vim.api.nvim_create_augroup('customwiki', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  group = autogrp,
  pattern = "*/maximo/vimwiki/*",
  command = '!git add "%"; git commit -m "Auto commit changes in %:t." "%"'
})
