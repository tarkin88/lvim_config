local M = {}
local components = require "core.lualine.components"

local user_config = {
  style = "lvim",
  options = {
    icons_enabled = true,
    component_separators = "",
    section_separators = "",
    disabled_filetypes = { "dashboard", "nvim-tree" },
  },
  sections = {
    lualine_a = {
      components.modes,
    },
    lualine_b = {
      { "filename", path = 1 },
    },
    lualine_c = {
    },
    lualine_x = {
      components.branch,
      components.diff,
      components.filetype,
      -- components.progress,
      components.location,
    },
    lualine_y = {
      components.diagnostics,
    },
    lualine_z = {
      components.scrollbar,
    },
  },
  inactive_sections = {
    lualine_a = {
      { "filename", path = 1, file_status = true },
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {
      components.branch,
    },
    lualine_z = {},
  },
  tabline = {},
  extensions = { "nvim-tree" },
}

function M.update()
  local config = lvim.builtin.lualine

  lvim.builtin.lualine = {
    active = true,
    style = user_config.style,
    options = {
      icons_enabled = user_config.options.icons_enabled,
      component_separators = user_config.options.component_separators,
      section_separators = user_config.options.section_separators,
      disabled_filetypes = user_config.options.disabled_filetypes,
    },
    sections = {
      lualine_a = user_config.sections.lualine_a,
      lualine_b = user_config.sections.lualine_b,
      lualine_c = user_config.sections.lualine_c,
      lualine_x = user_config.sections.lualine_x,
      lualine_y = user_config.sections.lualine_y,
      lualine_z = user_config.sections.lualine_z,
    },
    inactive_sections = {
      lualine_a = user_config.inactive_sections.lualine_a,
      lualine_b = user_config.inactive_sections.lualine_b,
      lualine_c = user_config.inactive_sections.lualine_c,
      lualine_x = user_config.inactive_sections.lualine_x,
      lualine_y = user_config.inactive_sections.lualine_y,
      lualine_z = user_config.inactive_sections.lualine_z,
    },
    tabline = user_config.tabline,
    extensions = user_config.extensions,
    on_config_done = config.on_config_done,
  }
end

return M
