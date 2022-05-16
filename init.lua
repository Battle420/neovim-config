--enable impatient profiling --
require('impatient').enable_profile()
--update plugin --
require('plugins')
-- Load Custom Keymap --
require('keymaps')
-- Load all options --
require('plugoptinit')
require('options')
-- load Telescope extensions --
require("telescope").load_extension("packer")
require('telescope').load_extension('media_files')
-- Beautiful Status Line with git integration + more --
require('lualine').setup()
-- Hop --
require'hop'.setup()
--Smooth Scrolling --
require('neoscroll').setup()
-- Theming --
vim.opt.termguicolors = true
local pywal = require('pywal')
pywal.setup()
vim.o.guifont ="MesloLGS NF"
require("plugoptions.scrollbarconf")
require("scrollbar").setup()
