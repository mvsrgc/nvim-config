local api = vim.api

-- Define the function that contains the actions
local function open_terminal()
    api.nvim_command("vsplit")
    api.nvim_command("term")
    api.nvim_command("startinsert")
end

-- Create the custom command ':Term' that calls the function
api.nvim_create_user_command('Term', open_terminal, {})

-- Set up an autocommand for when the terminal opens
api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    callback = function()
        vim.opt_local.relativenumber = false
        vim.opt_local.number = false
    end,
})
