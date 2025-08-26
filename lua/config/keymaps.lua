local map = vim.keymap.set

map("n", "<C-a>", "ggVG", { noremap = true, silent = true })
map("n", "E", "g_", { desc = "Go to end of line" })
map("v", "E", "g_", { desc = "Go to end of line" })
map("n", "B", "^", { desc = "Go to beginning of line" })
map("v", "B", "^", { desc = "Go to beginning of line" })
map("n", "<leader>r", "<leader>be", { remap = true, silent = true })
