return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            bigfile = { enabled = true },
            indent = { enabled = true },
            -- explorer = { enabled = true },
            input = { enabled = true },
            -- picker = { enabled = true },
            notifier = { enabled = true },
            quickfile = { enabled = true },
            scope = { enabled = true },
            -- scroll = { enabled = true },
            statuscolumn = { enabled = true },
            words = { enabled = true },
            dashboard = {
                sections = {
                    { section = "header" },
                    { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" , padding = 1},
                    { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" , padding = 1},
                    { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" , padding = 1},
                    { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" , padding = 1},
                    { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})", padding = 1 },
                    { icon = " ", key = "s", desc = "Restore Session", section = "session" , padding = 1},
                    { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 , padding = 1},
                    { section = "startup" },

                },
            },
            lazygit = {enabled = true},
        },
    }
}
