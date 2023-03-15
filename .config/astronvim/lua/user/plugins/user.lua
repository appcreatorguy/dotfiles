return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  "karb94/neoscroll.nvim",
  "brymer-meneses/grammar-guard.nvim",
  {
    "Pocco81/true-zen.nvim",
    config = function()
      require("true-zen").setup({})
    end,
  },
  "lervag/vimtex",
  {
    "nvim-orgmode/orgmode",
    config = function()
      require("orgmode").setup({
        org_agenda_files = { "~/Documents/Notes/**/*" },
      })
    end,
  },
  "Mofiqul/dracula.nvim",
}
