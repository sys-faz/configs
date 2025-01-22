return {
    "folke/lazy.nvim",
    version = "*",
    config = {
        change_detection = {
            -- automatically check for config updates
            enabled = true,
            -- show notification when changes are found
            notify = false,
        },
        -- where lazy installs plugins
        root = vim.fn.stdpath("data") .. "/lazy",
        lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json",
        -- Nice UI improvements
        ui = {
            border = "rounded",
            icons = {
                cmd = "⌘",
                config = "🛠",
                event = "📅",
                ft = "📂",
                init = "⚙",
                keys = "🗝",
                plugin = "🔌",
                runtime = "💻",
                source = "📄",
                start = "🚀",
                task = "📌",
                lazy = "💤 ",
            },
        },
    },
}
