return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,

  opts = {
    dashboard = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
  },

  keys = {
    -- Files
    { "<C-n>", function() Snacks.explorer() end, desc = "File explorer" },
    { "<C-p>", function() Snacks.picker.files() end, desc = "Find files" },

    -- Search
    { "<leader>sg", function() Snacks.picker.grep() end, desc = ""}
  },
}
