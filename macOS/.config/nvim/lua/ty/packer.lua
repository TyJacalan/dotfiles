-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Mason: package manager for lsp
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- LSP Zero: lsp helper 
  -- Nvim cmp: auto completion  
  use {
	  "VonHeikemen/lsp-zero.nvim",
	  branch = "v1.x",
	  requires = {
		  -- LSP Support
		  {"neovim/nvim-lspconfig"},
		  {"williamboman/mason.nvim"},
		  {"williamboman/mason-lspconfig.nvim"},

		  -- Autocompletion
		  {"hrsh7th/nvim-cmp"},
		  {"hrsh7th/cmp-buffer"},
		  {"hrsh7th/cmp-path"},
		  {"saadparwaiz1/cmp_luasnip"},
		  {"hrsh7th/cmp-nvim-lsp"},
		  {"hrsh7th/cmp-nvim-lua"},

		  -- Snippets
		  {"L3MON4D3/LuaSnip"},
		  {"rafamadriz/friendly-snippets"},
	  }
  }

  -- Tabnine: AI tool
  use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }

  -- Autopairs: auto close for parenthesis, brackets, and quotations
  use { 
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function()
      require('nvim-autopairs').setup {}
    end
  }
  -- Autotags: auto close and rename tags
  use { 'windwp/nvim-ts-autotag' }

  -- LSP tooling
  use 'nvimtools/none-ls.nvim'
  use 'onsails/lspkind.nvim'

  -- Color Scheme
  use 'shaunsingh/nord.nvim'

  -- Treesitter: syntax highlighting
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Telescope: fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Undo Tree: version control
  use('mbbill/undotree')

  -- Harpoon: quick file navigation
  use('theprimeagen/harpoon')

  -- Fugitive: git manager
  use('tpope/vim-fugitive')
  
  -- Git Gutter: git version control visual helper
  use 'airblade/vim-gitgutter'

  -- Alpha: home page
  use { 
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      require 'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }

  -- Lualine: status line
  use {
    'nvim-lualine/lualine.nvim',
    requires =  { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Overseer: task runner and job manager
    use {
      'stevearc/overseer.nvim',
      config = function() require('overseer').setup() end
    }

  -- Here.term: toggle terminal instances
  use {
    'jaimecgomezz/here.term',
    opts = {}
  }
 end)
