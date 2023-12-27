require('mason').setup()
require('mason-lspconfig').setup {
	ensure_installed =  { 'tsserver' },
	automatic_installation = true
}
