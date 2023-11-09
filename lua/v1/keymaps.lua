vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>gf', '<cmd>Telescope git_files<CR>', { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', '<cmd>Telescope find_files<CR>', { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', '<cmd>Telescope help_tags<CR>', { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', '<cmd>Telescope grep_string<CR>', { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', '<cmd>Telescope live_grep<CR>', { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', '<cmd>Telescope diagnostics<CR>', { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', '<cmd>Telescope resume<CR>', { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>ds', '<cmd>Telescope lsp_document_symbols<CR>', { desc = '[D]ocument [S]ymbols' })

-- Terminal mode
vim.api.nvim_set_keymap('t', '<A-h>', [[<C-\><C-N><C-w>h]], { noremap = true })
vim.api.nvim_set_keymap('t', '<A-j>', [[<C-\><C-N><C-w>j]], { noremap = true })
vim.api.nvim_set_keymap('t', '<A-k>', [[<C-\><C-N><C-w>k]], { noremap = true })
vim.api.nvim_set_keymap('t', '<A-l>', [[<C-\><C-N><C-w>l]], { noremap = true })

-- Insert mode
vim.api.nvim_set_keymap('i', '<A-h>', [[<C-\><C-N><C-w>h]], { noremap = true })
vim.api.nvim_set_keymap('i', '<A-j>', [[<C-\><C-N><C-w>j]], { noremap = true })
vim.api.nvim_set_keymap('i', '<A-k>', [[<C-\><C-N><C-w>k]], { noremap = true })
vim.api.nvim_set_keymap('i', '<A-l>', [[<C-\><C-N><C-w>l]], { noremap = true })

-- Normal mode
vim.api.nvim_set_keymap('n', '<A-h>', [[<C-w>h]], { noremap = true })
vim.api.nvim_set_keymap('n', '<A-j>', [[<C-w>j]], { noremap = true })
vim.api.nvim_set_keymap('n', '<A-k>', [[<C-w>k]], { noremap = true })
vim.api.nvim_set_keymap('n', '<A-l>', [[<C-w>l]], { noremap = true })

vim.api.nvim_set_keymap('n', '<C-u>', [[<C-u>zz]], { noremap = true })
vim.api.nvim_set_keymap('n', '<A-d>', [[<C-d>zz]], { noremap = true })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "~", "<CMD>Term<CR>", { desc = "Open terminal in split" })

vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
