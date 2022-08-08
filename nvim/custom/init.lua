require "custom.autocmds"

vim.cmd "silent! command! EnableShade lua require('shade').toggle()"
vim.cmd "silent! command! TSEnable rainbow"
set guifont=SauceCodePro\ Nerd\ Font:h11
