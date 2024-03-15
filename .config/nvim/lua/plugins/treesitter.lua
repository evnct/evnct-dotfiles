return {
	{
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				ensure_installed = {
					"lua",
					"rust",
					"vim",
					"vimdoc",
					"java",
					"fish",
					"sql",
					"gitignore",
					"python",
					"javascript",
					"tsx",
				},
				sync_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	}
}
