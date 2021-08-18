local M = {}

M.config = function()
  -- Additional keybindings
  -- =========================================
  lvim.leader = "space"
  lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
  lvim.keys.normal_mode["<C-q>"] = ":q<cr>"
  lvim.keys.normal_mode["<esc><esc>"] = "<cmd>nohlsearch<cr>"
  lvim.keys.normal_mode["<esc><esc>"] = "<cmd>nohlsearch<cr>"

  lvim.keys.normal_mode["<F2>"] = "<cmd>lua require'core.nvimtree'.toggle_tree()<cr>"
  lvim.keys.normal_mode["<F3>"] = "<cmd>SymbolsOutline<cr>"
  lvim.keys.normal_mode["<F5>"] = "<cmd>FzfLua files<cr>"
  lvim.keys.normal_mode["<F6>"] = "<cmd>FzfLua grep<cr>"
  lvim.keys.normal_mode["<F7>"] = "<cmd>FzfLua grep_cword<cr>"
  lvim.keys.normal_mode["<F9>"] = "<cmd>ZenMode<cr>"
  -- WhichKey keybindings
  -- =========================================
  lvim.builtin.which_key.mappings["lh"] = {
    "<cmd>hi LspReferenceRead cterm=bold ctermbg=red guibg=#24283b<cr><cmd>hi LspReferenceText cterm=bold ctermbg=red guibg=#24283b<cr><cmd>hi LspReferenceWrite cterm=bold ctermbg=red guibg=#24283b<cr>",
    "Clear HL",
  }
  lvim.builtin.which_key.mappings["f"] = { "<cmd>FzfLua files <cr>", "Find a File" }
end
return M
