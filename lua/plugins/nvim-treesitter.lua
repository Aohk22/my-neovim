local nt = require('nvim-treesitter')

nt.setup({install_dir = vim.fn.stdpath('data') .. '/site'})
nt.install({'javascript', 'html', 'css', 'cpp', 'python'})
