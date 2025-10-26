return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		init = function()
			vim.cmd.colorscheme("tokyonight-night")
		end,
	},
}
