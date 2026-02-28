require('plugins/nvim-treesitter')
require('plugins/nvim-devicons')
require('plugins/kanagawa')
require('plugins/telescope')
require('plugins/autoclose')
require('plugins/nvim-ts-autotag')
require('plugins/neo-tree')
require('plugins/avante')
require('plugins/snacks')

vim.cmd('colorscheme kanagawa-dragon')

-- Plugin keymaps

local telescope_builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', telescope_builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', telescope_builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>b', telescope_builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>h', telescope_builtin.help_tags, {
	desc = 'Telescope help tags' })

vim.keymap.set('n', '<leader>e', '<Cmd>Neotree right<CR>', {
	desc = 'Neotree open'
})
