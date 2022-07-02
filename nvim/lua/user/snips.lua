local ls = require("luasnip")
local snip = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep

ls.config.set_config {
	history = true,
	updateevents = "TextChanged,TextChangedI"
}

ls.add_snippets(nil, {
	markdown = {
		snip({ trig="literaria", name="Nota Literaria" }, 
			{ 
			t({"----", "title: "}), i(1, "note_title"),
			t({"", "autor: "}), i(2, "autor"),
			t({"", "tipo: "}), i(3, "tipo"),
			t({"", "URL: "}), i(4, "url"),
			t({"", "tags: "}), i(5, "tags"),
			t({"", "topics: "}), i(6, "topics"),
			t({"", "---"}),
			t({"", "# "}), rep(1),
			i(0)
		}),
		snip({ trig="permanente", name="Nota Permanente" }, 
			{ 
			t({"----", "title: "}), i(1, "note_title"),
			t({"", "reference note: "}), i(2, "refnote"),
			t({"", "fleeting notes: "}), i(3, "fleetnote"),
			t({"", "---"}),
			t({"", "# "}), rep(1),
			t({"", ""}),
			t({"", "# Link"}),
			i(0)
		}),
	}
})
