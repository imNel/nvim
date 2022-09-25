vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'folke/tokyonight.nvim'
  
  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Snippets
  use 'L3MON4D3/LuaSnip'

  -- Autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'onsails/lspkind.nvim'
  
  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- Lualine
  use 'kyazdani42/nvim-web-devicons' 
  use 'nvim-lualine/lualine.nvim'

  -- Comment Toggle
  use 'terrortylor/nvim-comment'

  -- Git
  use 'f-person/git-blame.nvim'
  
  -- Colors
  use 'norcalli/nvim-colorizer.lua'
end)
