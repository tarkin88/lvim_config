local M = {}

M.config = function()
  local status_ok, fzf = pcall(require, "fzf-lua")
  if not status_ok then
    return
  end

  fzf.setup {
    fzf_layout = "reverse", -- fzf '--layout=' options
    fzf_args = "", -- adv: fzf extra args, empty unless adv
    preview_border = "border", -- border|noborder
    preview_wrap = "wrap", -- wrap|nowrap
    preview_opts = "hidden", -- hidden|nohidden
    preview_vertical = "down:40%", -- up|down:size
    preview_layout = "vertical", -- horizontal|vertical|flex
    flip_columns = 120, -- #cols to switch to horizontal on flex
    grep = {
      rg_opts = "--hidden --column --line-number --no-heading "
        .. "--color=always --smart-case -g '!{.git,node_modules,autoload,.venv}/*' --glob '!.git/**'",
    },
  }
end

return M
