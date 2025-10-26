return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			php = { "pint" },
			go = { "gofumpt" },
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
