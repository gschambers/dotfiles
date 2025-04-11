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
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },

  build = "make",

  opts = {
    provider = "claude",

    behaviour = {
      auto_set_highlight_group = true,
      auto_set_keymaps = true,
    },
  },
}
