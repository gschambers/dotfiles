local blink = require("blink.cmp")
local lsp = require("lspconfig")

local capabilities = blink.get_lsp_capabilities()

lsp.lua_ls.setup({
  capabilities = capabilities,
})

lsp.tilt_ls.setup({
  capabilities = capabilities,
})
vim.cmd [[autocmd BufRead Tiltfile set filetype=tiltfile]]

lsp.ts_ls.setup({
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  capabilities = capabilities,
})

vim.lsp.inlay_hint.enable(true)
