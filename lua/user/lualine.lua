local M = {}
local components = require "core.lualine.components"

M.config = function()
  lvim.builtin.lualine.style = "none"
  lvim.builtin.lualine.options.theme = "none"

  lvim.builtin.lualine.sections = {
    lualine_a = {
      components.mode,
    },
    lualine_b = {
      components.python_env,
    },
    lualine_c = {
      { "filename", path = 1 },
    },
    lualine_x = {
      components.branch,
      components.diff,
      components.filetype,
      components.location,
    },
    lualine_y = {
      components.diagnostics,
    },
    lualine_z = {
      components.scrollbar,
    },
  }
  lvim.builtin.lualine.inactive_sections = {
    lualine_c = {
      { "filename", path = 1 },
    },
    lualine_y = {
      components.branch,
    },
  }
end

return M
