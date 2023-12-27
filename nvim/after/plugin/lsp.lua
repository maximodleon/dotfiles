local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr) 
	vim.keymap.set("n", "H", vim.lsp.buf.hover, {buffer=bufnr, desc='Hover'})
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=bufnr, desc='[G]o to [D]efinition'})
	vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer=bufnr, desc='[G]o to [T]ype definition'})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=bufnr, desc='[G]o to [I]mplementation'})
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer=bufnr, desc='[R]e[n]ame '})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer=bufnr, desc='[Code] [A]ction'})
	vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {buffer=bufnr, desc='Go to next diagnostic message'})
	vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {buffer=bufnr, desc='Go to prev diagnostic message'})
	vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, {buffer=bufnr, desc='Open diagnostics list'})
	vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {buffer=bufnr, desc='Open floating diagnostics message'})
end

-- Configure ts language server
-- This server needs a certain version of node
-- I have v16 it works fine
-- with v12 does not work
require ('lspconfig')['tsserver'].setup {
	capabilities = capabilities,
	on_attach = on_attach
}

-- Configure lua ls
require ('lspconfig')['lua_ls'].setup {
	capabilities = capabilities,
	on_attach = on_attach
}

-- Configure Rust
require ('lspconfig')['rust_analyzer'].setup {
	capabilities = capabilities,
	on_attach = on_attach,
  cmd = { "rustup", "run", "stable", "rust-analyzer" }
}

-- Configure Go
require ('lspconfig')['gopls'].setup {
	capabilities = capabilities,
	on_attach = on_attach
}


