require("dap-vscode-js").setup({
	-- need to set it to node to avoid a permission error
	-- https://github.com/mxsdev/nvim-dap-vscode-js/issues/8
   node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
   -- debugger_path = "(runtimedir)/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation.
   --- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
  adapters = { 'pwa-node', 'node-terminal' }, -- which adapters to register in nvim-dap
})

for _, language in ipairs({ "typescript", "javascript" }) do
  require("dap").configurations[language] = {
			{
				type = "pwa-node",
				request = "launch",
				name = "Launch file",
				program = "${file}",
				cwd = "${workspaceFolder}",
			},
			{
				type = "pwa-node",
				request = "attach",
				name = "Attach",
				processId = require'dap.utils'.pick_process,
				cwd = "${workspaceFolder}",
			}
  }
end
