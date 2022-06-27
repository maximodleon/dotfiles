local api = vim.api
api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>fh", ":Telescope help_tags<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>fn", ":enew<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>ts", ":Telescope treesitter<CR>", { noremap = true })
