vim.lsp.config('jdtls', {
	settings = {
		root_dir = vim.fs.root(0, {
			"settings.gradle",
			"settings.gradle.kts",
			"build.gradle",
			"build.gradle.kts",
		}),
		java = {
			configuration = {
				-- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
				-- And search for `interface RuntimeOption`
				-- The `name` is NOT arbitrary, but must match one of the elements from `enum ExecutionEnvironment` in the link above
				runtimes = {
					{
						name = 'JavaSE-21',
						path = '/usr/lib/jvm/java-21-openjdk-amd64/'
					}
				}
			}
		}
	}
})

vim.lsp.config('kotlin_language_server', {
	cmd = { 'kotlin-lsp', '--stdio' },
	filetypes = { 'kotlin', 'kt', 'kts' },
})

vim.lsp.enable('gopls')
vim.lsp.enable('clangd')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('pyright')
vim.lsp.enable('ts_ls')
vim.lsp.enable('jdtls')
vim.lsp.enable('lua_ls')
-- vim.lsp.enable('kotlin_language_server')

vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('my.lsp', {}),
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
		-- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
		if client:supports_method('textDocument/completion') then
			-- Optional: trigger autocompletion on EVERY keypress. May be slow!
			-- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
			-- client.server_capabilities.completionProvider.triggerCharacters = chars
			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
		end
		-- Auto-format ("lint") on save.
		-- Usually not needed if server supports "textDocument/willSaveWaitUntil".
		if not client:supports_method('textDocument/willSaveWaitUntil')
			and client:supports_method('textDocument/formatting') then
			vim.api.nvim_create_autocmd('BufWritePre', {
				group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
				buffer = args.buf,
				callback = function()
					vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
				end,
			})
		end
		if client:supports_method('textDocument/definition') then
			local opts = { noremap = true, silent = true }
			vim.api.nvim_buf_set_keymap(args.buf, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
			vim.api.nvim_buf_set_keymap(args.buf, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
		end
		if client:supports_method('textDocument/implementation') then
			-- Create a keymap for vim.lsp.buf.implementation ...
		end
	end,
})

vim.cmd [[set completeopt=menuone,noselect]]
