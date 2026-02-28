vim.pack.add({
	-- visuals
	-- 	colorscheme, icons
	{
		src = 'https://github.com/rebelot/kanagawa.nvim.git',
		name = 'kanagawa',
	},
	'https://github.com/nvim-tree/nvim-web-devicons',

	--	show keybinds
	'https://github.com/folke/which-key.nvim',

	--	file explorer
	'https://github.com/nvim-neo-tree/neo-tree.nvim',
	'https://github.com/MunifTanjim/nui.nvim',

	--	syntax highlighting
	{
		src = 'https://github.com/nvim-treesitter/nvim-treesitter.git',
		version = 'main',
	},

	--	ui
	'https://github.com/folke/snacks.nvim',


	-- functionality
	-- 	lsp
	'https://github.com/neovim/nvim-lspconfig.git',
	'https://github.com/mfussenegger/nvim-jdtls.git',

	--	file search
	'https://github.com/nvim-telescope/telescope.nvim',
	'https://github.com/nvim-lua/plenary.nvim',

	--	editing
	'https://github.com/m4xshen/autoclose.nvim',
	'https://github.com/windwp/nvim-ts-autotag.git',

	--	render
	'https://github.com/MeanderingProgrammer/render-markdown.nvim',

	--	ai
	'https://github.com/yetone/avante.nvim',
})
