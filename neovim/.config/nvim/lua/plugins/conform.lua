return {
  "stevearc/conform.nvim",
  opts = {
    stop_after_first = true,

    formatters_by_ft = {
      javascript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" },
    },

    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
