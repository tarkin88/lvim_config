local M = {}

M.config = function()
  -- Additional keybindings
  -- =========================================
  lvim.leader = "space"
  lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
  lvim.keys.insert_mode["<C-s>"] = "<cmd>:w<cr>"
  lvim.keys.normal_mode["<C-q>"] = "<cmd>q<cr>"
  lvim.keys.normal_mode["<esc><esc>"] = "<cmd>nohlsearch<cr>"

  -- Navigation
  -- =========================================
  lvim.keys.normal_mode["<M-Tab>"] = "<cmd>BufferNext<cr>"
  lvim.keys.normal_mode["<M-S-Tab>"] = "<cmd>BufferPrevious<cr>"

  --  F toogles
  -- =========================================
  lvim.keys.normal_mode["<F2>"] = "<cmd>NvimTreeToggle<cr>"
  lvim.keys.normal_mode["<F3>"] = "<cmd>CarbonNowSh<cr>"
  lvim.keys.normal_mode["<F4>"] = "<cmd>LspTroubleToggle<cr>"

  lvim.keys.normal_mode["<F5>"] = "<cmd>FzfLua files<cr>"
  lvim.keys.normal_mode["<F6>"] = "<cmd>FzfLua grep<cr>"
  lvim.keys.normal_mode["<F7>"] = "<cmd>FzfLua grep_cword<cr>"
  lvim.keys.normal_mode["<F8>"] = "<cmd>ZenMode<cr>"

  lvim.keys.normal_mode["<F9>"] = "<cmd>lua vim.lsp.buf.formatting()<cr>"

  -- WhichKey keybindings
  -- =========================================
  lvim.builtin.which_key.mappings["lh"] = {
    "<cmd>hi LspReferenceRead cterm=bold ctermbg=red guibg=#24283b<cr><cmd>hi LspReferenceText cterm=bold ctermbg=red guibg=#24283b<cr><cmd>hi LspReferenceWrite cterm=bold ctermbg=red guibg=#24283b<cr>",
    "Clear HL",
  }
  lvim.builtin.which_key.mappings["f"] = { "<cmd>FzfLua files <cr>", "Find a File" }
end
return M
