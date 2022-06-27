local wk = require("which-key")

wk.register({
	f = {
		b = "Buscar buffer",
		f = "Buscar archivo",
		g = "Grep",
		h = "Tags"
	},
	g = {
		b = "Git blame",
		c = "Git commit",
		d = "Git diff",
		l = "Git log",
		r = "Git read",
		s = "Git status",
		w = "Git write"
	},
	z = {
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
