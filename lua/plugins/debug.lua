return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"theHamsta/nvim-dap-virtual-text",
		"nvim-neotest/nvim-nio",
		"leoluz/nvim-dap-go",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		require("dapui").setup()
		require("dap-go").setup()
		require("nvim-dap-virtual-text").setup()

		vim.keymap.set("n", "<leader>?", function()
			require("dapui").eval(nil, { enter = true })
		end)
		vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
		vim.keymap.set("n", "<F1>", dap.continue)
		vim.keymap.set("n", "<F2>", dap.step_into)
		vim.keymap.set("n", "<F3>", dap.step_over)
		vim.keymap.set("n", "<F4>", dap.step_out)
		vim.keymap.set("n", "<F5>", dap.step_back)
		vim.keymap.set("n", "<F10>", dap.restart)
		vim.keymap.set("n", "<F11>", dap.terminate)

		vim.keymap.set('n', '<Leader>du', function()
			dapui.toggle()
		end, { desc = "Toggle DAP-UI" })

		vim.keymap.set('n', '<Leader>de', function()
			dapui.toggle({ layout = 1, reset = true })
		end, { desc = "Toggle DAP-UI sidebar" })
		vim.keymap.set('n', '<Leader>dt', function()
			dapui.toggle({ layout = 2, reset = true })
		end, { desc = "Toggle DAP-UI tray" })

		vim.keymap.set('n', '<Leader>ds', function()
			dapui.float_element("scopes", { enter = true })
		end, { desc = "Float scopes" })
		vim.keymap.set('n', '<Leader>db', function()
			dapui.float_element("breakpoints", { enter = true })
		end, { desc = "Float breakpoints" })
		vim.keymap.set('n', '<Leader>dk', function()
			dapui.float_element("stacks", { enter = true })
		end, { desc = "Float stacks" })
		vim.keymap.set('n', '<Leader>dw', function()
			dapui.float_element("watches", { enter = true })
		end, { desc = "Float watches" })
		vim.keymap.set('n', '<Leader>dr', function()
			dapui.float_element("repl", { enter = true })
		end, { desc = "Float REPL" })
		vim.keymap.set('n', '<Leader>dc', function()
			dapui.float_element("console", { enter = true })
		end, { desc = "Float console" })

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
		dap.adapters.php = {
			type = 'executable',
			command = 'node',
			args = {
				vim.fn.stdpath("data") .. "/mason/packages/php-debug-adapter/extension/out/phpDebug.js"
			}
		}
		dap.configurations.php = {
			{
				name = "PHP: Listen for Xdebug",
				port = 9003,
				request = "launch",
				type = "php",
			},
		}
	end,
}
