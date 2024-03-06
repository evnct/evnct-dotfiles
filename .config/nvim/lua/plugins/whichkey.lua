return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        -- a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
        return {
            require("which-key").register {
                ["<leader>"] = {
                    b = { name = "+Buffer"},
                    l = { name = "+Lsp" },
                    s = { name = "+Search" },
                    v = { name = "+Vim"},
                },
            }
        }
    end
}