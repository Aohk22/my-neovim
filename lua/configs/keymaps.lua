vim.keymap.set('n', 'gl', vim.diagnostic.open_float)

local telescope_builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', telescope_builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', telescope_builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', telescope_builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>h', telescope_builtin.help_tags, {
	desc = 'Telescope help tags' })

vim.keymap.set('n', '<leader>e', '<Cmd>Neotree filesystem reveal right toggle<CR>', {
	desc = 'Neotree open'
})

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)          -- Go to definition
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)         -- Go to declaration
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)      -- Go to implementation
vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)          -- List references
vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, opts)     -- Go to type definition
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)                -- Show hover docs
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)   -- Show signature help
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts) -- Code actions
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)      -- Rename symbol
