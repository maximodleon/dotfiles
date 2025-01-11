require("config.lazy")

vim.api.nvim_set_keymap("n", ";", ":", { noremap = true })
vim.api.nvim_set_keymap("n", ":", ";", { noremap = true })

vim.opt.number = true
vim.opt.relativenumber = true
