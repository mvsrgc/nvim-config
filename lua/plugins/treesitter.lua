return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = "VeryLazy",
        config = function()
            local _ = require("nvim-treesitter.configs").setup {
                ensure_installed = { "python", "lua", "go", "c", "cpp", "markdown" },
                highlight = {
                    enable = true,
                },
            }
        end,
    },
}
