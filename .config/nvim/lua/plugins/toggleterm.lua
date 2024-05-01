return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = { direction = 'float' },
    keys = {
        {"<leader>t", "<CMD>ToggleTerm<CR>"},
        {"<esc>", [[<C-\><C-n>]], mode="t", desc="Exit terminal mode"}
    }
}

