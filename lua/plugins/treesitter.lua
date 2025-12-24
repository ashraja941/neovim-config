return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-context",
		},
		branch = "main",
		lazy = false,
		build = ":TSUpdate",

		config = function()
			require("nvim-treesitter.install").compilers = { "zig" }
			local ts = require("nvim-treesitter")
			ts.install({ "lua", "python", "markdown" })
		end,
	},
}
