local ls = require("luasnip")
local snip = ls.snippet
local t = ls.text_node

ls.add_snippets(nil, {
	all = {
		snip({ trig="snippet", name="snippet" }, { t({ "AA"})})
	}
})
