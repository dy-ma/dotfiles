
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({
    check_outdated_packages_on_open = true,

    ui = {
        border = "single"
    }
})

require('mason-lspconfig').setup({
	ensure_installed = {
		'tsserver',
		'bashls',
		'dockerls',
		'gopls',
		'html',
		'jsonls',
		'jdtls',
		'ltex',
		'lua_ls',
		'autotools_ls',
		'marksman',
		'pyright',
	},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({
                capabilities = lsp_capabilities,
            })
		end,
        jdtls = function()
            require('lspconfig').jdtls.setup({
                capabilities = lsp_capabilities,
                settings = {
                    java = {
                        signatureHelp = { enabled = true },
                    }
                }
            })
        end,
	},
})

