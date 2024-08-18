vim.g.mapleader = " "

local keymap = vim.keymap
-- general keymaps

keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- Number Manipulation

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>_", "<C-x>")

-- Telescope

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

keymap.set("n", "<leader>rf", "<cmd>NvimTreeRefresh<cr>")

-- Window Managment

keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make equal split
keymap.set("n", "<leader>sx", ":close<CR>") --close the split

--Tabs

keymap.set("n", "<leader>bn", ":bnext<cr>")
keymap.set("n", "<leader>bp", ":bprev<cr>")

--Window Resize

keymap.set("n", "<leader><", ":vertical resize +5<cr>")
keymap.set("n", "<leader>>", ":vertical resize -5<cr>")

keymap.set("n", "<leader>=", ":horizontal resize +5<cr>")
keymap.set("n", "<leader>-", ":horizontal resize -5<cr>")

-- ToggleTerm Keymaps

keymap.set("n", "<leader>ttf", "<cmd>ToggleTerm direction=float<cr>")
keymap.set("n", "<leader>ttv", "<cmd>ToggleTerm direction=vertical<cr>")
keymap.set("n", "<leader>tth", "<cmd>ToggleTerm direction=horizontal<cr>")
