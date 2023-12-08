local map = vim.keymap.set

-- Neotree
map("n", "<leader>f", ":Neotree toggle=true<CR>", { desc = "Neotree" })
map("n", "<leader>n", ":Neotree reveal=true source=filesystem<CR>", { desc = "Neotree open current file" })

-- Navigation
map("n", "<leader>B", ":edit #<CR>", { desc = "Previous buffer" })
map("n", "<C-h>", "<c-w>h")
map("n", "<C-j>", "<c-w>j")
map("n", "<C-k>", "<c-w>k")
map("n", "<C-l>", "<c-w>l")

-- Circular tab navigation
map("n", "<tab>", "<c-w>w", { noremap = true, silent = true })
map("n", "<S-tab>", "<c-w>W", { noremap = true, silent = true })
