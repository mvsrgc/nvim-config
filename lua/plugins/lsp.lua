return {
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        dependencies = {
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            local lsp_zero = require "lsp-zero"

            lsp_zero.on_attach(function(_, bufnr)
                lsp_zero.default_keymaps { buffer = bufnr }
                lsp_zero.buffer_autoformat()
            end)

            -- Sets neovim-specific settings for lua_ls.
            -- This prevents lua errors in config files.
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)

            require("mason").setup {}
            require("mason-lspconfig").setup {
                handlers = {
                    lsp_zero.default_setup,
                },
            }

            vim.diagnostic.config({
                virtual_text = false,
            })
        end,
    },
    {
        {
            "hrsh7th/nvim-cmp",
            dependencies = {
                "VonHeikemen/lsp-zero.nvim",
                "hrsh7th/cmp-nvim-lsp",
                "saadparwaiz1/cmp_luasnip",
                "L3MON4D3/LuaSnip",
                "rafamadriz/friendly-snippets",
            },
            event = "InsertEnter",
            config = function()
                local cmp = require "cmp"
                local cmp_action = require("lsp-zero").cmp_action()
                local lsp_zero = require "lsp-zero"
                require("luasnip.loaders.from_vscode").lazy_load()

                cmp.setup {
                    sources = {
                        { name = "path" },
                        { name = "nvim_lsp" },
                        { name = "buffer" },
                        { name = "luasnip" },
                    },
                    formatting = lsp_zero.cmp_format(),
                    mapping = cmp.mapping.preset.insert {
                        ["<CR>"] = cmp.mapping.confirm { select = false },
                        ["<Tab>"] = cmp_action.tab_complete(),
                        ["<S-Tab>"] = cmp_action.select_prev_or_fallback(),
                    },
                }
            end
        },
    }
}
