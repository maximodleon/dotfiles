local ls = require("luasnip")
local snip = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local c = ls.choice_node
local rep = require("luasnip.extras").rep

ls.config.set_config {
	history = true,
	updateevents = "TextChanged,TextChangedI"
}
