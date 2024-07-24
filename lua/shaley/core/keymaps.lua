vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "fd", "<ESC>", { desc = "Exit insert mode with fd" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>qq", ":qa<CR>", { desc = "Quit all" })

-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>ws", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>w=", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Focus left split" })
keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Focus right split" })
keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Focus below split" })
keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Focus above split" })
