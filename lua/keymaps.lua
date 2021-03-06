local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --

-- Plugins --
--Select Code Run --
keymap("v", "<leader>r", ":RunCodeSelected<CR>", opts)
keymap("n", "<leader>r", ":RunCodeFile<CR>", opts)


-- Chad Tree --
keymap("n", "<leader>c", ":NvimTreeToggle<CR>", opts)
-- Telescope + Extensions --
keymap("n", "<leader>i", ":Telescope media_files<CR>", opts)
keymap("n", "<leader>t", ":Telescope<CR>", opts)
keymap("n", "<leader>v", ":Telescope fd<CR>", opts)
keymap("n", "<leader>p", ":Telescope packer<CR>", opts)

-- Cosmic UI --
keymap('n', '<F2>', ':lua require("cosmic-ui").rename()<CR>', opts)
keymap('n', '<leader>gA', ':lua require("cosmic-ui").code_actions()<CR>', opts)
keymap('v', '<leader>gA', ':lua require("cosmic-ui").range_code_actions()<CR>', opts)

-- Buffer lines
keymap('', '[b', ':BufferLineCycleNext<CR>',opts)
keymap('', 'b]', ':BufferLineCyclePrev<CR>',opts)
-- These commands will move the current buffer backwards or forwards in the bufferline
keymap('', '<mymap>', ':BufferLineMoveNext<CR>',opts)
keymap('', '<mymap>', ':BufferLineMovePrev<CR>',opts)
-- These commands will sort buffers by directory, language, or a custom criteria
keymap('', 'be', ':BufferLineSortByExtension<CR>',opts)
keymap('', 'bd', ':BufferLineSortByDirectory<CR>',opts)
keymap('', '<mymap>', ':lua require("bufferline").sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)()<CR>',opts)

-- Hop.nvim --
keymap('n', 'f', ':HopChar1<CR>', opts)
