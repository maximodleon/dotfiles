-- Add the key mappings only for Markdown files in a zk notebook.
if require("zk.util").notebook_root(vim.fn.expand('%:p')) ~= nil then
	local function map(...) vim.api.nvim_buf_set_keymap(0, ...) end
	local opts = { noremap=true, silent=false }

	-- Open link under the caret.
	map("n", "<CR>", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)

	-- Open notes linking to the current buffer
	map("n", "<leader>zb", "<Cmd>ZkBacklinks<CR>", opts)

	-- Open notes linked by the current buffer
	map("n", "<leader>zl", "<Cmd>ZkLinks<CR>", opts)

	-- Preview a linked note
	map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)

	-- Open the code actions for a visual selection
	map("v", "<leader>za", "<Cmd>lua vim.lsp.buf.range_code_action()<CR>", opts)

end
