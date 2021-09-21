local M = {}

M.config = function()
  -- Additional keybindings
  -- =========================================
  lvim.leader = "space"
  lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
  lvim.keys.insert_mode["<C-s>"] = "<cmd>:w<cr>"
  lvim.keys.normal_mode["<C-q>"] = "<cmd>q<cr>"
  -- lvim.keys.normal_mode["<esc><esc>"] = "<cmd>nohlsearch<cr>"

  -- Navigation
  -- =========================================
  lvim.keys.normal_mode["<M-Tab>"] = "<cmd>BufferNext<cr>"
  lvim.keys.normal_mode["<M-S-Tab>"] = "<cmd>BufferPrevious<cr>"
  lvim.keys.normal_mode["<M-Down>"] = "<cmd>BufferClose<cr>"
  lvim.keys.normal_mode["<C-p>"] = "<cmd>Telescope find_files<cr>"

  --  Diagnostics
  -- =========================================
  lvim.keys.normal_mode["<C-j>"] =
    "<cmd>lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = lvim.lsp.popup_border}})<cr>"
  lvim.keys.normal_mode["<C-k>"] =
    "<cmd>lua vim.lsp.diagnostic.goto_next({popup_opts = {border = lvim.lsp.popup_border}})<cr>"

  --  F toogles
  -- =========================================
  lvim.keys.normal_mode["<F2>"] = "<cmd>NvimTreeToggle<cr>"
  lvim.keys.normal_mode["<F3>"] = "<cmd>Telescope lsp_document_diagnostics<cr>"
  lvim.keys.normal_mode["<F4>"] = "<cmd>lua require 'gitsigns'.blame_line()<cr>"

  lvim.keys.normal_mode["<F5>"] = "<cmd>Telescope oldfiles<cr>"
  lvim.keys.normal_mode["<F6>"] = "<cmd>Telescope git_status<cr>"
  lvim.keys.normal_mode["<F7>"] = "<cmd>Telescope live_grep<cr>"
  lvim.keys.normal_mode["<F8>"] = "<cmd>Telescope grep_string<cr>"

  lvim.keys.normal_mode["<F9>"] = "<cmd>lua vim.lsp.buf.formatting()<cr>"
  lvim.keys.normal_mode["<F10>"] = "<cmd>ZenMode<cr>"

  -- WhichKey keybindings
  -- =========================================
  lvim.builtin.which_key.mappings["lh"] = {
    "<cmd>hi LspReferenceRead cterm=bold ctermbg=red guibg=#24283b<cr><cmd>hi LspReferenceText cterm=bold ctermbg=red guibg=#24283b<cr><cmd>hi LspReferenceWrite cterm=bold ctermbg=red guibg=#24283b<cr>",
    "Clear HL",
  }
  lvim.builtin.which_key.mappings["f"] = { "<cmd>FzfLua files <cr>", "Find a File" }
end
return M
