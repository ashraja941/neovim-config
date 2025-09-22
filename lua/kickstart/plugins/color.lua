function ColorMyPencils(color)
	-- color = color or "rose-pine"
	-- vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })

end

return {
    -- {
    --     "folke/tokyonight.nvim",
    --     config = function()
    --         require("tokyonight").setup({
    --             -- your configuration comes here
    --             -- or leave it empty to use the default settings
    --             style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    --             transparent = true, -- Enable this to disable setting the background color
    --             terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
    --             styles = {
    --                 -- Style to be applied to different syntax groups
    --                 -- Value is any valid attr-list value for `:help nvim_set_hl`
    --                 comments = { italic = false },
    --                 keywords = { italic = false },
    --                 -- Background styles. Can be "dark", "transparent" or "normal"
    --                 sidebars = "dark", -- style for sidebars, see below
    --                 floats = "dark", -- style for floating windows
    --             },
    --         })
    --     end
    -- },

    -- {
    --     "rose-pine/neovim",
    --     name = "rose-pine",
    --     config = function()
    --         require('rose-pine').setup({
    --             disable_background = false,
    --         })
    --
    --         vim.cmd("colorscheme rose-pine")
    --
    --         -- ColorMyPencils()
    --     end
    -- },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "auto", -- latte, frappe, macchiato, mocha
                background = { -- :h background
                    dark = "macchiato",
                },
                transparent_background = true, -- disables setting the background color.
                styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = { "italic" }, -- Change the style of comments
                    conditionals = { "italic" },
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                    operators = {},
                    -- miscs = {}, -- Uncomment to turn off hard-coded styles
                },
                custom_highlights = function (colors)
                    return {
                        NormalFloat = { bg = "none"},
                        FloatBorder = { bg = "none"},
                        Pmenu = { bg = "none"}
                    }
                end,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = false,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })

            -- setup must be called before loading
            vim.cmd("colorscheme catppuccin")
        end
    },
}
