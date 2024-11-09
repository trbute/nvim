return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Telescope help tags" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},
}
