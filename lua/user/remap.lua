--local opts = {noremap = true, silent = true} -- Investigate this

vim.g.mapleader = " "

local k = vim.keymap.set
-- Normal
k("n", "<leader>ev", vim.cmd.Ex)
k("n", "<leader>e", ":NvimTreeToggle<CR>")

k("n", "<C-d>", "<C-d>zz")
k("n", "<C-u>", "<C-u>zz")
k("n", "J", "mzJ`z")
k("n", "<leader><enter>", [[i<enter><Esc>O]])
k({"n", "v"}, "<leader>y", [["+y]])
k("n", "<leader>Y", [["+Y]])
-- Resize
k("n", "<C-Up>", ":resize +2<Enter>")
k("n", "<C-Down>", ":resize -2<Enter>")
k("n", "<C-Left>", ":vertical resize +2<CR>")
k("n", "<C-Right>", ":vertical resize -2<CR>")
-- Navigate buffers
k("n", "<S-l>", ":bnext<CR>")
k("n", "<S-h>", ":bprevious<CR>")
-- Navigate panes
k("n", "<C-h>", "<C-w>h")

k("n", "<C-j>", "<C-w>j")
k("n", "<C-k>", "<C-w>k")
k("n", "<C-l>", "<C-w>l")
-- Navigate terminal

-- Insert

-- Visual & visual block
    -- Wrap selected text in quotes
k("v", "\"", [[c""<Esc>P]])
k("v", "\'", [[c''<Esc>P]])
    -- Move selected text
k("v", "J", ":m '>+1<Enter>gv=gv")
k("v", "K", ":m '<-2<Enter>gv=gv")
-- Stay in indent
k("v", "<", "<gv^")
k("v", ">", ">gv^")

k("x", "<leader>p", [["_dP]])

-- 

