 return {
   "nvim-treesitter/nvim-treesitter",
   build = ":TSUpdate",
   config = {
                  ensure_installed = { "c", "lua", "elixir", "vim", "vimdoc", "query", "markdown", "markdown_inline", "ocaml" },
                  highlight = {
                          enable = true,
                  }
          }
}
