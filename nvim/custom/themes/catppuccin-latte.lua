local M = {}

M.base_30 = {
   white = "#4c4f69",
   darker_black = "#f5f7fb",
   black = "#eff1f5", --  nvim bg
   black2 = "#e9ebef",
   one_bg = "#e5e7eb", -- real bg of onedark
   one_bg2 = "#d6d8dc",
   one_bg3 = "#ccced2",
   grey = "#bcc0cc",
   grey_fg = "#b3b6c2",
   grey_fg2 = "#a8acb8",
   light_grey = "#a0a4b0",
   red = "#d20f39",
   baby_pink = "#f086da",
   pink = "#ea76cb",
   line = "#e0e2e6", -- for lines like vertsplit
   green = "#40a02b",
   vibrant_green = "#4aaa35",
   nord_blue = "#2b73ff",
   blue = "#1e66f5",
   yellow = "#df8e1d",
   sun = "#ec9b2a",
   purple = "#9c4dff",
   dark_purple = "#8839ef",
   teal = "#179299",
   orange = "#fe640b",
   cyan = "#04a5e5",
   statusline_bg = "#ebedf1",
   lightbg = "#dee0e4",
   pmenu_bg = "#40a02b",
   folder_bg = "#209fb5",
   lavender = "#7287fd",
}

M.base_16 = {
   base00 = "#eff1f5",
   base01 = "#ccd0da",
   base02 = "#bcc0cc",
   base03 = "#acb0be",
   base04 = "#9ca0b0",
   base05 = "#8c8fa1",
   base06 = "#7c7f93",
   base07 = "#6c6f85",
   base08 = "#e64553",
   base09 = "#fe640b",
   base0A = "#df8e1d",
   base0B = "#40a02b",
   base0C = "#04a5e5",
   base0D = "#1e66f5",
   base0E = "#8839ef",
   base0F = "#d20f39",
}

M.polish_hl = {
  TSVariable = {
    fg = M.base_30.lavender,
  },

  TSProperty = {
    fg = M.base_30.teal,
  },

  TSVariableBuiltin = {
    fg = M.base_30.red,
  },
}

M.type = "light"

M = require("base46").override_theme(M, "catppuccin-latte")

return M
