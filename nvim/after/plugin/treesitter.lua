local status_ok, configs = pcall(require, 'nvim-treesitter.configs')

if not status_ok then
	return
end

configs.setup {
  ensure_installed = { "javascript", "rust", "lua", "go" },
  ignore_install = { "" },
  auto_install = true,
  highlight = {
    enable = true,
    additonal_vim_regex_highlighting = false
  },
  indent = { enable = true, disable = { "yaml" } },
}
