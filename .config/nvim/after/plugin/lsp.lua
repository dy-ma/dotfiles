local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		-- 'Enter' key to confirm completion
		['<CR>'] = cmp.mapping.confirm({select = false}),

		-- 'Ctrl + Space' to trigger completion menu
		['<C-space>'] = cmp.mapping.complete(),

		-- Navigate between snippet placeholder
		['<C-f'] = cmp_action.luasnip_jump_forward(),
		['<C-b'] = cmp_action.luasnip_jump_backward(),

		-- Scroll up and down in the completion document
		['<Tab>'] = cmp_action.luasnip_supertab(),
		['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
	})
})

-- Manually added language servers
require('lspconfig').clangd.setup({})

