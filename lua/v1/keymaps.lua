vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Telescope
vim.keymap.set('n', '<leader>sr', '<cmd>Telescope resume<CR>', { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>sh', '<cmd>Telescope help_tags<CR>', { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sb', '<cmd>Telescope buffers<CR>', { desc = '[S]earch [B]uffers' })
vim.keymap.set('n', '<leader>/', '<cmd>Telescope live_grep<CR>', { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sd', '<cmd>Telescope diagnostics<CR>', { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader><leader>', '<cmd>Telescope git_files<CR>', { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>ss', '<cmd>Telescope lsp_document_symbols<CR>', { desc = '[S]earch [S]ymbols' })

-- Smart splits
vim.keymap.set({ 'n', 't' }, '<A-h>', require('smart-splits').resize_left)
vim.keymap.set({ 'n', 't' }, '<A-j>', require('smart-splits').resize_down)
vim.keymap.set({ 'n', 't' }, '<A-k>', require('smart-splits').resize_up)
vim.keymap.set({ 'n', 't' }, '<A-l>', require('smart-splits').resize_right)
-- moving between splits
vim.keymap.set({ 'n', 't' }, '<C-h>', require('smart-splits').move_cursor_left)
vim.keymap.set({ 'n', 't' }, '<C-j>', require('smart-splits').move_cursor_down)
vim.keymap.set({ 'n', 't' }, '<C-k>', require('smart-splits').move_cursor_up)
vim.keymap.set({ 'n', 't' }, '<C-l>', require('smart-splits').move_cursor_right)
-- swapping buffers between windows
vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right)

-- Center after vertical navigation
vim.api.nvim_set_keymap('n', '<C-u>', [[<C-u>zz]], { noremap = true })
vim.api.nvim_set_keymap('n', '<A-d>', [[<C-d>zz]], { noremap = true })

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
vim.keymap.set('n', '~', '<CMD>Term<CR>', { desc = 'Open terminal in split' })

vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')
