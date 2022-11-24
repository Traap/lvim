local  ok, which_key = pcall(require, "which-key")
if not ok then return end

local mappings = {
  C = {
    name = "Python",
    t = { "<cmd>lua require('dap-python').test_method()<cr>",     "Test Method" },
    T = { "<cmd>lua require('dap-python').test_class()<cr>",      "Test Class" },
    d = { "<cmd>lua require('dap-python').debug_selection()<cr>", "Debug Selection" },
  },
}

local opts = require('traap.constants').normal_opts
which_key.register(mappings, opts)
