local M = {}

M.config = function()
  local status_ok, lline = pcall(require, "lualine")
  if not status_ok then
    return
  end
  local colors = require "user.colors"

  lline.setup {
    options = {
      lower = true,
      theme = "palenight",
      icons_enabled = true,
      section_separators = "",
      disabled_filetypes = { "dashboard", "nvimtree", "" },
      component_separators = { "" },
    },
    sections = {
      lualine_a = {
        {
          function()
            return " "
          end,
          left_padding = 0,
          right_padding = 0,
        },
      },
      lualine_b = {
        "filename",
      },
      lualine_c = {},
      lualine_x = {
        {
          "branch",
          color = { fg = colors.yellow },
          icon = " ",
        },
        {
          "diff",
          symbols = { added = "  ", modified = "柳", removed = " " },
          color_added = colors.green,
          color_modified = colors.yellow,
          color_removed = colors.red,
        },

        "progress",
        {
          "location",
          left_padding = -1,
          right_padding = -1,
        },
      },
      lualine_y = {
        {
          "diagnostics",
          icon = " ",
          sources = { "nvim_lsp" },
          symbols = { error = " ", warn = " ", info = " ", hint = " " },
          color_error = colors.red,
          color_warn = colors.yellow,
          color_info = colors.cyan,
        },
      },
      lualine_z = {
        {
          function()
            return " "
          end,
          left_padding = 0,
          right_padding = 0,
        },
      },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
  }
end

return M
