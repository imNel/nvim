-- Make sure packer is installed on first launch
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    config = function() require('plugins.config.treesitter') end
  }

  -- Theme
  use 'folke/tokyonight.nvim'
  use {
    'eddyekofo94/gruvbox-flat.nvim',
    config = function() vim.cmd [[colorscheme tokyonight-storm]] end
  }
  use 'kyazdani42/nvim-web-devicons'

  use {
    'NvChad/nvim-colorizer.lua',
    config = function() require('plugins.config.colorizer') end
  }

  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function() require('alpha').setup(require('alpha.themes.startify').config) end
  }

  -- Snippets
  use 'L3MON4D3/LuaSnip'

  -- Autocomplete
  use 'onsails/lspkind.nvim'
  use {
    'hrsh7th/nvim-cmp',
    config = function() require('plugins.config.cmp') end
  }
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    config = function() require('plugins.config.lsp') end
  }
  use {
    'jose-elias-alvarez/null-ls.nvim',
    config = function() require('plugins.config.null-ls') end
  }
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    config = function() require('plugins.config.telescope') end
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'mbbill/undotree'

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    config = function() require('plugins.config.lualine') end
  }

  -- Comment Toggle
  use {
    'numToStr/Comment.nvim',
    config = function() require('plugins.config.comment') end
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Git
  use 'f-person/git-blame.nvim'

  -- Auto-size windows
  use {
    "anuvyklack/windows.nvim",
    requires = {
      "anuvyklack/middleclass",
    },
    config = function() require('windows').setup() end
  }

  -- Error msgs
  use {
    "folke/trouble.nvim",
    config = function() require("trouble").setup {} end
  }

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- use 'andweeb/presence.nvim'

  -- use {
  --   'folke/noice.nvim',
  --   requires = {
  --     "MunifTanjim/nui.nvim",
  --   },
  --   config = function() require('plugins.config.noice') end
  -- }

  use 'ThePrimeagen/harpoon'

  -- Copilot
  use 'github/copilot.vim'

  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function() require('indent_blankline').setup {
        char = '???',
        show_trailing_blankline_indent = false,
      }
    end
  }

  -- Auto install packer if not detected
  if packer_bootstrap then
    require('packer').sync()
  end
end)
