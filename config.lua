-- Neovim
-- =========================================
lvim.format_on_save = false
lvim.lint_on_save = true
-- lvim.colorscheme = "hybrid"

vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.timeoutlen = 300
vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldlevel = 5
vim.opt.joinspaces = false -- No double spaces with join after a dot
vim.opt.list = true -- Show some invisible characters (tabs...
vim.opt.cmdheight = 1
-- vim.opt.pumblend = 10 -- Popup blend

-- Customization
-- =========================================
lvim.builtin.dashboard.active = true
lvim.builtin.dap.active = false
lvim.builtin.terminal.active = false
lvim.builtin.telescope.active = false
--lvim.builtin.galaxyline.active = false
lvim.builtin.project.active = false

-- additional Builtin
-- =========================================
require("user.builtin").config()

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Additional keybindings
-- =========================================
require("user.keybindings").config()

-- Additional language configs
-- =========================================
require("user.languages").config()

-- Autocommands
-- =========================================
--require("user.autocommands").config()

lvim.lsp.diagnostics.virtual_text = true
