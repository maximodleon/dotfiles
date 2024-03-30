require("obsidian").setup({
      workspaces = {
        {
          name = "personal",
          path = "~/ovault/main",
        },
      },
  ui = {
      -- Use this if you don't have a patched font:
      [" "] = { char = "☐", hl_group = "ObsidianTodo" },
      ["x"] = { char = "✔", hl_group = "ObsidianDone" },
     -- Use this if you don't have a patched font:
      external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
  }
})
