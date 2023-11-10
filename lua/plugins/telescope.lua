return {
    {
        'nvim-telescope/telescope.nvim',
        cmd = 'Telescope',
        tag = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        cmd = 'Telescope',
        build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
    },
}
