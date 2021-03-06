local present, neorg = pcall(require, "neorg")

if not present then
   return
end

local icons = require "custom.plugins.icons"

local options = {
  load = {
    ["core.defaults"] = {},
    ["core.presenter"] = {
      config = {
        zen_mode = "truezen",
      },
    },

    ["core.norg.concealer"] = {
      config = {
        icons = {
          todo = icons.todo,
          list = icons.list,
          heading = icons.heading,
        },
      },
    },
  },
}

neorg.setup(options)
