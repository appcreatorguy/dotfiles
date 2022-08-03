return {
  ["Pocco81/TrueZen.nvim"] = {
    opt = false,
    cmd = {
      "TZAtaraxis",
      "TZMinimalist",
      "TZFocus",
    },
    config = function()
      require "custom.plugins.truezen"
    end,
  },

  -- ["nvim-neorg/neorg"] = {
  --   ft = "norg",
  --   after = "nvim-treesitter",
  --   config = function()
  --     require "custom.plugins.neorg"
  --   end,
  -- },

  ["andreadev-it/shade.nvim"] = {
    opt = false,
    module = "shade",
    config = function()
      require("shade").setup {
        overlay_opacity = 50,
        opacity_step = 1,
        exclude_filetypes = { "NvimTree" },
      }
    end,
    event = "BufEnter",
  },

  ["goolord/alpha-nvim"] = {
    opt = false,
    disable = false,
  },

  ["andweeb/presence.nvim"] = {
    opt = false,
    config = function()
      require "custom.plugins.presence"
    end
  },

  -- ["tzachar/cmp-tabnine"] = {
  --   wants = "nvim-cmp",
  --   after = "cmp=path",
  --   run = "./install.sh",
  --   config = function()
  --     require "custom.plugins.cmp-tabnine"
  --   end
  -- },

  ["tpope/vim-obsession"] = {
    opt = false,
  },

  -- Treesitter plugins

  ["p00f/nvim-ts-rainbow"] = {
    opt = false,
    after = "nvim-treesitter",
  },

  ["windwp/nvim-ts-autotag"] = {
    opt = false,
    after = "nvim-treesitter",
  },

  -- Flutter Development

  -- ["akinsho/flutter-tools.nvim"] = {
  --   after = "plenary.nvim",
  --   config = function()
  --     require "custom.plugins.fluttertools"
  --   end
  -- },

  ["thosakwe/vim-flutter"] = {
    config = function()
      require "custom.plugins.vim-flutter"
    end
  },

  ["reisub0/hot-reload.vim"] = {
    config = function()
      require "custom.plugins.hot-reload"
    end
  },

  ["jedrzejboczar/possession.nvim"] = {
    opt = false,
    after = "plenary.nvim",
    config = function()
      require "custom.plugins.possession"
    end
  },

  -- Formatting and linting
  -- ["jose-elias-alvarez/null-ls.nvim"] = {
  --   after = "nvim-lspconfig",
  --   config = function()
  --     require "custom.plugins.null-ls"
  --   end,
  -- },

  -- NodeJS/React Development
}
