return {
  "nvim-treesitter/nvim-treesitter",

  build = ":TSUpdate",

  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      auto_install = true,

      sync_install = true,

      ensure_installed = {
        "css",
        "html",
        "javascript",
        "json",
        "markdown",
        "regex",
        "starlark",
        "typescript",
      },

      ignore_install = {},

      highlight = { enable = true },

      indent = { enable = true },
    })
  end
}
