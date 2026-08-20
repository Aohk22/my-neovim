local function gh(repo)
	return 'https://github.com/' .. repo
end

vim.pack.add({
	-- Plugins for UI.
	{ -- Theme
		name = 'kanagawa', src = gh('rebelot/kanagawa.nvim.git'),
	},
	{ -- Icons
		name = 'devicons', src = gh('nvim-tree/nvim-web-devicons'),
	},
	gh('catgoose/nvim-colorizer.lua'),


	-- Plugins for LSP.
	gh('neovim/nvim-lspconfig.git'),


	-- QoL plugins.
	gh('folke/snacks.nvim'),          -- Collection of QoL plugins.
	gh('folke/which-key.nvim'),       -- Shows hotkey hints.
	gh('nvim-telescope/telescope.nvim'), -- Quick file find.
	gh('m4xshen/autoclose.nvim'),     -- Closes brackets.
	gh('windwp/nvim-ts-autotag.git'), -- Closes tags.
	gh('tpope/vim-surround'),


	-- File explorer
	gh('nvim-neo-tree/neo-tree.nvim'),
	gh('stevearc/oil.nvim'),


	-- Other dependencies
	gh('mfussenegger/nvim-dap'),
	gh('nvim-lua/plenary.nvim'), -- Functions.
	gh('MunifTanjim/nui.nvim'), -- Frequently used UI component library.
	{                         -- Syntax highlighting.
		name = 'treesitter',
		src = gh('nvim-treesitter/nvim-treesitter.git'),
		version = 'main',
	}
})
