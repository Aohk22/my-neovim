vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.softtabstop = 0
vim.opt.expandtab = false

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.wrap = false

vim.opt.timeoutlen = 2000

vim.opt.undofile = true

vim.keymap.set('n', 'gl', vim.diagnostic.open_float, {
	desc = 'LSP: Show diagnostic float (current line)',
})

vim.api.nvim_create_autocmd({ 'FileType' }, {
	pattern = { '*.js', '*.c', '*.md', '*.css', '*.html', '*.cpp', '*.go', '*.yaml', '*.json' },
	callback = function()
		vim.treesitter.start()
	end
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
