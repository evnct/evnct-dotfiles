return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "hrsh7th/cmp-nvim-lsp" },
	lazy = false,
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})

		lspconfig.tsserver.setup({
			capabilities = capabilities,
		})

		lspconfig.jedi_language_server.setup({
			capabilities = capabilities,
		})

		vim.api.nvim_create_autocmd('LspAttach', {
			callback = function(args)
				vim.keymap.set('n', 'crr', vim.lsp.buf.rename, { buffer = args.buf })
				vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
				vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, { buffer = args.buf })
				vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = args.buf })
				vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf })
			end,
		})
	end,
}
