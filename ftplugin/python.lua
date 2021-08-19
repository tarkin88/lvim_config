-- python
lvim.format_on_save = false
lvim.lsp.diagnostics.virtual_text = false

lvim.lang.python.formatters = {
  {
    exe = "yapf",
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

