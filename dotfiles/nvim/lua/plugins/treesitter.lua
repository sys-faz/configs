return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            -- A list of parser names, or "all"
            ensure_installed = { 
                "lua", 
                "vim", 
                "vimdoc",
                "javascript", 
                "typescript", 
                "python",
                "c",
                "cpp",
                "rust",
                "html",
                "css",
                "json",
                "yaml",
                "markdown",
                "markdown_inline"
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            auto_install = true,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },

            -- Indentation based on treesitter
            indent = {
                enable = true
            },

            -- Incremental selection based on the named nodes from the grammar
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = "<C-s>",
                    node_decremental = "<C-backspace>",
                },
            },
        })
    end,
}
