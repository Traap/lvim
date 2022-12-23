local  ok, which_key = pcall(require, "which-key")
if not ok then return end

local mappings = {
  C = {
    name = "Go",
    i = { "<cmd>GoInstallDeps<Cr>", "Install Go Dependencies" },
    f = { "<cmd>GoMod tidy<cr>", "Tidy" },
    a = { "<cmd>GoTestAdd<Cr>", "Add Test" },
    A = { "<cmd>GoTestsAll<Cr>", "Add All Tests" },
    e = { "<cmd>GoTestsExp<Cr>", "Add Exported Tests" },
    g = { "<cmd>GoGenerate<Cr>", "Go Generate" },
    G = { "<cmd>GoGenerate %<Cr>", "Go Generate File" },
    c = { "<cmd>GoCmt<Cr>", "Generate Comment" },
    t = { "<cmd>lua require('dap-go').debug_test()<cr>", "Debug Test" },
  },
}

local opts = require('traap.core.constants').normal_opts
which_key.register(mappings, opts)
