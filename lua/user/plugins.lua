local M = {}

M.config = function()
  lvim.plugins = {
    { "NTBBloodbath/doom-one.nvim" },
    { "vijaymarupudi/nvim-fzf" },
    {
      "ray-x/lsp_signature.nvim",
      config = function()
        require("user/lsp_signature").config()
      end,
      event = "InsertEnter",
    },
    {
      "ethanholz/nvim-lastplace",
      config = function()
        require("nvim-lastplace").setup {}
      end,
      event = "BufWinEnter",
      disable = not lvim.builtin.lastplace.active,
    },
    -- {
    --   "folke/todo-comments.nvim",
    --   requires = "nvim-lua/plenary.nvim",
    --   config = function()
    --     require("todo-comments").setup()
    --   end,
    --   event = "BufRead",
    -- },
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require("user.hop").config()
      end,
    },
    {
      "simrat39/symbols-outline.nvim",
      cmd = "SymbolsOutline",
    },
    {
      "folke/zen-mode.nvim",
      config = function()
        require("user.zen").config()
      end,
      event = "BufRead",
    },
    {
      "karb94/neoscroll.nvim",
      config = function()
        require("user.neoscroll").config()
      end,
    },
    {
      "ibhagwan/fzf-lua",
      config = function()
        require("user.fzf").config()
      end,
    },
  }
end

-- {
--      "folke/tokyonight.nvim",
--      config = function()
--        require("user/theme").tokyonight()
--        vim.cmd [[
--      colorscheme tokyonight
--      ]]
--      end,
--      cond = function()
--        local _time = os.date "*t"
--        return (_time.hour >= 0 and _time.hour < 16)
--      end,
--    },
return M
