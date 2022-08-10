local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
-- lsp servers with default config
local servers = { "pyright", "dartls", "tsserver", "eslint", "jsonls", "html", "gdscript", "csharp_ls", }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
