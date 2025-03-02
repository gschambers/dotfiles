return {
  "joshuavial/aider.nvim",

  enabled = false,

  opts = {
    auto_manage_context = true,
    default_bindings = false,
  },

  keys = {
    { "<leader>aa", ":AiderOpen<CR>", desc = "Open Aider chat" },
  },
}
