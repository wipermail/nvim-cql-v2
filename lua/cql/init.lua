local M = {}

function M.setup()
	require("cql.tree-sitter").setup()
	require("cql.lsp").setup()
end

return M
