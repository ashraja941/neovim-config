return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},

	config = function()
		require("oil").setup({
			float = {
				border = "rounded",
				win_options = {
					winblend = 0,
				},
			},
		})

		-- Keymaps for oil.nvim
		vim.keymap.set("n", "<space>-", require("oil").toggle_float, { desc = "Open oil in floating window" })
	end,
	lazy = false,
}
