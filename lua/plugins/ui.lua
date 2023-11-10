return {
    { 'nvim-tree/nvim-web-devicons', lazy = true },
    { 'mrjones2014/smart-splits.nvim', opts = {} },
    { 'nvim-lualine/lualine.nvim', event = 'VeryLazy' },
    { 'lukas-reineke/headlines.nvim', opts = {}, ft = 'markdown' },
    { 'echasnovski/mini.pairs', opts = {}, event = 'InsertEnter', version = false },
    { 'echasnovski/mini.surround', version = false, opts = {}, event = 'VeryLazy' },
    {
        'RRethy/vim-illuminate',
        event = 'VeryLazy',
        config = function()
            require('illuminate').configure({
                min_count_to_highlight = 2,
                delay = 300,
                filetypes_denylist = {
                    'oil',
                },
            })
        end,
    },
    {
        'stevearc/oil.nvim',
        cmd = 'Oil',
        opts = {
            columns = { 'icon', 'permissions', 'size', 'mtime' },
            view_options = { show_hidden = true },
        },
    },
    {
        'lewis6991/gitsigns.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        event = 'VeryLazy',
        opts = {},
    },
    {
        'Bekaboo/dropbar.nvim',
        event = { 'BufEnter', 'BufRead' },
        dependencies = {
            'nvim-telescope/telescope-fzf-native.nvim',
        },
    },
    {
        'stevearc/aerial.nvim',
        opts = {
            backends = { 'lsp', 'treesitter', 'markdown', 'man' },
            layout = { min_width = 28 },
            show_guides = true,
            filter_kind = false,
            guides = {
                mid_item = '├ ',
                last_item = '└ ',
                nested_top = '│ ',
                whitespace = '  ',
            },
        },
        cmd = 'AerialToggle',
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        event = { 'VeryLazy' },
        main = 'ibl',
        opts = {
            indent = { char = '▏' },
            scope = {
                enabled = false,
            },
        },
    },
}
