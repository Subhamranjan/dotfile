-- init.lua

require("config.lazy")
require("config.settings")
require("plugins.telescope")
require("keymaps")
require("plugins.lsp")
require("plugins.colors")

-- Color scheme setup
-- Uncomment and replace "gruvbox" with your preferred color scheme if needed
-- ColorMyPencils("gruvbox")

-- Floaterm configuration
local floaterm = require('config.floaterm')

-- Open file explorer on Neovim startup only if no file is specified
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        -- Check if no files are passed to Neovim
        if vim.fn.argc() == 0 then
            vim.cmd("Ex")  -- Open file explorer
        end
    end,
})

