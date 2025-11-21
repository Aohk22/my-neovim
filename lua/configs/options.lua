vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.softtabstop = 0
vim.opt.expandtab = false

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.wrap = false

vim.api.nvim_create_autocmd({'BufEnter'}, 
{
	pattern = {'*.js', '*.css', '*.html', '*.lua'},
	command = 'set shiftwidth=2 tabstop=2',
})

vim.api.nvim_create_autocmd({'FileType'},
{ 
	pattern = {'*.js', '*.c', '*.md', '*.css', '*.html', '*.cpp'},
	callback = function()
		vim.treesitter.start()
	end
})
