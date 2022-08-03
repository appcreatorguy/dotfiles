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
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
  }
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

M.ui = {
  statusline = {
    seperator_style = "round",
  },

  tabufline = {
    lazyload = false,
  }
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "shfmt",
    "shellcheck",
    "typescript-language-server",
    "eslint-lsp",
    "html-lsp",
  },
}

return M
