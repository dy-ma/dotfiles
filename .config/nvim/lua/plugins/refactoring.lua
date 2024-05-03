return   {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        'nvim-telescope/telescope.nvim'
    },
    config = function()
        require("refactoring").setup()
        require("telescope").load_extension("refactoring")
        vim.keymap.set("v", "<leader>rr", "<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>", { noremap = true })
    end,
    -- keys = {
    --     {"<leader>rr", function()
    --         require("telescope").load_extension("refactoring")
    --         require("telescope").extensions.refactoring.refactors()
    --     end, mode = "v"}
    -- }
}
