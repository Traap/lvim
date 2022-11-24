local  ok, which_key = pcall(require, "which-key")
if not ok then return end

local mappings = {
  C = {
    name = "Rust",
    r = { "<cmd>RustRunnables<Cr>",        "Runnables" },
    t = { "<cmd>lua _CARGO_TEST()<cr>",    "Cargo Test" },
    m = { "<cmd>RustExpandMacro<Cr>",      "Expand Macro" },
    c = { "<cmd>RustOpenCargo<Cr>",        "Open Cargo" },
    D = { "<cmd>RustOpenExternalDocs<Cr>", "Open Docs" },
    p = { "<cmd>RustParentModule<Cr>",     "Parent Module" },
    d = { "<cmd>RustDebuggables<Cr>",      "Debuggables" },
    v = { "<cmd>RustViewCrateGraph<Cr>",   "View Crate Graph" },
    R = {
      "<cmd>lua require('rust-tools/workspace_refresh')._reload_workspace_from_cargo_toml()<Cr>",
      "Reload Workspace",
    },
    o = { "<cmd>RustOpenExternalDocs<Cr>", "Open External Docs" },
  },
}

local opts = require('traap.constants').normal_opts
which_key.register(mappings, opts)
