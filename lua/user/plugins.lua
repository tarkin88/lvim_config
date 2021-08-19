local M = {}

M.config = function()
  lvim.plugins = {
    { "NTBBloodbath/doom-one.nvim" },
    { "vijaymarupudi/nvim-fzf" },
    { "tweekmonster/startuptime.vim" },
    {
      "ibhagwan/fzf-lua",
      config = function()
        require("user.fzf").config()
      end,
    },
    {
      "folke/trouble.nvim",
      config = function()
        require("user.trouble").config()
      end,
      event = "BufWinEnter",
    },
    {
      "ethanholz/nvim-lastplace",
      config = function()
        require("nvim-lastplace").setup {}
      end,
      event = "BufWinEnter",
      disable = not lvim.builtin.lastplace.active,
    },
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require("user.hop").config()
      end,
    },
    {
      "hoob3rt/lualine.nvim",
      config = function()
        require("user.lualine").config()
      end,
    },
    {
      "folke/zen-mode.nvim",
      config = function()
        require("user.zen").config()
      end,
      event = "BufRead",
    },
    -- {
    --   "ray-x/lsp_signature.nvim",
    --   config = function()
    --     require("user/lsp_signature").config()
    --   end,
    --   event = "InsertEnter",
    -- },
    -- {
    --   "simrat39/symbols-outline.nvim",
    --   cmd = "SymbolsOutline",
    -- },
    -- {
    --   "karb94/neoscroll.nvim",
    --   config = function()
    --     require("user.neoscroll").config()
    --   end,
    -- },
    -- {
    --   "unblevable/quick-scope",
    --   config = function()
    --     require "user.quickscope"
    --   end,
    -- },
  }
end

return M
