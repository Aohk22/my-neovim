vim.pack.add({
	-- syntax highlighting
	{
		src = 'https://github.com/nvim-treesitter/nvim-treesitter.git',
		version = 'main',
	},

	-- visuals
	{
		src = 'https://github.com/rebelot/kanagawa.nvim.git',
		name = 'kanagawa',
	},
	{ src = 'https://github.com/nvim-tree/nvim-web-devicons' },

	-- functionality
	-- 	lsp
	{ src = 'https://github.com/neovim/nvim-lspconfig.git' },
	{ src = 'https://github.com/mfussenegger/nvim-jdtls.git' },
	--	file search
	{ src = 'https://github.com/nvim-lua/plenary.nvim' },
	{ src = 'https://github.com/nvim-telescope/telescope.nvim' },
	--	auto close brackets/html tags
	{ src = 'https://github.com/m4xshen/autoclose.nvim' },
	{ src = 'https://github.com/windwp/nvim-ts-autotag.git' },
})
