require("telescope").setup({
	file_ignore_patterns = { "node%_modules/.*" },
})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<Space>ff", builtin.find_files, {})
vim.keymap.set("n", "<Space>fp", builtin.oldfiles, {})
vim.keymap.set("n", "<Space>fg", builtin.live_grep, {})
vim.keymap.set("n", "<Space>fh", builtin.help_tags, {})
vim.keymap.set("n", "<Space>fw", builtin.current_buffer_fuzzy_find, {})