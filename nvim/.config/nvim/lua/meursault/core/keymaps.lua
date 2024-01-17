-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local opts = {noremap = true, silent = true} -- set options

-- General Keymaps 

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Disable arrow keys in Normal, Visual, and Operator-pending modes
keymap.set("", "<Up>", "<Nop>", opts)
keymap.set("", "<Down>", "<Nop>", opts)
keymap.set("", "<Left>", "<Nop>", opts)
keymap.set("", "<Right>", "<Nop>", opts)

-- Disable arrow keys in Insert mode
keymap.set("i", "<Up>", "<Nop>", opts)
keymap.set("i", "<Down>", "<Nop>", opts)
keymap.set("i", "<Left>", "<Nop>", opts)
keymap.set("i", "<Right>", "<Nop>", opts)

-- Disable arrow keys in Command-line mode
keymap.set("c", "<Up>", "<Nop>", opts)
keymap.set("c", "<Down>", "<Nop>", opts)
keymap.set("c", "<Left>", "<Nop>", opts)
keymap.set("c", "<Right>", "<Nop>", opts)

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", "<leader>w", ":w<CR>", opts)
keymap.set("n", "<leader>q", ":q<CR>", opts)
keymap.set("n", "<leader>e", ":Lexplore 30<CR>", opts)

-- Move lines
keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", opts)
keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", opts)
keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", opts)
keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", opts)
keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", opts)
keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", opts)

-- Visual --
-- Change indent multiple times rather than one time
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)
