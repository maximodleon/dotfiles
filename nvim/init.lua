require("config.lazy")

require('mason').setup()
require('mason-lspconfig').setup( {
	ensure_installed = { 'ts_ls' },
	automatic_installation = true
})
require('mini.statusline').setup()
local cmp = require('cmp')

cmp.setup({
	sources = cmp.config.sources({
		{name = "nvim_lsp"}
	})
})

vim.api.nvim_set_keymap("n", ";", ":", { noremap = true })
vim.api.nvim_set_keymap("n", ":", ";", { noremap = true })

-- Telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


vim.opt.number = true
vim.opt.relativenumber = true

-- LSP
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
require ('lspconfig')['ts_ls'].setup {
	capabilities = capabilities
}

-- Configure lua ls
require ('lspconfig')['lua_ls'].setup {
	capabilities = capabilities
}

-- Configure Go
require ('lspconfig')['gopls'].setup {
	capabilities = capabilities
}
require ('lspconfig')['zls'].setup {
	capabilities = capabilities
}
