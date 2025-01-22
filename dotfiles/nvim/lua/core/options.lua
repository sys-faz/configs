-- Basic editor options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Matching pairs
vim.opt.showmatch = true

-- Colors and highlighting

-- Custom highlights
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#87ceeb' })

-- Set background
vim.opt.background = 'dark'
