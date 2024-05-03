return {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
        require('mini.starter').setup()
        require('mini.tabline').setup()
        require('mini.comment').setup()
        require('mini.bracketed').setup()
        require('mini.pairs').setup()
        require('mini.cursorword').setup()
        require('mini.hipatterns').setup({
            highlighters = {
                -- Highlight 'FIXME', 'HACK', 'TODO', 'NOTE'
                fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme'},
                hack = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack'},
                todo = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo'},
                note = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote'},

                -- Highlight hex color strings with their color
                hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
            }
        })
        require('mini.splitjoin').setup()
    end
}

