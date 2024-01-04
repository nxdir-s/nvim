vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- remove search highlighting
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
keymap.set("x", "<leader>p", '"_dP')

-- next greatest remap : asbjornHaland
keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')
keymap.set("n", "<leader>Y", '"+Y')

keymap.set("n", "<leader>d", '"_d')
keymap.set("v", "<leader>d", '"_d')

keymap.set("n", "Q", "<nop>")

keymap.set("n", "<leader>k", "<cmd>cnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>cprev<CR>zz")
--keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- plugin remaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
