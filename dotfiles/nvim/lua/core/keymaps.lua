-- Set leader key to space
vim.g.mapleader = " "

-- Split window management
vim.keymap.set('n', '<leader>\\', ':vsplit<CR>', { silent = true })  -- Split vertical
vim.keymap.set('n', '<leader>-', ':split<CR>', { silent = true })   -- Split horizontal

-- Window navigation
vim.keymap.set('n', '<leader>h', '<C-w>h', { silent = true }) -- Move left
vim.keymap.set('n', '<leader>k', '<C-w>k', { silent = true }) -- Move up
vim.keymap.set('n', '<leader>j', '<C-w>j', { silent = true }) -- Move down
vim.keymap.set('n', '<leader>l', '<C-w>l', { silent = true }) -- Move right
