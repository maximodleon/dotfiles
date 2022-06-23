local M = {}

function M.setup()
	-- indicate first time installation
	local packer_bootstrap = false

	-- packer.nvim configuration
	local conf = {
		display = {
			open_fn = function()
				 return require("packer.util").float { border = "rounded" }
			end,
	},
}

-- check if packer is installed
local function packer_init()
	 local fn = vim.fn
	 local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
      packer_bootstrap = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
      }
      vim.cmd [[packadd packer.nvim]]
    end
    vim.cmd "autocmd BufWritePost plugins.lua source <afile> | PackerCompile"
end

local function plugins(use)
 -- nvim-dap (debug adapter protocol)
  use 'mfussenegger/nvim-dap'
  -- neogit
  use { 'TimUntersberger/neogit', requires= 'nvim-lua/plenary.nvim' }

  use 'tpope/vim-fugitive'
	use("mickael-menu/zk-nvim")
	use('yuttie/comfortable-motion.vim')
	use('tpope/vim-surround')
	use('tpope/vim-repeat')
	use('tpope/vim-commentary')
	use('tpope/vim-projectionist')
	use('tpope/vim-dispatch')
	use('tpope/vim-endwise')

	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

end

packer_init()

local packer = require "packer"
packer.init(conf)
packer.startup(plugins)
	
end

return M

