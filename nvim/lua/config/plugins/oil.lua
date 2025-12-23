
return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  --opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  config = function()
    local oil = require("oil")
    oil.setup({
      default_file_explorer = true,
      columns = {
        "icon",
        "size",
        "mtime"
      },
      lsp_file_methods = {
        enabled = true,
        timeout_ms = 1000,
        autosave_changes = false
      },
      view_options = {
        show_hidden = false,
        is_hidden_file = function(name, bufnr)
          local m = name:match("^%.")
          return m~=nil
        end,
      }
    })
    vim.keymap.set("n", "-", oil.toggle_float, {})
  end,
}
