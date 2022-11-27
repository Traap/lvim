local  ok, which_key = pcall(require, "which-key")
if not ok then return end

local mappings = {
  C = {
    name = "Ruby",
    t = { "<cmd>lua require('dap-ruby').debug_test()<cr>", "Debug Test" },
  },
}

local opts = require('traap.constants').normal_opts
which_key.register(mappings, opts)
