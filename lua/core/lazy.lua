local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

----- PLUGS -----
require("lazy").setup({
	{ "neanias/everforest-nvim", version = false, lazy = false, priority = 1000 },
	"nvim-lualine/lualine.nvim",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/nvim-cmp",
	"neovim/nvim-lspconfig",
	"L3MON4D3/LuaSnip",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"tpope/vim-surround",
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	{ "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	{ "stevearc/conform.nvim", opts = {} },
}, {})
