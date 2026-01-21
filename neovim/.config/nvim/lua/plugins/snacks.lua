return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,

  opts = {
    dashboard = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
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
    -- Project
    { "<leader>fe", function() Snacks.explorer({ hidden = true }) end,     desc = "File explorer" },
    { "<leader>ff", function() Snacks.picker.files({ hidden = true, ignored = false }) end, desc = "Find files" },
    { "<C-p>",      function() Snacks.picker.files({ hidden = true, ignored = false }) end, desc = "Find files" },
    { "<leader>fg", function() Snacks.picker.grep() end,                   desc = "Grep files" },
    { "<leader>fw", function() Snacks.picker.grep_word() end,              desc = "Grep word" },
    { "<leader>ft", function() Snacks.picker.todo_comments() end,          desc = "Find TODO comments" },
    { "<leader>fr", function() Snacks.picker.resume() end,                 desc = "Resume last picker" },

    -- Buffer
    { "<leader>fl", function() Snacks.picker.lines() end,                  desc = "Grep buffer" },
  },
}
