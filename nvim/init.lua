-- init.lua
require("config.lazy")
require("config.settings")
require("plugins.telescope")
require("keymaps")
require("plugins.lsp")
require("plugins.colors")

-- ColorMyPencils("gruvbox")  -- Use "gruvbox" or any other color scheme

-- Open file explorer on Neovim startup
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("Ex")
    end,
})
