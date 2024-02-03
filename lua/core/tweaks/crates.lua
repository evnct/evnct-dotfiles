require("crates").setup({})

local crates = require("crates")
local opts = { silent = true }

vim.keymap.set("n", "<leader>ct", crates.toggle, opts)
vim.keymap.set("n", "<leader>cr", crates.reload, opts)
