local wk = require("which-key")

wk.register({
	f = {
		name = "Telescope",
		b = "Buscar buffer",
		f = "Buscar archivo",
		g = "Grep",
		h = "Tags",
		n = { "<cmd>enew<cr>", "Nuevo archivo" }
	},
	g = {
		name = "Git",
		b = "Git blame",
		c = "Git commit",
		d = "Git diff",
		l = "Git log",
		r = "Git read",
		s = "Git status",
		w = "Git write"
	},
	z = {
		name = "zettlekasten",
		f = "Nota fugaz",
		l = "Nota literaria",
		n = "Crear nota en directorio actual",
		p = "Nota permanente",
		o = "Buscar notas",
		r = "Nota referencia",
		t = "Buscar por tag"
	},
},  
{ prefix = "<leader>" })