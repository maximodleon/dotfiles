 return {
   "nvim-treesitter/nvim-treesitter",
   tag = "v0.10.0",
   lazy = false,
   build = ":TSUpdate",
   config = {
                  ensure_installed = { "c", "lua", "elixir", "vim", "vimdoc", "query", "markdown", "markdown_inline", "ocaml", "blade" },
                  highlight = { enable = true },
                  sync_install = false,
                  indent = { enable = false },
          }
}
