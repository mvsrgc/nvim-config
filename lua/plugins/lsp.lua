return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',

            -- Autocompletion
            {
                'hrsh7th/nvim-cmp',
                'hrsh7th/cmp-nvim-lsp',
                'saadparwaiz1/cmp_luasnip',
                'L3MON4D3/LuaSnip',
                'rafamadriz/friendly-snippets',
            },
        },
        config = function()
            local lsp_zero = require('lsp-zero')

            lsp_zero.on_attach(function(client, bufnr)
                lsp_zero.default_keymaps({ buffer = bufnr })
                lsp_zero.buffer_autoformat()
            end)


            require('mason').setup({})
            require('mason-lspconfig').setup({
                ensure_installed = { "pyright" },
                handlers = {
                    lsp_zero.default_setup,
                    lua_ls = function()
                        local lua_opts = lsp_zero.nvim_lua_ls()
                        require('lspconfig').lua_ls.setup(lua_opts)
                    end,
                }
            })

            local cmp = require('cmp')
            local cmp_format = lsp_zero.cmp_format()

            cmp.setup({
                formatting = cmp_format,
                mapping = cmp.mapping.preset.insert({
                    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-d>'] = cmp.mapping.scroll_docs(4),
                }),
            })

            local cmp = require('cmp')
            local cmp_action = require('lsp-zero').cmp_action()
            require('luasnip.loaders.from_vscode').lazy_load()

            cmp.setup({
                preselect = 'item',
                completion = {
                    completeopt = 'menu,menuone,noinsert'
                },
                mapping = {
                    ['<CR>'] = cmp.mapping.confirm({ select = false }),
                    ['<Tab>'] = cmp_action.tab_complete(),
                    ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
                },
                sources = {
                    { name = 'path' },
                    { name = 'nvim_lsp' },
                    { name = 'buffer' },
                    { name = 'luasnip' },
                },
            })
        end
    },
    {
        'Bekaboo/dropbar.nvim',
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = {
            'nvim-telescope/telescope-fzf-native.nvim'
        }
    },
    { 'stevearc/aerial.nvim',  cmd = 'AerialToggle' },
    { 'windwp/nvim-autopairs', opts = {},           event = 'InsertEnter' },
}
