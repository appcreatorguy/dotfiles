local M = {}

M.truzen = {
  n = {
    ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", " truzen ataraxis"},
    ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "   truzen minimal" },
    ["<leader>tf"] = { "<cmd> TZFocus <CR>", "   truzen focus" },
  },
}

M.general = {
  n = {
    ["<leader>q"] = { "<cmd> qa <CR>", "   quit"},
  },
}

M.shade = {
   n = {
      ["<leader>s"] = {
         function()
            require("shade").toggle()
         end,

         "   toggle shade.nvim",
      },
   },
}

M.traversal = {
  i = {
    ["<M-BS>"] = { "<C-w>", "delete previous word"},
    ["<M-d>"] = { "<cmd> norm! dw <CR>", "delete next word"}
  }
}

M.buffers = {
  i = {
    ["<C-s>"] = { "<cmd> w <CR>", "﬚  save file" },
  },
  n = {
    ["<leader>bs"] = { "<cmd> w <CR>", "﬚  save file"},
  }
}

M.lsp = {
  n = {
    ["<leader>fm"] = {
      function()
        vim.lsp.buf.format()
      end,
      "   lsp formatting",
    },
  }
}

return M
