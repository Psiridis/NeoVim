local keymap = vim.api.nvim_set_keymap
local opts   = {noremap = true, silent=true}

vim.g.mapleader = " "

--Move text
keymap("n", "<C-j>", ":m .+1<CR>==", opts)
keymap("n", "<C-k>", ":m .-2<CR>==", opts)
keymap("i", "<C-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("i", "<C-k>", "<Esc>:m .-2<CR>==gi", opts)
keymap("v", "<C-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<C-k>", ":m '<-2<CR>gv=gv", opts)

--NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
