local overrides = require("custom.configs.overrides")


---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      local conf = require "plugins.configs.nvimtree"
      local custom = require "custom.configs.nvimtree"
      conf.on_attach = custom.on_attach
      return conf
    end
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup()
    end,
    lazy=false
  },

  {
    "Pocco81/TrueZen.nvim",
    cmd = { "TZAtaraxis", "TZMinimalist", "TZFocus", "TZNarrow"},
    config = function()
      require("true-zen").setup()
    end,
  },
  
  {
    "phaazon/hop.nvim",
    config = function()
      require("hop").setup()
    end,
    lazy=false
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
