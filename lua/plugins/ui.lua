return {
    { 'j-hui/fidget.nvim', opts = {} },
    { 'folke/tokyonight.nvim', opts = {} },
    { 'nvim-tree/nvim-web-devicons', lazy = true },
    {
        'nvim-lualine/lualine.nvim',
        event = 'VeryLazy',
        opts = {},
    },
    { 'lukas-reineke/headlines.nvim', opts = {}, ft = 'markdown' },
    {
        'folke/trouble.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {},
    },
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
