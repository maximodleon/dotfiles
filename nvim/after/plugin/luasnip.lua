local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("s", "<c-n>", "<cmd>lua require('luasnip.extras.select_choice')()<CR>", opts)
keymap("i", "<c-n>", "<cmd>lua require('luasnip.extras.select_choice')()<CR>", opts)
-- keymap("i", "<c-n>", "<Plug>luasnip-next-choice", opts)
-- keymap("s", "<c-n>", "<Plug>luasnip-next-choice", opts)
-- keymap("i", "<c-p>", "<Plug>luasnip-prev-choice", opts)
-- keymap("s", "<c-p>", "<Plug>luasnip-prev-choice", opts)
keymap("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
keymap("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
