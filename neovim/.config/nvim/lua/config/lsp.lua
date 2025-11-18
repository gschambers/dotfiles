local blink = require("blink.cmp")

local capabilities = blink.get_lsp_capabilities()

vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files and plugins
        library = { vim.env.VIMRUNTIME },
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    }
  }
})
vim.lsp.enable("lua_ls")

vim.lsp.config("tilt_ls", {
  capabilities = capabilities,
})
vim.cmd [[autocmd BufRead Tiltfile set filetype=tiltfile]]
vim.lsp.enable("tilt_ls")

vim.lsp.config("ts_ls", {
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  capabilities = capabilities,
})
vim.lsp.enable("ts_ls")

vim.lsp.inlay_hint.enable(true)
