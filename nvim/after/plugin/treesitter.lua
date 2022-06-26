local status_ok, configs = pcall(require, 'nvim-treesitter.configs')

if not status_ok then
	return
end

configs.setup {
	ensure_installed = { "javascript", "rust", "lua" },
	sync_install = false,
	ignore_install = { "" },
	highlight = {
		enable = true,
		disable = { "" },
		additonal_vim_regex_highlighting = true
	},
	indent = { enable = true, disable = { "yaml" } },
}
