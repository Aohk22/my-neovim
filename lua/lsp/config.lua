vim.lsp.config('jdtls', {
	root_dir = vim.fs.root(0, {
		"settings.gradle",
		"settings.gradle.kts",
		"build.gradle",
		"build.gradle.kts",
	}),
	settings = {
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
			},
			maven = {
				downloadSources = true,
			},
			eclipse = {
				downloadSources = true,
			},
			gradle = {
				enabled = true,
			},
		}
	}
})

vim.lsp.config('kotlin_language_server', {
	cmd = { 'kotlin-lsp', '--stdio' },
	filetypes = { 'kotlin', 'kt', 'kts' },
})
