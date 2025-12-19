local M = {}

function M.setup()
	require("cql.treesitter").setup()
	require("cql.lsp").setup()
end

return M
