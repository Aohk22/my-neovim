vim.lsp.enable('gopls')
vim.lsp.enable('clangd')
vim.lsp.enable('rust-analyzer')
vim.lsp.enable('pylsp')

vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('my.lsp', {}),
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
		if client:supports_method('textDocument/definition') then
			local opts = { noremap = true, silent = true }
			vim.api.nvim_buf_set_keymap(args.buf, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
			vim.api.nvim_buf_set_keymap(args.buf, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
		end
	end
})
