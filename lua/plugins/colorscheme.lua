return {
	"folke/tokyonight.nvim",
	lazy = false,
	opts = {
		transparent = true,
		floats = "transparent",
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
	},
	init = function()
		vim.cmd.colorscheme("tokyonight-night")
	end,
}
