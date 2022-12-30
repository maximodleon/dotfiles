require("zk").setup({
	picker = "telescope"
})

local opts = { noremap=true, silent=false }
local api = vim.api

api.nvim_set_keymap("n", "<leader>zn", "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", opts)
api.nvim_set_keymap("n", "<leader>zo", "<Cmd>ZkNotes { sort= { 'modified' } }<CR>", opts)
api.nvim_set_keymap("n", "<leader>zt", "<Cmd>ZkTags<CR>", opts)

api.nvim_set_keymap("n", "<leader>zn", "<Cmd>ZkNotes { sort = { 'modified' }, match = vim.fn.input('Search: ') }<CR>", opts)

api.nvim_set_keymap("v", "<leader>zf", ":'<,'>ZkMatch<CR>", opts)

-- Crear nota permanente
api.nvim_set_keymap("n", "<leader>zp", "<Cmd>ZkNew { title = ''), dir='Notas Permanentes' }<CR>", opts)
-- Crear nota fugaz
api.nvim_set_keymap("n", "<leader>zf", "<Cmd>ZkNew { title = '', dir='Notas Fugaces' }<CR>", opts)
-- Crear nota literaria
api.nvim_set_keymap("n", "<leader>zl", "<Cmd>ZkNew { title = '', dir='Notas Literarias' }<CR>", opts)
-- Crear nota referencia
api.nvim_set_keymap("n", "<leader>zr", "<Cmd>ZkNew { title = '', dir='Notas Referencias' }<CR>", opts)
