local ts = require('nvim-treesitter')

ts.install({
	'javascript', 'html', 'css', 'cpp', 'python',
	'jsx', 'tsx', 'typescript', 'wgsl', 'razor', 'c_sharp',
	'latex', 'scss', 'svelte', 'typst', 'vue'
})

ts.setup({
	highlight = {
		enable = true
	}
})
