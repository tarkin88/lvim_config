local M = {}

M.config = function()
  local status_ok, fzf = pcall(require, "fzf-lua")
  if not status_ok then
    return
  end

  fzf.setup {
    winopts = {
      -- split = "new", -- ope in a split instead?
      win_height = 0.6, -- window height
      win_width = 0.90, -- window width
      win_row = 0.1,
      win_border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    },
    fzf_layout = "reverse",
    preview_opts = "hidden",
    preview_horizontal = "right:30%", -- right|left:size
    preview_layout = "flex", -- horizontal|vertical|flex
    files = {
      prompt = "Files❯ ",
      file_icons = false,
    },
    grep = {
      prompt = "Rg❯ ",
      input_prompt = "Grep For❯ ",
      -- cmd               = "rg --vimgrep",
      rg_opts = "--hidden --column --line-number --no-heading "
        .. "--color=always --smart-case -g '!{.git,node_modules}/*'",
      git_icons = true, -- show git icons?
      file_icons = false, -- show file icons?
      color_icons = true, -- colorize file|git icons
    },
  }
end

return M
