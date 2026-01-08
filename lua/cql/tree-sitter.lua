-- local M = {}

-- function M.setup()
-- 	local parsers = require("nvim-treesitter.parsers")

-- 	parsers.cql = {
-- 		install_info = {
-- 			url = "https://github.com/Akzestia/tree-sitter-cql",
-- 			branch = "main",
-- 			files = { "src/parser.c" },
-- 			revision = "b3fb29a60d096abf36726cfa2c2480e7c5ea777f",
-- 			queries = "queries/neovim",
-- 		},
-- 		tier = 1,
-- 	}

-- 	vim.treesitter.language.register("cql", { "cqlang" })

-- 	vim.api.nvim_create_autocmd("FileType", {
-- 		pattern = "cqlang",
-- 		callback = function()
-- 			vim.treesitter.start()
-- 		end,
-- 	})
-- end

-- return M

local M = {}

function M.setup()
  local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()

  parser_configs.cql = {
    install_info = {
      url = "https://github.com/Akzestia/tree-sitter-cql",
      branch = "main",
      files = { "src/parser.c" },
      revision = "b3fb29a60d096abf36726cfa2c2480e7c5ea777f",
    },
    filetype = "cqlang",
  }

  vim.treesitter.language.register("cql", "cqlang")
end

return M
