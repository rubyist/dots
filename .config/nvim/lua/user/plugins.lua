local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autcommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- have packer manage itself
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"

  -- colors
  use "ishan9299/modus-theme-vim"
  use "rebelot/kanagawa.nvim"

  -- tools
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  use "windwp/nvim-autopairs"
  use "numToStr/Comment.nvim"
  use "lewis6991/gitsigns.nvim"
  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"
  use "ahmedkhalf/project.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "akinsho/toggleterm.nvim"
  use "goolord/alpha-nvim"
  use "jedrzejboczar/possession.nvim"
  use "Shatur/neovim-session-manager"
  use "ThePrimeagen/harpoon"
  use "ThePrimeagen/git-worktree.nvim"
  use "hoob3rt/lualine.nvim"

  -- cmp
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- lsp
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  -- use "simrat39/symbols-outline.nvim"
  use "stevearc/aerial.nvim"

  -- telescope
  use "nvim-telescope/telescope.nvim"
  use "natecraddock/telescope-zf-native.nvim"
  -- use "nvim-telescope/telescope-fzy-native.nvim"
  use "nvim-telescope/telescope-ui-select.nvim"

  -- treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use "p00f/nvim-ts-rainbow"
  use "nvim-treesitter/playground"
  use "JoosepAlviste/nvim-ts-context-commentstring"

  use "elkowar/yuck.vim"

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
