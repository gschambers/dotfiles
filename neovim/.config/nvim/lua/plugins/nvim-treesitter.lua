return {
  "nvim-treesitter/nvim-treesitter",

  build = ":TSUpdate",

  config = function()
    local treesitter = require("nvim-treesitter")
    treesitter.setup()
    treesitter.install {
      "css",
      "html",
      "javascript",
      "json",
      "markdown",
      "regex",
      "starlark",
      "typescript",
    }

    vim.api.nvim_create_autocmd('FileType', {
      pattern = {
        "css",
        "html",
        "javascript",
        "json",
        "markdown",
        "regex",
        "starlark",
        "typescript",
      },

      callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end
    })
  end
}
