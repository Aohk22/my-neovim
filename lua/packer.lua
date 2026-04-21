local gh = function(x) return 'https://github.com/' .. x end

vim.pack.add({
	-- Plugins for UI.
	{ -- Theme
		name = 'kanagawa', src = gh('rebelot/kanagawa.nvim.git'),
	},
	{ -- Icons
		name = 'devicons', src = gh('nvim-tree/nvim-web-devicons'),
	},
	gh('MeanderingProgrammer/render-markdown.nvim'),


	-- Plugins for LSP.
	gh('neovim/nvim-lspconfig.git'),
	gh('mfussenegger/nvim-jdtls'),
	-- gh('nvim-java/nvim-java'),
	-- {
	-- 	src = 'https://github.com/JavaHello/spring-boot.nvim',
	-- 	version = '218c0c26c14d99feca778e4d13f5ec3e8b1b60f0',
	-- },


	-- QoL plugins.
	gh('folke/snacks.nvim'),          -- Collection of QoL plugins.
	gh('folke/which-key.nvim'),       -- Shows hotkey hints.
	gh('nvim-telescope/telescope.nvim'), -- Quick file find.
	gh('m4xshen/autoclose.nvim'),     -- Closes brackets.
	gh('windwp/nvim-ts-autotag.git'), -- Closes tags.


	-- File explorer
	gh('nvim-neo-tree/neo-tree.nvim'),
	gh('stevearc/oil.nvim'),


	-- Plugins for AI.
	gh('yetone/avante.nvim'),


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
