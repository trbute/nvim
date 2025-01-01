return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		init = function()
			vim.cmd.colorscheme("tokyonight-night")
			vim.cmd("set background=dark")
			vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
			vim.api.nvim_set_hl(0, "NonText", { bg = "NONE" })
		end,
	},
}
