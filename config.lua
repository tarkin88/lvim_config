-- Neovim
-- =========================================
lvim.format_on_save = false
lvim.lint_on_save = true
lvim.colorscheme = "doom-one"

vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.timeoutlen = 200
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 5
vim.opt.cmdheight = 1
vim.opt.pumblend = 10 -- Popup blend
vim.opt.joinspaces = false -- No double spaces with join after a dot
vim.opt.list = true -- Show some invisible characters (tabs...

-- Customization
-- =========================================
lvim.builtin.lastplace = { active = true } -- change to false if you are jumping to future
lvim.builtin.dap.active = false -- change this to enable/disable debugging
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = false
lvim.builtin.telescope.active = false
lvim.builtin.galaxyline.active = false
lvim.builtin.project.active = false

lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1

-- additional Builtin
-- =========================================
require("user.builtin").config()

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Additional keybindings
-- =========================================
require("user.keybindings").config()

-- Autocommands
-- =========================================
--require("user.autocommands").config()

lvim.lsp.diagnostics.virtual_text = true
