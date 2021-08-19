local M = {}

M.config = function()
  lvim.builtin.nvimtree.side = "left"
  lvim.builtin.nvimtree.show_icons.git = 1
  lvim.builtin.treesitter.ensure_installed = "maintained"
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

  lvim.builtin.compe.documentation.border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
  lvim.builtin.nvimtree.auto_open = 0

  -- Galaxyline
  -- if lvim.builtin.galaxyline.active then
  --   require("user.galaxyline").config()
  -- end

  -- Dashboard
  if lvim.builtin.dashboard.active then
    require("user.dashboard").config()
  end

  -- Bar bar
  if lvim.builtin.bufferline.active then
    require("user.barbar").config()
  end
end

lvim.lang.python.lsp.setup.capabilities.textDocument.documentSymbol.hierarchicalDocumentSymbolSupport = false
return M
