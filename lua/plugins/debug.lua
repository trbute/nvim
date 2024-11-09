return {
	"mfussenegger/nvim-dap",
	dependencies = {
		{
			"rcarriga/nvim-dap-ui",
			dependencies = {
				"nvim-neotest/nvim-nio",
			},
		},
		"leoluz/nvim-dap-go",
	},

	config = function()
		require("dapui").setup()
		require("dap-go").setup()

		local dap, dapui = require("dap"), require("dapui")
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
		vim.keymap.set("n", "<F2>", dap.continue)
		vim.keymap.set("n", "<F3>", dap.step_over)
		vim.keymap.set("n", "<F5>", dap.terminate)
	end,
}
