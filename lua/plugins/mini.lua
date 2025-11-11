return 	{
	'nvim-mini/mini.nvim',
	version = '*',
	config = function()
		require('mini.pairs').setup()
		require('mini.diff').setup({
			view = {
				style = 'sign'
			}
		})
		local minimap = require('mini.map')
		minimap.setup()
		vim.keymap.set("n", "<leader>mt", minimap.toggle)
	end
}
