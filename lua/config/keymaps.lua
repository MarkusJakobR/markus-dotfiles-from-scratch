local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Clear highlights on search with <Esc> in normal mode
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Easier split navigation
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Open Telescope" }, opts)
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Grep" }, opts)
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help Tags" }, opts)

-- Telescope Explorer
keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>", { desc = "Open File Browser" })
