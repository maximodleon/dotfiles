pcall(require('telescope').load_extension, 'fzf')

vim.keymap.set("n", "<leader>ff", require('telescope.builtin').find_files, { noremap = true, desc = '[F]ind [F]ile' })
vim.keymap.set("n", "<leader>/", function()
 require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
  previewer = false
 })
end, { noremap = true })
vim.keymap.set("n", "<leader>fg", require('telescope.builtin').live_grep, { noremap = true, desc = '[F]ile [G]rep' })
vim.keymap.set("n", "<leader>fb", require('telescope.builtin').buffers, { noremap = true, desc = '[F]ind [B]uffer' })
vim.keymap.set("n", "<leader>fh", require('telescope.builtin').help_tags, { noremap = true, desc = '[F]ind [H]elp tags' })
vim.keymap.set("n", "<leader>ts", require('telescope.builtin').treesitter, { noremap = true })
