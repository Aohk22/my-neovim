vim.api.nvim_create_autocmd({ "InsertLeave" }, {
	callback = function()
		if vim.bo.modifiable
			and vim.bo.modified
			and not (vim.bo.filetype ~= 'oil')
			and not vim.bo.readonly then
			vim.cmd('write')
		end
	end
})

local lsp_group = vim.api.nvim_create_augroup('LspAuto', { clear = true })

vim.api.nvim_create_autocmd('LspAttach', {
	group = lsp_group,
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
		local opts = { noremap = true, silent = true, buffer = args.buf }

		-- Completion
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
		end

		-- Auto-format on save
		if not client:supports_method('textDocument/willSaveWaitUntil')
			and client:supports_method('textDocument/formatting') then
			vim.api.nvim_create_autocmd('BufWritePre', {
				group = lsp_group,
				buffer = args.buf,
				callback = function()
					vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
				end,
			})
		end

		-- Navigation
		if client:supports_method('textDocument/definition') then
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts) -- Go to definition
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts) -- Go to declaration
		end
		if client:supports_method('textDocument/implementation') then
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts) -- Go to implementation
		end
		if client:supports_method('textDocument/references') then
			vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts) -- List references
		end
		if client:supports_method('textDocument/typeDefinition') then
			vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts) -- Go to type definition
		end

		-- Docs & signature
		if client:supports_method('textDocument/hover') then
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts) -- Show hover docs
		end
		if client:supports_method('textDocument/signatureHelp') then
			vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts) -- Show signature help
		end

		-- Code actions & rename
		if client:supports_method('textDocument/codeAction') then
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts) -- Code actions
		end
		if client:supports_method('textDocument/rename') then
			vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts) -- Rename symbol
		end

		-- Diagnostics
		vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts) -- Show line diagnostics
		vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)   -- Previous diagnostic
		vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)   -- Next diagnostic
		vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts) -- Diagnostics to loclist

		-- Workspace
		if client:supports_method('workspace/symbol') then
			vim.keymap.set('n', '<leader>ws', vim.lsp.buf.workspace_symbol, opts) -- Search workspace symbols
		end
	end,
})
