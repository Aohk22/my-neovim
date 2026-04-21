vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = false

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.wrap = false

vim.opt.timeoutlen = 2000
vim.opt.undofile = true

vim.opt.laststatus = 3

vim.filetype.add({
	extension = {
		wgsl = 'wgsl',
		razor = 'razor'
	}
})

local termfeatures = vim.g.termfeatures or {}
termfeatures.osc52 = false
vim.g.termfeatures = termfeatures
