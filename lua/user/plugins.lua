local M = {}

M.config = function()
  lvim.plugins = {
    -- { "tweekmonster/startuptime.vim" },
    { "NTBBloodbath/doom-one.nvim" },
    { "vijaymarupudi/nvim-fzf" },
    {"kristijanhusak/vim-carbon-now-sh",
      event="BufRead"
    },
    {
      "ibhagwan/fzf-lua",
      config = function()
        require("user.fzf").config()
      end,
    },
    {
      "folke/trouble.nvim",
      event = "BufWinEnter",
      config = function()
        require("user.trouble").config()
      end,
    },
    {
      "ethanholz/nvim-lastplace",
      config = function()
        require("nvim-lastplace").setup {}
      end,
      event = "BufWinEnter",
    },
    {
      "folke/zen-mode.nvim",
      event = "BufRead",
      config = function()
        require("user.zen").config()
      end,
    },
    -- {
    --   "phaazon/hop.nvim",
    --   event = "BufRead",
    --   config = function()
    --     require("user.hop").config()
    --   end,
    -- },
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
