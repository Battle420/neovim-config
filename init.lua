--enable impatient profiling --
require'impatient'.enable_profile()
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
-- Buffer "tabs" --
require('bufferline').setup()
--Smooth Scrolling --
require('neoscroll').setup()
require('vgit').setup()
-- Theming --
vim.opt.termguicolors = true
vim.cmd[[colorscheme vscode]]
require('vscode').change_style("dark")
