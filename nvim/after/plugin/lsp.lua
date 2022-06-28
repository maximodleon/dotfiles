require ('lspconfig')['tsserver'].setup {
	on_attach = function() 
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
		vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer=0})
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
		vim.keymap.set("n", " df", vim.diagnostic.goto_next, {buffer=0})
		vim.keymap.set("n", " dp", vim.diagnostic.goto_prev, {buffer=0})
	end,
}
