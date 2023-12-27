local wk = require("which-key")

wk.register({
	f = {
		name = "Telescope",
		b = "[F] [B]uffer",
		f = "[F]ind [F]ile",
		g = "[F]ile [G]rep",
		h = "[F]ind [T]ags",
		-- n = { "<cmd>enew<cr>", "Nuevo archivo" }
	},
	g = {
		name = "Git",
		b = "[G]it [B]lame",
		c = "[G]it [C]ommit",
		d = "[G]it [D]iff",
		l = "[G]it [L]og",
		p = "[G]it [P]ush",
		r = "[G]it [R]ead",
		s = "[G]it [S]tatus",
		w = "[G]it [W]rite"
	},
	w = {
	 name = 'Vimwiki',
	 w = 'Open defualt wiki index',
	 t = 'Open default wiki index in tab',
	 s = 'Select and open wiki index file',
	 d = 'Delete current file',
	 r = 'Rename current file',
   l = 'Toggle list item',
   D = {
      i = 'Vimwiki diary [i]ndex',
      n = 'Vimwiki make diary [n]ote',
      t = 'Vimwiki make [t]omorrow diary note',
      y = 'Vimwiki make [y]esterday diary note'
   }
	},
	['/'] = 'Search in file',
	['b'] = 'Toggle breakpoint',
	['B'] = 'Set breakpoint'
},
{ prefix = "<leader>" })

wk.register({
	-- como hacer para que esto sea solo cuando hay un LS
	g = {
		d = "[G]o to [D]efinition",
		T = "[G]o to [T]ype Definition",
		i = "[G]o to [I]mplementation"
	},
	['<F5>'] = 'DAP continue',
	['<F10>'] = 'DAP Step over',
	['<F11>'] = 'DAP Step into',
	['<F12>'] = 'DAP Step out'
})
