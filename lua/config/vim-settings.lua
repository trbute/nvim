vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

vim.opt.number = true
vim.opt.cursorline = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.undofile = true
vim.opt.scrolloff = 10
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
})
