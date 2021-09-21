local M = {}

M.config = function()
  -- lua
  lvim.format_on_save = true
  lvim.lang.lua.formatters = {
    {
      exe = "stylua",
    },
  }

  -- python
  lvim.format_on_save = false
  lvim.lsp.diagnostics.virtual_text = false
  lvim.lang.python.formatters = {
    {
      exe = "black",
    },
    {
      exe = "isort",
    },
  }

  lvim.lang.python.linters = {
    {
      exe = "flake8",
    },
  }
end
return M
