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
	use('phanviet/vim-monokai-pro')
	use('cocopon/iceberg.vim')


	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	--Treesitter
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

	-- Startify
	use "mhinz/vim-startify"
	-- devicons
	use "ryanoasis/vim-devicons"

  --which key
	use { "folke/which-key.nvim", 
		config = function()
				require("which-key").setup { }
		end
	}	

  -- lsp configs
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP


	--nvim-cmp
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
	use { 'saadparwaiz1/cmp_luasnip' }

	-- luasnip
	use { 
				"L3MON4D3/LuaSnip",
				config = function() require('user.snips') end,
		}

end

packer_init()

local packer = require "packer"
packer.init(conf)
packer.startup(plugins)
	
end

return M

