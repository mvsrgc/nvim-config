return {
    { "nvim-tree/nvim-web-devicons", event = { "BufReadPre", "BufNewFile" } },
    { "nvim-lualine/lualine.nvim", event = { "BufReadPre", "BufNewFile" } },
    {
        "stevearc/oil.nvim",
        event = "VeryLazy",
        opts = {
            columns = { "icon", "permissions", "size", "mtime" },
            view_options = { show_hidden = true },
        },
    },
    {
        "lewis6991/gitsigns.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        event = "VimEnter",
        opts = {},
    },
    {
        "Bekaboo/dropbar.nvim",
        event = { "BufReadPre", "BufNewFile" },
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
    { "windwp/nvim-autopairs", opts = {}, event = "InsertEnter" },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = { "BufReadPre", "BufNewFile" },
        main = "ibl",
        opts = {
            indent = { char = "▏" },
            scope = {
                show_start = false,
                show_end = false,
            },
        },
    },
    { "lukas-reineke/headlines.nvim", opts = {}, ft = "markdown" },
}
