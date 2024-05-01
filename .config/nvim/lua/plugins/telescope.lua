return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>ff", "<CMD>Telescope find_files<CR>" },
        { "<leader>fg", "<CMD>Telescope live_grep<CR>"}
    }
}
