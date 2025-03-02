return {
  "yetone/avante.nvim",

  enabled = true,

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

    behaviour = {
      auto_set_keymaps = true,
    }, 
  },
}
