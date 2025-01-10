return {
  'neovim/nvim-lspconfig',
  requires = {
	-- Automatically install LSPs to stdpath for neovim
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	-- Useful status updates for LSP
	'j-hui/fidget.nvim'
  }
}
