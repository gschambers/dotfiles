require("which-key").add({
  { "<leader>c", group = "Code" },
  { "<leader>f", group = "Files" },
  { "<leader>g", group = "Git" },
})

-- Delete default LSP keymaps
vim.keymap.del("n", "gra")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "grn")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "gO")
vim.keymap.del("i", "<C-s>")

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover", noremap = true, silent = true })
vim.keymap.set("n", "gd", Snacks.picker.lsp_definitions, { desc = "Go to definition", noremap = true, silent = true })
vim.keymap.set("n", "gr", Snacks.picker.lsp_references, { desc = "Go to references", noremap = true, silent = true })
vim.keymap.set("n", "<leader>cx", Snacks.picker.diagnostics_buffer,
  { desc = "Show diagnostics (buffer)", noremap = true, silent = true })
vim.keymap.set("n", "<leader>cz", Snacks.picker.diagnostics,
  { desc = "Show diagnostics", noremap = true, silent = true })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename symbol", noremap = true, silent = true })
