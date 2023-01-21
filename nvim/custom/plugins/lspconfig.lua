local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
-- lsp servers with default config
local servers = { "pyright", "dartls", "tsserver", "eslint", "jsonls", "html", "gdscript", "omnisharp", "csharp_ls", "pylsp" }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

lspconfig.omnisharp.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "/home/manasmengle/.local/share/nvim/mason/bin/omnisharp" },
  organize_imports_on_format = true,
}
