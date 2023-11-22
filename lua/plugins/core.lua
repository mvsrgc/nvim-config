return {
    { 'numToStr/Comment.nvim', opts = {}, keys = { 'gc', 'gb', 'gcc', 'gbb' } },
    { 'mrjones2014/smart-splits.nvim', opts = {} },
    { 'echasnovski/mini.pairs', opts = {}, event = 'InsertEnter', version = false },
    { 'echasnovski/mini.surround', version = false, opts = {}, event = 'VeryLazy' },
    {
        'stevearc/oil.nvim',
        opts = {
            default_file_explorer = true,
            columns = { 'icon', 'permissions', 'size', 'mtime' },
            view_options = { show_hidden = true },
        },
    },
}
