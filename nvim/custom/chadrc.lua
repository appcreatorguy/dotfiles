local M = {}

local override = require "custom.override"

M.ui = {
  theme_toggle = { "catppuccin", "catppuccin-latte" },
  theme = "catppuccin",
  transparency = false,
  hl_override = require "custom.highlights",
}

M.plugins = {
  override = {
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    ["hrsh7th/nvim-cmp"] = override.cmp,
    ["NvChad/ui"] = override.ui,
    ["williamboman/mason"] = override.mason,
  },

  remove = {},

  user = require "custom.plugins",

  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },
}

M.options = {
  user = function()
    vim.g.luasnippets_path = "~/.config/nvim/lua/custom/custom_snippets"
  end
}

M.mappings = require "custom.mappings"

return M
