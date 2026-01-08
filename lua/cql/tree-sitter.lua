local M = {}


function M.setup()
  local parsers = require("nvim-treesitter.parsers")
  
  parsers.cql = {
    install_info = {
   	  url = "https://github.com/Akzestia/tree-sitter-cql",
   		branch = "main",
   		files = { "src/parser.c" },
   		revision = "b3fb29a60d096abf36726cfa2c2480e7c5ea777f",
   		queries = "queries/neovim",
   	},
   	tier = 1,
    filetype = "cql",
  }
  vim.treesitter.language.register("cql", "cqlang")
end

return M
