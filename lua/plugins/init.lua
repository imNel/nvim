-- Make sure packer is installed on first launch
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
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
  }

  -- Theme
  use {
    'folke/tokyonight.nvim',
    config = function() 
      vim.cmd[[colorscheme tokyonight]]
    end
  }

  -- Dashboard nvim -- need to configure before uncommenting
  -- use 'glepnir/dashboard-nvim'
  
  -- Snippets
  use 'L3MON4D3/LuaSnip'

  -- Autocomplete
  use 'onsails/lspkind.nvim'
  use {
    'hrsh7th/nvim-cmp', 
    config = function()
      require('plugins.config.cmp')
    end
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
    config = function()
      require('plugins.config.lsp')
    end
  }
  use {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
      require('plugins.config.null-ls')
    end
  }
  
  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('plugins.config.lualine')
    end,
  }

  -- Comment Toggle
  use {
    'terrortylor/nvim-comment',
    config = function()
      require('plugins.config.comment')
    end
  }

  -- Git
  use 'f-person/git-blame.nvim'

  -- Auto-size windows
  use { 
    "anuvyklack/windows.nvim",
    requires = {
      "anuvyklack/middleclass",
    },
    config = function()
      require('windows').setup()
    end
  }

  -- Auto install packer if not detected
  if packer_bootstrap then
    require('packer').sync()
  end
end)
