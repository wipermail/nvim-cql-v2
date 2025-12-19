local M = {}

function M.setup()
	local lspconfig = require("lspconfig")
	local configs = require("lspconfig.configs")

	if not configs.cql then
		configs.cql = {
			default_config = {
				cmd = { "cql_lsp" },
				filetypes = { "cqlang" },
				root_dir = lspconfig.util.root_pattern(".git", "."),
				capabilities = require("blink.cmp").get_lsp_capabilities(),
			},
		}
	end

	lspconfig.cql.setup({})
end

return M
