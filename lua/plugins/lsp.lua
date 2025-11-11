return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		vim.lsp.config("lua_ls", { capabilities = capabilities })
		vim.lsp.config("ts_ls", { capabilities = capabilities })
		vim.lsp.config("ruff", { capabilities = capabilities })
		vim.lsp.config("intelephense", { capabilities = capabilities })
		vim.lsp.config("gopls", { capabilities = capabilities })

		vim.lsp.enable("lua_ls")
		vim.lsp.enable("ts_ls")
		vim.lsp.enable("ruff")
		vim.lsp.enable("intelephense")
		vim.lsp.enable("gopls")

		vim.keymap.set("n", "K", vim.lsp.buf.hover)
		vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
		vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references)
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
		vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
	end,
}
