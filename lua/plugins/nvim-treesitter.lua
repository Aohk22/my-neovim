local ts = require('nvim-treesitter')

ts.install({
	'javascript', 'html', 'css', 'cpp', 'python',
	'jsx', 'tsx', 'typescript', 'wgsl', 'razor', 'c_sharp'
})

ts.setup({
	highlight = {
		enable = true
	}
})
