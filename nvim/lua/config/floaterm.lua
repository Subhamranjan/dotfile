function open_floating_terminal()
    local opts = {
        relative = 'editor',
        width = math.floor(vim.o.columns * 0.8), -- 80% of screen width
        height = math.floor(vim.o.lines * 0.8),  -- 80% of screen height
        row = math.floor(vim.o.lines * 0.1),     -- Centered vertically
        col = math.floor(vim.o.columns * 0.1),   -- Centered horizontally
        style = 'minimal',
        border = 'rounded',
    }

    local buf = vim.api.nvim_create_buf(false, true) -- Create a new empty buffer
    vim.api.nvim_open_win(buf, true, opts) -- Open the floating window
    vim.fn.termopen(vim.o.shell) -- Open a terminal in the buffer
    vim.cmd('startinsert') -- Start in insert mode
end
