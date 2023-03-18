local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


keymap("n", "<leader>ww", ":VimwikiIndex<CR>", opts)
keymap("n", "<leader>wt", ":VimwikiTabIndex<CR>", opts)
keymap("n", "<leader>ws", ":VimwikiUISelect<CR>", opts)
keymap("n", "<leader>wd", ":VimwikiDeleteFile<CR>", opts)
keymap("n", "<leader>wr", ":VimwikiRenameFile<CR>", opts)
