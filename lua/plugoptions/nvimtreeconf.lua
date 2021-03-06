local g   = vim.g
local cmd = vim.cmd
g.nvim_tree_git_hl = 1                  -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
g.nvim_tree_highlight_opened_files = 0  -- 0 by default, will enable folder and file icon highlight for opened files/directories.
g.nvim_tree_root_folder_modifier = ':t' -- This is the default. See :help filename-modifiers for more options
g.nvim_tree_add_trailing = 1            -- 0 by default, append a trailing slash to folder names
g.nvim_tree_group_empty = 0             -- 0 by default, compact folders that only contain a single folder into one node in the file tree
g.nvim_tree_icon_padding = ' '          -- one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
g.nvim_tree_symlink_arrow = ' ➛ '      -- defaults to ' ➛ '. used as a separator between symlinks' source and target.
g.nvim_tree_respect_buf_cwd = 1         -- 0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree. -- set to 1
g.nvim_tree_create_in_closed_folder = 1 -- 1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
g.nvim_tree_refresh_wait = 500          -- 1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
nvim_tree_window_picker_exclude = {
	['filetype'] = {
		'notify',
		'packer',
		'qf'
	},
	['buftype'] = {
		'terminal'
	}
}
-- default shows no icon by default
g.nvim_tree_show_icons = {
  git = 1,
  folders = 1, -- or 0,
  files = 1, -- or 0,
  folder_arrows = 1 -- or 0
}

--  Dictionary of buffer option names mapped to a list of option values that
--  indicates to the window picker that the buffer's window should not be
--  selectable.
--  List of filenames that gets highlighted with NvimTreeSpecialFile
g.nvim_tree_special_files = {
	['README.md'] = 1,
	['Makefile']  = 1,
	['MAKEFILE']  = 1
}

g.nvim_tree_icons = {
  ['default']= '',
  ['symlink']= '',
  ['git']= {
    ['unstaged']  = "○",
    ['staged']    = "●",
    ['unmerged']  = "",
    ['renamed']   = "",
    ['untracked'] = "",
    ['deleted']   = "",
    ['ignored']   = ""
    },
  ['folder']= {
    ['arrow_open']   = "",
    ['arrow_closed'] = "",
    ['default']      = "",
    ['open']         = "",
    ['empty']        = "",
    ['empty_open']   = "",
    ['symlink']      = "",
    ['symlink_open'] = "",
  },
  ['lsp']= {
    ['hint']    = "",
    ['info']    = "",
    ['warning'] = "",
    ['error']   = "",
  }
}

local tree_cb = require'nvim-tree.config'.nvim_tree_callback-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require'nvim-tree'.setup {
  disable_netrw       = false,
  hijack_netrw        = false,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = true,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint    = "",
      info    = "",
      warning = "",
      error   = "",
    }
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = true,
    custom = {}
  },
  view = {
    width = 45,
    height = 45,
    hide_root_folder = true,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {
        { key = "<BS>",                         cb = tree_cb("dir_up") },
        { key = {"q", "<Esc>"},                 cb = tree_cb("close") },
        { key = {"<2-RightMouse>", "<CR>"},     cb = tree_cb("cd") },
        { key = "<Tab>",                        cb = tree_cb("preview") },
        { key = "R",                            cb = tree_cb("refresh") },
        { key = "h",                            cb = tree_cb("close_node") },

        { key = "l",                            cb = tree_cb("edit") },
        { key = "v",                            cb = tree_cb("vsplit") },
        { key = "s",                            cb = tree_cb("split") },
        { key = "t",                            cb = tree_cb("tabnew") },

        { key = "a",                            cb = tree_cb("create") },
        { key = "d",                            cb = tree_cb("remove") },
        { key = "r",                            cb = tree_cb("rename") },
        { key = "x",                            cb = tree_cb("cut") },
        { key = "c",                            cb = tree_cb("copy") },
        { key = "p",                            cb = tree_cb("paste") },

        { key = "G",                           cb = tree_cb("prev_git_item") },
        { key = "g",                           cb = tree_cb("next_git_item") },
        { key = "?",                           cb = tree_cb("toggle_help") },

        { key = "<",                            cb = tree_cb("prev_sibling") },
        { key = ">",                            cb = tree_cb("next_sibling") },
        { key = "P",                            cb = tree_cb("parent_node") },
        { key = "K",                            cb = tree_cb("first_sibling") },
        { key = "J",                            cb = tree_cb("last_sibling") },
        { key = "I",                            cb = tree_cb("toggle_ignored") },
        { key = "H",                            cb = tree_cb("toggle_dotfiles") },
        { key = "<C-r>",                        cb = tree_cb("full_rename") },
        { key = "y",                            cb = tree_cb("copy_name") },
        { key = "Y",                            cb = tree_cb("copy_path") },
        { key = "gy",                           cb = tree_cb("copy_absolute_path") },
        { key = "s",                            cb = tree_cb("system_open") },
      }
    }
  }
}
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  -- auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = true,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}
