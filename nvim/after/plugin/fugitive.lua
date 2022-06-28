local api = vim.api

api.nvim_set_keymap("n", "<leader>gs", ":G<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gc", ":Gcommit<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gp", ":G push<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gd", ":Gdiff<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gb", ":Gblame<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>g>", ":Glog<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>g<", ":GitGutterPrevHunk<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gw", ":Gwrite<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gr", ":Gread<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gl", ":Glog<CR>", { noremap = true })
api.nvim_set_keymap("n", "<leader>gl", ":Glog<CR>", { noremap = true })
