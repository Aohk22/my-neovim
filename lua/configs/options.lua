vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.softtabstop = 0
vim.opt.expandtab = false

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.wrap = false

vim.keymap.set("n", "gl", vim.diagnostic.open_float, 
{
	desc = "LSP: Show diagnostic float (current line)",
})

vim.api.nvim_create_autocmd({'BufEnter'}, 
{
	pattern = {'*.js', '*.c', '*.md', '*.css', '*.html', '*.cpp', '*.go', '*.yaml', '*.json', '*.lua'},
	command = 'set shiftwidth=2 tabstop=2',
})

vim.api.nvim_create_autocmd({'FileType'},
{ 
	pattern = {'*.js', '*.c', '*.md', '*.css', '*.html', '*.cpp', '*.go', '*.yaml', '*.json'},
	callback = function()
		vim.treesitter.start()
	end
})
