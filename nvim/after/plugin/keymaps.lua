local api = vim.api

-- General mappings
api.nvim_set_keymap("n", ";", ":", { noremap = true })
api.nvim_set_keymap("n", ":", ";", { noremap = true })

-- Fugitive
api.nvim_set_keymap("n", "<leader>gs", ":G<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gc", ":Gcommit<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gd", ":Gdiff<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gb", ":Gblame<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>g>", ":Glog<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>g<", ":GitGutterPrevHunk<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gw", ":Gwrite<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gr", ":Gread<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gl", ":Glog<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gl", ":Glog<CR>", { noremap = true })

-- Telescope
api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>fh", ":Telescope help_tags<CR>", { noremap = true })
