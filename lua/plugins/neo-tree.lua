require('neo-tree').setup({
	filesystem = {
		filtered_items = {
			visible = false,
			hide_gitignored = true,
			always_show = {
				'.gitignored', '.env', '.server'
			}
		}
	},

	source_selector = {
		winbar = false,
		statusline = true
	}
})
