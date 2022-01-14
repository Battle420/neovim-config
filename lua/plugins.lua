-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use 'kyazdani42/nvim-web-devicons'

  use {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate'
    }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use 'ryanoasis/vim-devicons'
  use 'tpope/vim-fugitive'
  use 'vim-syntastic/syntastic'
  use {'ms-jpq/chadtree' , branch='chad', run='python3 -m chadtree deps'}

  use {"ellisonleao/glow.nvim",
  config= 'vim.g.glow_border = "rounded"'}
  use 'Mofiqul/vscode.nvim'

  use {
  'nvim-lualine/lualine.nvim',
  }
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }

  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'nvim-telescope/telescope-packer.nvim'
  use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
use 'lewis6991/impatient.nvim'
use 'goolord/alpha-nvim'
use 'karb94/neoscroll.nvim'

use {
      use({
    'CosmicNvim/cosmic-ui',
    requires = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
    config = function()
      require('cosmic-ui').setup()
    end,
  })}

use 'arjunmahishi/run-code.nvim'

use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
use {
  'tanvirtin/vgit.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  }
}

-- LSP --
use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
use {'euclio/vim-markdown-composer', run="cargo build --release"}
use 'williamboman/nvim-lsp-installer'
use 'nvim-lua/lsp-status.nvim'
end)
