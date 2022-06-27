local M = {}

local override = require "custom.override"

M.ui = {
  theme_toggle = { "catppuccin", "catppuccin-latte" },
  theme = "catppuccin",
  transparency = false,
  hl_override = require "custom.highlights",
  statusline = {
    separator_style = "round",
  },
}

M.plugins = {
  override = {
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    ["hrsh7th/nvim-cmp"] = override.cmp,
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
