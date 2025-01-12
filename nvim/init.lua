require("config.lazy")

require('mason').setup()
require('mason-lspconfig').setup( {
	ensure_installed = { 'ts_ls' },
	automatic_installation = true
})

vim.api.nvim_set_keymap("n", ";", ":", { noremap = true })
vim.api.nvim_set_keymap("n", ":", ";", { noremap = true })

vim.opt.number = true
vim.opt.relativenumber = true
