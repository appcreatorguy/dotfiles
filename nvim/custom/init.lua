require "custom.autocmds"

vim.cmd "silent! command! EnableShade lua require('shade').toggle()"
vim.cmd "silent! command! TSEnable rainbow"
vim.opt.guifont = { "JetBrainsMono Nerd Font:h11.75" }
