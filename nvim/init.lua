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
vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=2
vim.opt.expandtab=true

-- LSP
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=bufnr, desc='[G]o to [D]efinition'})
  vim.keymap.set("n", "H", vim.lsp.buf.hover, {buffer=bufnr, desc='Hover'})
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer=bufnr, desc='[R]e[n]ame '})
  vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, {buffer=bufnr, desc='Open diagnostics list'})
  vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {buffer=bufnr, desc='Open floating diagnostics message'})
end

require ('lspconfig')['ts_ls'].setup {
	capabilities = capabilities,
	on_attach = on_attach
}

require ('lspconfig')['lua_ls'].setup {
	capabilities = capabilities,
	on_attach = on_attach
}

require ('lspconfig')['gopls'].setup {
	capabilities = capabilities,
	on_attach = on_attach
}

require ('lspconfig')['zls'].setup {
	capabilities = capabilities,
	on_attach = on_attach
}

require ('lspconfig')['clangd'].setup {
	capabilities = capabilities,
	on_attach = on_attach,
  cmd = { "clangd", "--background-index" }, -- Optional flags for better performance
  filetypes = { "c", "cpp" },
 root_dir = function(fname)
    return vim.fs.dirname(vim.fs.find({ "compile_commands.json", ".git" }, { upward = true })[1])
  end,
  settings = {
    clangd = {
      fallbackFlags = { "-I/opt/homebrew/include" }, -- Replace with your Raylib include path
    },
  },
}

require ('lspconfig')['denols'].setup {
	capabilities = capabilities,
	on_attach = on_attach
}

require ('lspconfig')['elixirls'].setup {
	capabilities = capabilities,
	on_attach = on_attach
}

require ('lspconfig')['ocamllsp'].setup {
	capabilities = capabilities,
	on_attach = on_attach
}
