function ColorSetBGNone()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
end

local tokyonight = {
	"folke/tokyonight.nvim",
	config = function()
		require("tokyonight").setup({
			style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
			transparent = true, -- Enable this to disable setting the background color
			terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
			styles = {
				comments = { italic = false },
				keywords = { italic = false },
				sidebars = "day", -- style for sidebars, see below
				floats = "day", -- style for floating windows
			},
		})

		vim.cmd("colorscheme tokyonight")
	end,
}

local rosepine = {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			disable_background = false,
		})

		vim.cmd("colorscheme rose-pine")

		-- ColorMyPencils()
	end,
}

local catpuccin = {
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
			custom_highlights = function(colors)
				return {
					NormalFloat = { bg = "none" },
					FloatBorder = { bg = "none" },
					Pmenu = { bg = "none" },
					TelescopeTitle = { bg = "none" },
					TelescopePromptTitle = { bg = "none" },
					TelescopeResultsTitle = { bg = "none" },
					TelescopePreviewTitle = { bg = "none" },
					TelescopeNormal = { bg = "none" },
					TelescopeBorder = { bg = "none" },
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
			},
		})

		-- setup must be called before loading
		vim.cmd("colorscheme catppuccin")
	end,
}

return rosepine
