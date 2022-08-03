local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n"
--   insert_mode = "i"
--   visual_mode = "v"
--   visual_block_mode = "x"
--   term_mode = "t"
--   command_mode = "c"

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<cr>", opts)
keymap("n", "<C-Down>", ":resize -2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<cr>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<cr>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<cr>==", opts)
keymap("v", "<A-k>", ":m .-1<cr>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

keymap("n", "<leader>/", ":ToggleTerm<cr>", opts)

-- telescope
keymap("n", "<leader>ff", ":Telescope find_files theme=dropdown previewer=false<cr>", opts)
keymap("n", "<leader>fb", ":Telescope buffers theme=dropdown previewer=false<cr>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep theme=dropdown previewer=false<cr>", opts)
keymap("n", "<leader>gs", ":Telescope aerial theme=dropdown previewer=false<cr>", opts)
keymap("n", "<leader>fp", ":Telescope projects<cr>", opts)
keymap("n", "<leader>fh", ":Telescope harpoon marks theme=dropdown previewer=false<cr>", opts)

keymap("n", "<leader>fs", ":Telescope possession list theme=dropdown previewer=false<cr>", opts)

keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

keymap("n", "<leader>h", "<cmd>nohlsearch<cr>", opts)

keymap("n", "<leader>;", "<cmd>lua require('Comment.api').toggle_current_linewise()<cr>", opts)
keymap("x", "<leader>;", '<esc><cmd>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<cr>', opts)

keymap("n", "<leader>gg", ":Neogit<cr>", opts)

-- harpoon
keymap("n", "<leader>gj", "<cmd>lua require('harpoon.ui').nav_next()<cr>", opts)
keymap("n", "<leader>gk", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", opts)
keymap("n", "<leader>gh", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", opts)
keymap("n", "<leader>gl", "<cmd>lua require('harpoon.mark').add_file()<cr>", opts)
keymap("n", "<leader>ga", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", opts)
keymap("n", "<leader>gs", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", opts)
keymap("n", "<leader>gd", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", opts)
keymap("n", "<leader>gf", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", opts)
