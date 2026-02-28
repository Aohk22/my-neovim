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

vim.keymap.set('n', 'gl', vim.diagnostic.open_float)

vim.api.nvim_create_autocmd({ 'BufEnter' }, {
	pattern = { '*.json' },
	command = 'set shiftwidth=2 tabstop=2',
})
