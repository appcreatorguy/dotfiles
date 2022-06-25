-- overriding default plugin configs!

local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "python",
    "cpp",
    "norg",
    "bash",
    "lua",
    "markdown",
    "dart",
    "javascript",
    "json",
    "typescript",
  },
}

M.nvimtree = {
  view = {
    preserve_window_proportions = true,
  },

  git = {
    enable = true,
  },

  actions = {
    open_file = {
      resize_window = false,
    },
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.cmp = {
   sources = {
      { name = "luasnip" },
      { name = "nvim_lsp" },
      { name = "buffer" },
      { name = "nvim_lua" },
      { name = "path" },
   },
}

return M
