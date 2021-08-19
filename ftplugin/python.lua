-- python
lvim.format_on_save = false
lvim.lsp.diagnostics.virtual_text = false
vim.opt.foldlevel = 10

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
