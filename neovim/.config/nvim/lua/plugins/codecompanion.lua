return {
  "olimorris/codecompanion.nvim",

  enabled = false,

  config = true,

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },

  opts = {
    strategies = {
      chat = {
        adapter = "anthropic",
      },

      inline = {
        adapter = "anthropic"
      }
    },
  },
}
