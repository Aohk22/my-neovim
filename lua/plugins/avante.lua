require('avante').setup({
	input = {
		provider = "snacks",
		provider_opts = {
			title = "Avante Input",
			icon = " ",
			placeholder = "Enter your API key...",
		}
	},
	provider = 'gemini',
	providers = {
		gemini = {
			model = 'gemini-2.5-flash'
		}
	}
})
