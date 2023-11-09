return {
    { "nvim-tree/nvim-web-devicons",  lazy = true },
    { "nvim-lualine/lualine.nvim",    event = "VeryLazy" },
    { "lukas-reineke/headlines.nvim", opts = {},         ft = "markdown" },
    { "windwp/nvim-autopairs",        opts = {},         event = "InsertEnter" },
    {
        "stevearc/oil.nvim",
        cmd = "Oil",
        opts = {
            columns = { "icon", "permissions", "size", "mtime" },
            view_options = { show_hidden = true },
        },
    },
    {
        "lewis6991/gitsigns.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        event = "VeryLazy",
        opts = {},
    },
    {
        "Bekaboo/dropbar.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvim-telescope/telescope-fzf-native.nvim",
        },
    },
    {
        "stevearc/aerial.nvim",
        opts = {
            backends = { "lsp", "treesitter", "markdown", "man" },
            layout = { min_width = 28 },
            show_guides = true,
            filter_kind = false,
            guides = {
                mid_item = "├ ",
                last_item = "└ ",
                nested_top = "│ ",
                whitespace = "  ",
            },
        },
        cmd = "AerialToggle",
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = { "VeryLazy" },
        main = "ibl",
        opts = {
            indent = { char = "▏" },
            scope = {
                enabled = false,
            },
        },
    },
}
