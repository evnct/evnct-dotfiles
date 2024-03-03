return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>tf", function() require("telescope.builtin").find_files() end, desc="Find Files" },
        { "<leader>tg", function() require("telescope.builtin").live_grep() end, desc="Live Grep" },
        { "<leader>tb", function() require("telescope.builtin").buffers() end, desc="Find Buffers" },
    }
}