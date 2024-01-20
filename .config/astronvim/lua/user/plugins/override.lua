return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function()
    return {
      filesystem = {
        follow_current_file = { enabled = false },
      },
    }
  end,
}
