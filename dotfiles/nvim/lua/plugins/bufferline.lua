return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        "catppuccin/nvim",
    },
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",
                separator_style = "thin",
                always_show_bufferline = true,
                show_buffer_close_icons = true,
                show_close_icon = true,
                color_icons = true,
                diagnostics = "nvim_lsp",
                indicator = {
                    style = 'icon',
                },
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "left",
                        separator = true
                    }
                },
                highlights = require("catppuccin.groups.integrations.bufferline").get()
            },
        })

        -- Keymaps for navigation
        vim.keymap.set('n', '<leader>wp', '<Cmd>BufferLineTogglePin<CR>', { noremap = true, silent = true })
        vim.keymap.set('n', '<leader>wc', '<Cmd>BufferLinePickClose<CR>', { noremap = true, silent = true })
        vim.keymap.set('n', '<leader>wl', '<Cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true })
        vim.keymap.set('n', '<leader>wh', '<Cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true })
    end,
}
