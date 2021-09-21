local M = {}

local previewers = require('telescope.previewers')

local new_maker = function(filepath, bufnr, opts)
  opts = opts or {}

  filepath = vim.fn.expand(filepath)
  vim.loop.fs_stat(filepath, function(_, stat)
    if not stat then return end
    if stat.size > 4000 then
      return
    else
      previewers.buffer_previewer_maker(filepath, bufnr, opts)
    end
  end)
end

M.config = function()
  -- Telescope
  -- =========================================
  lvim.builtin.telescope.defaults = {
    buffer_previewer_maker = new_maker,
    path_display = { shorten = 15 },
    windblend = 6,
    layout_strategy = "horizontal",
    layout_config = {
      width = 0.80,
      height = 0.45,
      preview_cutoff = 60,
      prompt_position = "bottom",
      horizontal = {
        preview_width = function(_, cols, _)
          if cols > 200 then
            return math.floor(cols * 0.5)
          else
            return math.floor(cols * 0.6)
          end
        end,
      },
      vertical = {
        width = 0.9,
        height = 0.95,
        preview_height = 0.1,
      },

      flex = {
        horizontal = {
          preview_width = 0.1,
        },
      },
    },
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      },
    },
    file_ignore_patterns = {
      "vendor/*",
      "node_modules",
      "%.jpg",
      "%.jpeg",
      "%.png",
      "%.svg",
      "%.otf",
      "%.ttf",
      "%COMMIT_*",
    },
  }
end
return M
