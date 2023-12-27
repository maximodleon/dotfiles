local M = {}

function M.setup()
	-- indicate first time installation

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
	use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
	use { "theHamsta/nvim-dap-virtual-text" }
	use {
		"microsoft/vscode-js-debug",
		opt = true,
		run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
	}

	use('yuttie/comfortable-motion.vim')
  use 'tpope/vim-fugitive'
	use('tpope/vim-surround')
	use('tpope/vim-repeat')
	use('tpope/vim-commentary')
	-- use('tpope/vim-projectionist')
	-- use('tpope/vim-dispatch')
	use('tpope/vim-endwise')
	use('tpope/vim-rhubarb')
	use('lewis6991/gitsigns.nvim')
	use('phanviet/vim-monokai-pro')
	-- use('cocopon/iceberg.vim')
	use({ 'rose-pine/neovim', as = 'rose-pine',
     config = function()
	    vim.cmd('colorscheme rose-pine')
		end
 })


	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

 use {
    'nvim-telescope/telescope-fzf-native.nvim',
    -- NOTE: If you are having trouble with this installation,
    --       refer to the README for telescope-fzf-native for more instructions.
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
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
  use {
		'neovim/nvim-lspconfig', -- Configurations for Nvim LSP
		requires = {
				-- Automatically install LSPs to stdpath for neovim
				'williamboman/mason.nvim',
				'williamboman/mason-lspconfig.nvim',

				-- Useful status updates for LSP
				'j-hui/fidget.nvim'
	 }
}

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

--vimwiki
 use 'vimwiki/vimwiki'

end

packer_init()
local packer = require "packer"
packer.init(conf)
packer.startup(plugins)
end

--require("nvim-dap-virtual-text").setup()
return M

