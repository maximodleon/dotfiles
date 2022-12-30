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

ls.add_snippets(nil, {
	markdown = {
		snip({ trig="referenica", name="Nota Referencia" }, 
			{ 
			t({"---", "title: "}), i(1, "note_title"),
			t({"", "autor: "}), i(2, "autor"),
			t({"", "tipo: "}), c(3, { t("libro"), t("articulo"), t("paper"), t("video") }),
			t({"", "URL: "}), i(4, "url"),
			t({"", "topics: "}), i(5, "topics"),
			t({"", "---"}),
			t({"", "# "}), rep(1),
			i(0)
		}),
		snip({ trig="literaria", name="Nota Literaria" }, 
			{ 
			t({"---", "title: "}), i(1, "note_title"),
			t({"", "reference note: "}), i(2, "refnote"),
			t({"", "tags: "}), i(3, "tags"),
			t({"", "---"}),
			t({"", "# "}), rep(1),
			t({"", "# Referencia", ""}), i(4, "referencia"),
			i(0)
		}),
		snip({ trig="permanente", name="Nota Permanente" }, 
			{ 
			t({"---", "title: "}), i(1, "note_title"),
			t({"", "literary note: "}), i(2, "refnote"),
			t({"", "---"}),
			t({"", "# "}), rep(1),
			t({"", ""}),
			t({"", "# Link"}),
			i(0)
		}),
	}
})
