
return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",  -- use harpoon2 if you're using the newer version
  opts = {},            -- REQUIRED: this makes `harpoon:setup()` run automatically
  config = function(_, opts)
    local harpoon = require("harpoon")
    harpoon:setup(opts)
  end,
  keys = {
    {
      "<leader>ha",
      function() require("harpoon"):list():add() end,
      desc = "Harpoon Add File"
    },
    {
      "<C-e>",
      function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end,
      desc = "Harpoon Toggle Menu"
    },
    {
      "<C-h>",
      function() require("harpoon"):list():select(1) end,
      desc = "Harpoon Select 1"
    },
    {
      "<C-t>",
      function() require("harpoon"):list():select(2) end,
      desc = "Harpoon Select 2"
    },
    {
      "<C-n>",
      function() require("harpoon"):list():select(3) end,
      desc = "Harpoon Select 3"
    },
    {
      "<C-s>",
      function() require("harpoon"):list():select(4) end,
      desc = "Harpoon Select 4"
    },
    {
      "<C-S-P>",
      function() require("harpoon"):list():prev() end,
      desc = "Harpoon Prev File"
    },
    {
      "<C-S-N>",
      function() require("harpoon"):list():next() end,
      desc = "Harpoon Next File"
    },
  },
}
