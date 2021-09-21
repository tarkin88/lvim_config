local M = {}

M.config = function()
  lvim.plugins = {
    {
      "PHSix/nvim-hybrid",
      config = function()
        require "hybrid"
      end,
    },
    { "kristijanhusak/vim-carbon-now-sh", cmd = "CarbonNowSh" },
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
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      run = "make",
      event = "BufRead",
      after = "telescope.nvim",
      config = function()
        require("telescope").load_extension "fzf"
      end,
    },
  }
end

return M
