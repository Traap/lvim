local keymap = require('traap.core.functions').keymap_buffer

keymap('n', '<leader>CD', '<cmd>RustOpenExternalDocs<cr>')
keymap('n', '<leader>CR', "<cmd>lua require('rust-tools/workspace_refresh')._reload_workspace_from_cargo_toml()<cr>")

keymap('n', '<leader>Cc', '<cmd>RustOpenCargo<cr>')
keymap('n', '<leader>Cd', '<cmd>RustDebuggables<cr>')
keymap('n', '<leader>Cm', '<cmd>RustExpandMacro<cr>')
keymap('n', '<leader>Co', '<cmd>RustOpenExternalDocs<cr>')
keymap('n', '<leader>Cp', '<cmd>RustParentModule<cr>')
keymap('n', '<leader>Cr', '<cmd>RustRunnables<cr>')
keymap('n', '<leader>Ct', '<cmd>lua _CARGO_TEST()<cr>')
keymap('n', '<leader>Cv', '<cmd>RustViewCrateGraph<cr>')
