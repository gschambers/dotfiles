return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,

  opts = {
    dashboard = { enabled = true },
    input = { enabled = true },
    picker = {
      enabled = true,

      win = {
        input = {
          keys = {
            ["<ESC>"] = { "close", mode = { "i", "n" } },
          },
        },
      },
    },
  },

  keys = {
    -- Files
    { "<leader>fe", function() Snacks.explorer() end, desc = "File explorer" },
    { "<leader>ff", function() Snacks.picker.files({ hidden = true }) end, desc = "Find files" },
    { "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep files" },
    { "<C-p>", function() Snacks.picker.files({ hidden = true }) end, desc = "Find files" },
  },
}
