-- python
lvim.lsp.diagnostics.virtual_text = true
lvim.format_on_save = false

lvim.lang.python.formatters = {
  {
    exe = "black",
  },
  -- {
  --   exe = "isort",
  -- },
}

lvim.lang.python.linters = {
  {
    exe = "flake8",
  },
}
