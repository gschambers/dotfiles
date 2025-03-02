vim.g.mapleader = " "

require("config.lazy")

if vim.fn.has("termguicolors") then
  vim.opt.termguicolors = true
end

vim.opt.encoding = "utf-8"

vim.opt.background = "dark"
vim.cmd [[colorscheme tokyonight-night]]
vim.cmd [[syntax on]]

vim.opt.autoread = true

-- don't unload buffer when it is abandoned
-- https://neovim.io/doc/user/options.html#'hidden'
vim.opt.hidden = true

vim.opt.backup = false

-- make a backup before overwriting a file
-- https://neovim.io/doc/user/options.html#'writebackup'
vim.opt.writebackup = false

-- number of lines to use for the command-line
-- https://neovim.io/doc/user/options.html#'cmdheight'
vim.opt.cmdheight = 2

-- after this many milliseconds flush swap file
-- https://neovim.io/doc/user/options.html#'updatetime'
vim.opt.updatetime = 300

vim.opt.signcolumn = "yes"

vim.cmd [[filetype indent on]]
vim.cmd [[filetype plugin on]]

vim.opt.wrap = false

vim.opt.tabstop = 2

vim.opt.softtabstop = 2

vim.opt.shiftwidth = 2

vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.number = true

vim.opt.relativenumber = true

vim.opt.wildmenu = true

vim.opt.showmatch = true

vim.opt.lazyredraw = true

vim.opt.showmode = false

vim.opt.incsearch = true

vim.opt.hlsearch = true

vim.opt.splitright = true

vim.opt.splitbelow = true

vim.opt.laststatus = 3

require("which-key").add({
  { "<leader>a", group = "AI" },
  { "<leader>c", group = "Code" },
  { "<leader>f", group = "Files" },
  { "<leader>g", group = "Git" },
})

require("lualine").setup()
