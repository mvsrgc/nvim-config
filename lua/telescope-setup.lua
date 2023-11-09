local M = {}

M.setup = function()
    require('telescope').setup {
        extensions = {
            fzf = {
                fuzzy = true,               -- false will only do exact matching
                override_generic_sorter = true, -- override the generic sorter
                override_file_sorter = true, -- override the file sorter
                case_mode = 'smart_case',   -- or 'ignore_case' or 'respect_case'
            }
        },
        defaults = {
            layout_config = {
                horizontal = { prompt_position = "top", preview_width = 0.55 },
                vertical = { mirror = false },
                width = 0.87,
                height = 0.80,
                preview_cutoff = 120,
            },
        }
    }

    require('telescope').load_extension('fzf')
end

return M
