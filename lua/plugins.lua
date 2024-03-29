-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'
  use 'vim-syntastic/syntastic'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'nvim-telescope/telescope-packer.nvim'
  use 'folke/which-key.nvim'
  use 'lewis6991/impatient.nvim'
  use 'goolord/alpha-nvim'
  use 'karb94/neoscroll.nvim'
  use 'arjunmahishi/run-code.nvim'
  use 'p00f/nvim-ts-rainbow'
  use("petertriho/nvim-scrollbar")
  use('rcarriga/nvim-notify')
  -- Theme --
  use 'AlphaTechnolog/pywal.nvim'

  -- LSP --
use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
use 'williamboman/mason.nvim'
use 'williamboman/mason-lspconfig.nvim'
use 'nvim-lua/lsp-status.nvim'
use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
use 'L3MON4D3/LuaSnip' -- Snippets plugins
use 'onsails/lspkind-nvim'

  -- Git Integration
  use 'tpope/vim-fugitive'
  use {'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },}
  use {'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {"ellisonleao/glow.nvim", config= 'vim.g.glow_border = "rounded"'}
  use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons', },
      config = function() require'nvim-tree'.setup {} end}
   use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use({'CosmicNvim/cosmic-ui',
  requires = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
  config = function() require('cosmic-ui').setup() end,})
  use { "folke/trouble.nvim",requires = "kyazdani42/nvim-web-devicons",}
  use {
           'goolord/alpha-nvim', branch = 'feature/startify-fortune',
           requires = {'BlakeJC94/alpha-nvim-fortune'},
           config = function() require("config.alpha") end
       }
  use {
  'phaazon/hop.nvim',
  config = function()
    require'hop'.setup()
    -- you can configure Hop the way you like here; see :h hop-config
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  end
}
end)
