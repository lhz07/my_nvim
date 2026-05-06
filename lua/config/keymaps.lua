-- Keymaps are automatically loaded on the VeryLazy event

-- toggle comment
vim.keymap.set("n", "<A-/>", "gcc", { remap = true, desc = "Toggle Comment" })
vim.keymap.set("v", "<A-/>", "gc", { remap = true, desc = "Toggle Comment" })
vim.keymap.set("i", "<A-/>", "<C-o>gcc", { remap = true, desc = "Toggle Comment" })
-- move line
vim.keymap.set("n", "<C-j>", "<Cmd>execute 'move .+' . v:count1<CR>==")
vim.keymap.set("n", "<C-k>", "<Cmd>execute 'move .-' . (v:count1 + 1)<CR>==")
-- go to start/end of a line
vim.keymap.set("i", "<C-a>", "<C-o>^")
vim.keymap.set("i", "<C-e>", "<End>")
vim.keymap.set({ "n", "v" }, "0", "$", { desc = "Go to end of line" })
vim.keymap.set({ "n", "v", "o" }, "`", "^", { desc = "Go to first non-blank char" })

vim.keymap.set({ "n", "v" }, "g0", "0", { desc = "Go to absolute beginning of line" })
-- move in insert mode
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- Command version -----------------------------------------------------------------------------------------------------------------------------

vim.keymap.set("n", "<D-/>", "gcc", { remap = true, desc = "Toggle Comment" })
vim.keymap.set("v", "<D-/>", "gc", { remap = true, desc = "Toggle Comment" })
vim.keymap.set("i", "<D-/>", "<C-o>gcc", { remap = true, desc = "Toggle Comment" })

vim.keymap.set("i", "<D-a>", "<C-o>^")
vim.keymap.set("i", "<D-e>", "<End>")
vim.keymap.set({ "i", "n", "v", "o" }, "<D-s>", "<Cmd>w<CR><Esc>")
