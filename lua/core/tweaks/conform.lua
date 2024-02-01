require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		-- Use a sub-list to run only the first available formatter
		javascript = { "prettier" },
		rust = { "rustfmt" },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
