 return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup()

        -- Keymaps for nvim-tree
        vim.keymap.set('n', '<leader>ee', ':Neotree filesystem reveal left<CR>', { noremap = true, silent = true })
        vim.keymap.set('n', '<leader>ec', ':Neotree close<CR>', { noremap = true, silent = true })
    end,
}

