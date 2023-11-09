return {
    { 'nvim-tree/nvim-web-devicons', event = { 'BufReadPre', 'BufNewFile' }, },
    { 'nvim-lualine/lualine.nvim',   event = { 'BufReadPre', 'BufNewFile' }, },
    {
        'stevearc/oil.nvim',
        event = 'VeryLazy',
        opts = {
            columns = { 'icon', 'permissions', 'size', 'mtime' },
            view_options = { show_hidden = true }
        }
    },
    {
        event = 'VimEnter',
        'lewis6991/gitsigns.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {}
    }
}
