return {
  "yetone/avante.nvim",

  enabled = false,

  event = "VeryLazy",
  lazy = false,
  version = "*",

  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },

  build = "make",

  opts = {
    provider = "claude",
    claude = {
      model = "claude-3-5-haiku-20241022",
    },
  },
}
