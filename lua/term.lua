vim.cmd [[
  autocmd TermOpen * setlocal norelativenumber
]]

-- Define the function that contains the actions
function term()
    vim.cmd('vsplit')
    vim.cmd('term')
    vim.cmd('startinsert')
end

-- Create the custom command ':Term' that calls the function
vim.cmd('command! Term lua term()')
