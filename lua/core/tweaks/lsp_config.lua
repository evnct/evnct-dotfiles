local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<space>gp", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<space>gn", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

lspconfig.rust_analyzer.setup({
	capabilities = capabilities,
})

lspconfig.pyright.setup({})
lspconfig.lua_ls.setup({})
