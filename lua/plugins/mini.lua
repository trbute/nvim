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
		minimap.setup({
			integrations = {
			  minimap.gen_integration.builtin_search(),
			  minimap.gen_integration.diff(),
			  minimap.gen_integration.diagnostic(),
			},
		  }
		)
		vim.keymap.set("n", "<leader>mt", minimap.toggle)
	end
}
