vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.lsp.set_log_level("debug")

require("core.options")
require("core.keymaps")
require("core.lazy")
require("everforest").load()
