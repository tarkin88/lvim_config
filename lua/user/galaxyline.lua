
local M = {}

M.config = function()
  local status_ok, gl = pcall(require, "galaxyline")

  if not status_ok then
    return
  end


end

return M
