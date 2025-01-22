return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            background = {
                light = "latte",
                dark = "mocha",
            },
            transparent_background = true,
            integrations = {
                nvimtree = true,
                telescope = true,
                notify = false,
                mini = false,
            },
        })
        
        -- Set colorscheme
        vim.cmd.colorscheme "catppuccin"
    end,
}
