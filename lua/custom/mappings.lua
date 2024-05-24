local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>h"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>l"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

-- more keybinds!
M.custom = {
  n = {
    ["<leader>j"] = {"<Cmd>lua require('nvterm.terminal').send('python3 ' .. vim.fn.expand('%') .. '\\r')<CR>", "Run current Python file in terminal"},
    ["<leader>k"] = {"<C-W>j<C-C><C-D><C-D>exit<Enter>", "Close current buffer"},
    ["<A-j>"] = {":m+<CR>"},
    ["<A-k>"] = {":m-2<CR>"}
  },
  v = {
    ["<A-j>"] = {":m '>+1<CR>gv=gv"},
    ["<A-k>"] = {":m '<-2<CR>gv=gv"}
  }
}

return M

