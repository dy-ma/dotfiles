require("toggleterm").setup({
    direction = 'float'
})

-- Open floating term
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>")

-- Allow escape to exit terminal mode
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
