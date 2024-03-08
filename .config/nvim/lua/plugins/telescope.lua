return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.5',
	dependencies = { 'nvim-lua/plenary.nvim' },
	lazy = true,
	keys = function()
		local builtin = require("telescope.builtin")
		return {
			{
				"<leader>sb",
				function()
					builtin.buffers()
				end,
				desc = "Find Buffers"
			},
			{
				"<leader>sf",
				function()
					builtin.find_files()
				end,
				desc = "Find Files"
			},
			{
				"<leader>sg",
				function()
					builtin.live_grep()
				end,
				desc = "Live Grep"
			},
			{
				"<leader>sw",
				function()
					builtin.grep_string()
				end,
				desc = "Find Word"
			},
			{
				"<leader>so",
				function()
					builtin.oldfiles()
				end,
				desc = "Previosly Opened Files"
			},
			{
				"<leader>lr",
				function()
					builtin.lsp_references()
				end,
				desc = "References"
			},
			{
				"<leader>li",
				function()
					builtin.lsp_implementations()
				end,
				desc = "Implementations"
			},
			{
				"<leader>ld",
				function()
					builtin.lsp_definitions()
				end,
				desc = "Definitions"
			},
			{
				"<leader>lt",
				function()
					builtin.lsp_implementations()
				end,
				desc = "Type Definitions"
			},
			{
				"<leader>le",
				function()
					builtin.diagnostics()
				end,
				desc = "Diagnostics"
			},
			{
				"<leader>vc",
				function()
					builtin.command_history()
				end,
				desc = "Recently Executed Commands"
			},
			{
				"<leader>vm",
				function()
					builtin.man_pages()
				end,
				desc = "Manpage Entries "
			},
			{
				"<leader>vh",
				function()
					builtin.help_tags()
				end,
				desc = "Help Tags"
			},
			{
				"<leader>vk",
				function()
					builtin.keymaps()
				end,
				desc = "Keymaps"
			},

			-- Treesitter
			{
				"<leader>t",
				function()
					builtin.treesitter()
				end,
				desc = "Lists Function names, variables, from Treesitter"
			},
		}
	end,
}

