local present, luasnip = pcall(require, "luasnip")

if not present then
  return
end

local options = {
  history = true,
  updateevents = "TextChanged,TextChangedI",
}

luasnip.config.set_config(options)
require("luasnip.loaders.from_vscode").lazy_load()
require('luasnip').filetype_extend("javascript", { "javascriptreact" })
require('luasnip').filetype_extend("javascript", { "html" })
require('luasnip').filetype_extend("typescript", { "typescriptreact" })
require('luasnip').filetype_extend("typescript", { "html" })

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    if require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
        and not require("luasnip").session.jump_active
    then
      require("luasnip").unlink_current()
    end
  end,
})
