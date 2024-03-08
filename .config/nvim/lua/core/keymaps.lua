local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local bufnr = vim.api.nvim_get_current_buf()

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window, could be done on hold sometime
keymap.set("n", "s<left>", "<C-w><")
keymap.set("n", "s<right>", "<C-w>>")
keymap.set("n", "s<up>", "<C-w>+")
keymap.set("n", "s<down>", "<C-w>-")

-- keymap.set("n", "<Leader>e", vim.diagnostic.open_float, opts)

-- for met esc is comes naturally when I want to stop higlight
-- there for let it be esc
keymap.set("n", "<esc>", ":noh<cr><esc>", opts)

keymap.set("n", "<c-k>", vim.diagnostic.goto_next)
keymap.set("n", "<C-j>", vim.diagnostic.goto_prev)

vim.api.nvim_buf_set_keymap(bufnr, 'n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

