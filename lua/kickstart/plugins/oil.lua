return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},

  config = function()
    require("oil").setup({})

    -- Keymaps for oil.nvim
    vim.keymap.set("n", "<space>-", require("oil").toggle_float, { desc = "Open oil in floating window" })
  end,
  -- Optional dependencies
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
