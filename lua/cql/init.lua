local M = {}

function M.setup()
	require("cql.tree-sitter").setup()
	require("cql.ls").setup()
end

return M
