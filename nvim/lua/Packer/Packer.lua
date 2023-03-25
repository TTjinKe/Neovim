require('packer').startup(function(use)
  use("wbthomason/packer.nvim")
  use("windwp/nvim-autopairs")
  use({ "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", })
  -- theme
  use("folke/tokyonight.nvim")
  use("EdenEast/nightfox.nvim")
  use({
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  })
  use("nvim-tree/nvim-web-devicons")
  use({
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons',
      -- optional, for file icons }, tag = 'nightly' -- optional, updated every week. (see issue #1193)
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  })
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })
  use("nvim-lualine/lualine.nvim")
  use("nvim-lua/plenary.nvim")
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder
  use("hrsh7th/nvim-cmp")                                    -- completion plugin
  use("hrsh7th/cmp-buffer")                                  -- source for text in buffer
  use("hrsh7th/cmp-path")                                    -- source for file system paths
  use("L3MON4D3/LuaSnip")                                    -- snippet engine
  use("saadparwaiz1/cmp_luasnip")                            -- for autocompletion
  use("rafamadriz/friendly-snippets")                        -- useful snippets
  use("onsails/lspkind.nvim")
  use({ "williamboman/nvim-lsp-installer", "neovim/nvim-lspconfig", })
  use({ "godlygeek/tabular", "preservim/vim-markdown" })
  use({ 'preservim/nerdcommenter' })
  use({ 'mhartington/formatter.nvim' })
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end
  }
end)
