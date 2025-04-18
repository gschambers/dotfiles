return {
  "olimorris/codecompanion.nvim",

  enabled = false,

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },

  config = true,

  opts = {
    strategies = {
      chat = {
        adapter = "anthropic",
      },

      inline = {
        adapter = "anthropic",
      },
    },
  },
}
