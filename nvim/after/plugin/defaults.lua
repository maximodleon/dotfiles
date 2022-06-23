local opt = vim.opt
local g = vim.g


g.mapleader = ","
opt.timeoutlen = 300


--Spaces and tabs
opt.tabstop=2
opt.softtabstop=2
opt.shiftwidth=2
-- set expandtab

-- UI config
-- vim.opt.encoding="utf-8"
-- set inccommand=nosplit
opt.list = true
opt.number = true
opt.relativenumber = true
opt.ruler = true
opt.cursorline = true
opt.smartindent = true
opt.autoindent = true
opt.wrap = true
opt.linebreak = true
opt.wildmenu = true
opt.lazyredraw = true
opt.showmatch = true
opt.updatetime=300
-- vim.opt.signcolumn=yes

opt.incsearch = true
opt.hlsearch = true
opt.smartcase = true
opt.ignorecase = true

opt.foldenable = true
opt.foldlevelstart=10
opt.foldnestmax=10

-- vim.opt.nobackup = true
-- vim.opt.nowritebackup = true
-- vim.opt.noswapfile = true
opt.hidden = true
opt.history=100
-- vim.opt.path +=**
opt.splitbelow = true
opt.splitright = true

opt.diffopt=vertical
opt.completeopt=menu,menuone,preview,noselect,noinsert
