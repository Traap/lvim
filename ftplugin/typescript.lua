local  ok, which_key = pcall(require, "which-key")
if not ok then return end

local mappings = {
  C = {
    name = "Typescript",
    i = { "<cmd>TypescriptAddMissingImports<Cr>", "AddMissingImports" },
    o = { "<cmd>TypescriptOrganizeImports<cr>", "OrganizeImports" },
    u = { "<cmd>TypescriptRemoveUnused<Cr>", "RemoveUnused" },
    r = { "<cmd>TypescriptRenameFile<Cr>", "RenameFile" },
    f = { "<cmd>TypescriptFixAll<Cr>", "FixAll" },
    g = { "<cmd>TypescriptGoToSourceDefinition<Cr>", "GoToSourceDefinition" },
  },
}

local opts = require('traap.constants').normal_opts
which_key.register(mappings, opts)