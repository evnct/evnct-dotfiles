return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = true,
    keys = function()
        local builtin = require("telescope.builtin")
        return {
            { "<leader>tf", function()
                builtin.find_files()
            end, desc = "Find Files" },
            { "<leader>tg", function()
                builtin.live_grep()
            end, desc = "Live Grep" },
            { "<leader>tb", function()
                builtin.buffers()
            end, desc = "Find Buffers" },
            { "<leader>tw", function()
                builtin.grep_string()
            end, desc = "Search Word Under Cursor" },
            { "<leader>tw", function()
                builtin.oldfiles()
            end, desc = "List Previosly Opened Files" },
        }
    end,
}