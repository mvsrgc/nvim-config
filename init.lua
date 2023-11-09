require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use({
        'Bekaboo/dropbar.nvim',
        requires = {
            'nvim-telescope/telescope-fzf-native.nvim'
        }
    })

    use {
        'stevearc/aerial.nvim',
        cmd = 'AerialToggle',
        config = function()
            require('aerial-setup').setup()
        end
    }

    use 'lukas-reineke/indent-blankline.nvim'

    use 'nvim-tree/nvim-web-devicons'

    use 'nvim-lualine/lualine.nvim'

    use {
        'stevearc/oil.nvim',
        config = function()
            require('oil').setup({
                columns = { 'icon', 'permissions', 'size', 'mtime' },
                view_options = { show_hidden = true }
            })
        end,
        cmd = 'Oil'
    }

    use { indent = { char = "▏" },
        'lukas-reineke/headlines.nvim',
        after = 'nvim-treesitter',
        ft = 'markdown',
        config = function()
            require('headlines').setup()
        end,
    }

    use 'joshdick/onedark.vim'

    -- 'gc' to comment visual regions/lines
    use { 'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end,
        event = 'InsertEnter',
        keys = { 'gc', 'gcc' },
    }

    use {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = function() require('nvim-autopairs').setup {} end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            {
                'hrsh7th/nvim-cmp',
                'hrsh7th/cmp-nvim-lsp',
                'saadparwaiz1/cmp_luasnip',
                'L3MON4D3/LuaSnip',
                'rafamadriz/friendly-snippets',
            },
        },
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                run =
                'make'
            }
        },
        cmd = 'Telescope',
        config = function()
            require 'telescope-setup'
        end
    }

    use {
        'lewis6991/gitsigns.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } },
        config = function() require('gitsigns').setup() end,
        cond = function() return vim.fn.isdirectory('.git') ~= 0 end
    }
end)

require('nvim-treesitter.configs').setup {
    ensure_installed = { 'python', 'lua', 'go', 'c', 'cpp', 'markdown' },

    highlight = {
        enable = true,
    }
}

require 'options'
require 'status'
require 'keymaps'
require 'term'
require 'lsp'

vim.cmd('colorscheme onedark')

require('ibl').setup({
    indent = { char = "▏" },
    scope = {
        show_start = false,
        show_end = false
    }
})
