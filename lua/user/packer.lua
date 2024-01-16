local fn = vim.fn

-- Automatically install packer
-- https://github.com/LunarVim/Neovim-from-scratch/blob/03-plugins/lua/user/plugins.lua
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

return packer.startup(function(use)
    use "wbthomason/packer.nvim"
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use "nvim-tree/nvim-web-devicons"
    -- Color scheme
    use {"catppuccin/nvim", as = "catppuccin"}

    -- Cmp
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
    use "jalvesaq/cmp-nvim-r"

      -- snippets
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- LSP
    use "williamboman/mason.nvim" -- simple to use language server installer
    use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
    use "neovim/nvim-lspconfig" -- enable LSP

    -- Telescope (fuzzy finder)
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    -- Git stuff
    use "lewis6991/gitsigns.nvim"

    -- Bufferline & Lualine
    use {"akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons"}
    use {"akinsho/toggleterm.nvim", tag = '*'}
    use "nvim-lualine/lualine.nvim"

    -- nvim tree
    use "nvim-tree/nvim-tree.lua"

    -- R and quarto
    use "jalvesaq/Nvim-R"
    use "quarto-dev/quarto-nvim"
    use "jmbuhr/otter.nvim"

end)
