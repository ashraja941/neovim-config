return {
	{ -- Collection of various small independent plugins/modules
		"echasnovski/mini.nvim",
		config = function()
			-- Text objects
			local gen_spec = require("mini.ai").gen_spec
			require("mini.ai").setup({
				n_lines = 500,
				-- Add Treesitter-powered function textobject on `F`.
				-- Usage: `viF` for inner function body (mapped here to entire function), `vaF` for outer function.
				custom_textobjects = {
					-- Keep `F` for function definition textobject
					F = gen_spec.treesitter({
						a = { "@function.outer", "@method.outer" },
						i = { "@function.inner", "@method.outer" },
					}),
					-- Make lowercase `f` also select function definitions (not calls),
					-- so `vif`/`vaf` operate on function bodies/definitions.
					f = gen_spec.treesitter({
						a = { "@function.outer", "@method.outer" },
						i = { "@function.inner", "@method.outer" },
					}),
					-- Ensure `a` is the argument/parameter textobject so `via` selects arguments
					a = gen_spec.treesitter({
						a = { "@parameter.outer" },
						i = { "@parameter.inner" },
					}),
				},
			})

			-- Add/delete/replace surroundings (brackets, quotes, etc.)
			-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
			-- - sr)'  - [S]urround [R]eplace [)] [']
			require("mini.surround").setup()
			vim.keymap.del("n", "s")
			vim.keymap.del("x", "s")

			-- Simple and easy statusline.
			local statusline = require("mini.statusline")
			statusline.setup({ use_icons = vim.g.have_nerd_font })

			-- You can configure sections in the statusline by overriding their
			-- default behavior. For example, here we set the section for
			-- cursor location to LINE:COLUMN
			---@diagnostic disable-next-line: duplicate-set-field
			statusline.section_location = function()
				return "%2l:%-2v"
			end
		end,
	},
}
