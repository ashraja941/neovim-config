-- Set leader key to 'space'

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- ensure that we use a nerd font
vim.g.have_nerd_font = true

require 'keymaps'

require 'options'

require 'lazy-bootstrap'

local group = vim.api.nvim_create_augroup('TreesitterSetup', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
    group = group,
    -- List the languages you want to enable
    pattern = { "python", "lua", "c", "markdown", "vim" }, 
    callback = function(args)
        -- Enable Neovim's built-in treesitter highlighting
        vim.treesitter.start(args.buf)

        -- Enable treesitter-based indentation
        vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})
