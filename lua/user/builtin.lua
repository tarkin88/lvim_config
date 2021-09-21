local M = {}

M.config = function()
  lvim.builtin.nvimtree.side = "left"
  lvim.builtin.nvimtree.show_icons.git = 1
  lvim.builtin.treesitter.ensure_installed = {"python", "lua", "json", "bash", "vue"}
  lvim.builtin.treesitter.matchup.enable = true
  lvim.builtin.treesitter.ignore_install = { "haskell" }
  lvim.builtin.treesitter.context_commentstring.enable = true

  lvim.builtin.treesitter.indent = {
    enable = true,
    disable = { "yaml", "python" },
  } -- treesitter is buggy :(
  lvim.builtin.treesitter.incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-n>",
      node_incremental = "<C-n>",
      scope_incremental = "<C-s>",
      node_decremental = "<C-r>",
    },
  }
  lvim.builtin.treesitter.query_linter = {
    enable = false,
    use_virtual_text = true,
    lint_events = { "BufWrite", "CursorHold" },
  }

  lvim.builtin.nvimtree.auto_open = 0

  -- LuaLine
  if lvim.builtin.lualine.active then
    require("user.lualine").config()
  end

  -- Dashboard
  if lvim.builtin.dashboard.active then
    require("user.dashboard").config()
  end

end

return M
