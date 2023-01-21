return {
  { "andweeb/presence.nvim" },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  ["catppuccin/nvim"] = { as = "catppuccin" },
  ["karb94/neoscroll.nvim"] = {},
  ["brymer-meneses/grammar-guard.nvim"] = {},
  ["Pocco81/true-zen.nvim"] = {
    config = function()
      require("true-zen").setup({})
    end,
  },
  ["lervag/vimtex"] = {},
  ["nvim-orgmode/orgmode"] = {
    config = function()
      require("orgmode").setup({})
      astronvim.add_user_cmp_source("orgmode")
    end,
  },
  ["Mofiqul/dracula.nvim"] = {},
}
