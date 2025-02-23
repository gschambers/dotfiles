return {
  "olimorris/codecompanion.nvim",

  enabled = false,

  config = true,
  -- config = function()
  --   vim.keymap.set({ "n", "v" }, "<C-a>", "<CMD>CodeCompanionActions<CR>", { noremap = true, silent = true })
  -- end,

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

    adapters = {
      anthropic = function()
        return require("codecompanion.adapters").extend("anthropic", {
          schema = {
            model = {
              default = "claude-3-5-haiku-20241022",
            },
          },
        })
      end
    },
  },

  keys = {
    { "<C-a>", "<CMD>CodeCompanionActions<CR>", mode = { "n", "v" }, desc = "CodeCompanion actions", noremap = true, silent = true }
  },
}
