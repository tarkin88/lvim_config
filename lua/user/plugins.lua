local M = {}

M.config = function()
  lvim.plugins = {
    {
      "PHSix/nvim-hybrid",
      config = function()
        require "hybrid"
      end,
    },
    {
      "akinsho/bufferline.nvim",
      config = function()
        require("user.bufferline").config()
      end,
      requires = "kyazdani42/nvim-web-devicons",
    },
    { "kristijanhusak/vim-carbon-now-sh", cmd = "CarbonNowSh" },
    { "vijaymarupudi/nvim-fzf" },
    {
      "ibhagwan/fzf-lua",
      config = function()
        require("user.fzf").config()
      end,
    },
    {
      "danymat/neogen",
      config = function()
        require("neogen").setup {
          enabled = true,
        }
      end,
      cmd = "Neogen",
      requires = "nvim-treesitter/nvim-treesitter",
    },
    {
      "iamcco/markdown-preview.nvim",
      ft = "markdown",
      run = "cd app && yarn install",
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
      cmd = "ZenMode",
      config = function()
        require("user.zen").config()
      end,
    },
    -- {
    --   "tweekmonster/startuptime.vim",
    --   cmd = "StartupTime",
    -- },
    -- {
    --   "folke/trouble.nvim",
    --   cmd = "LspTroubleToggle",
    --   config = function()
    --     require("user.trouble").config()
    --   end,
    -- },
    -- {
    --   "simrat39/symbols-outline.nvim",
    --   config = function()
    --     require("user.outline").config()
    --   end,
    -- },
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
