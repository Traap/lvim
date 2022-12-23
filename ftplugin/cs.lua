local  ok, which_key = pcall(require, "which-key")
if not ok then return end

local mappings = {
  C = {
    name = "Csharp",
    t = { "<cmd>lua require('dap-').debug_test()<cr>", "Debug Test" },
  },
}

local opts = require('traap.core.constants').normal_opts
which_key.register(mappings, opts)
