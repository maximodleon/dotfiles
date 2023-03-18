local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr) 
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=bufnr})
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=bufnr})
	vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer=bufnr})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=bufnr})
	vim.keymap.set("n", " df", vim.diagnostic.goto_next, {buffer=bufnr})
	vim.keymap.set("n", " dp", vim.diagnostic.goto_prev, {buffer=bufnr})
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
	on_attach = on_attach
}

