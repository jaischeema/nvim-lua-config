local map = vim.keymap.set

-- Neotree
map("n", "<leader>d", ":Neotree toggle=true<CR>", { desc = "Neotree toggle" })
map("n", "<F2>", ":Neotree toggle=true<CR>", { noremap = true, desc = "Neotree toggle" })
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

-- Other helpers
map("n", "<leader>f", ":noh<CR>", { desc = "Clear highlights" })
