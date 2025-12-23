-- Set leader key to 'space'

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- ensure that we use a nerd font
vim.g.have_nerd_font = true

require 'keymaps'

require 'options'

require 'lazy-bootstrap'

-- start treesitter syntax highlighting in all files that have parsers installed
local group = vim.api.nvim_create_augroup('TreesitterSetup', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
    group = group,
    pattern = '*', -- Check for all filetypes
    callback = function(args)
        local bufnr = args.buf
        local ft = vim.bo[bufnr].filetype
        
        -- Check if a parser is available for this filetype
        -- We use pcall to safely check if Neovim can get a parser for this language
        local lang = vim.treesitter.language.get_lang(ft) or ft
        local has_parser = pcall(vim.treesitter.get_parser, bufnr, lang)

        if has_parser then
            -- 1. Enable Highlight
            vim.treesitter.start(bufnr)

            -- 2. Enable Indentation
            -- Note: We only do this if nvim-treesitter is installed
            local ok, ts_indent = pcall(require, 'nvim-treesitter.indent')
            if ok then
                vim.bo[bufnr].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end
        end
    end,
})
