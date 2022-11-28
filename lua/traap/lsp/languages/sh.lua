local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "shfmt", filetypes = { "sh", "zsh", "bash" } },
}

vim.filetype.add {
  extension = {
    zsh = "zsh",
  },
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "bashls" })

local lsp_manager = require "lvim.lsp.manager"
lsp_manager.setup("bashls", {
  filetypes = { "sh", "zsh" },
  on_init = require("lvim.lsp").common_on_init,
  capabilities = require("lvim.lsp").common_capabilities(),
})

-- TODO: Setup bash dap.
-- local  ok, dap = pcall(require, 'dap')
-- if not ok then return end

-- dap.adapters.bashdb = {
--   type = 'executable';
--   command = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/bash-debug-adapter';
--   name = 'bashdb';
-- }

-- dap.configurations.sh = {
--   {
--     type = 'bashdb';
--     request = 'launch';
--     name = "Launch file";
--     showDebugOutput = true;
--     pathBashdb = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/extension/bashdb_dir/bashdb';
--     pathBashdbLib = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/extension/bashdb_dir';
--     trace = true;
--     file = "${file}";
--     program = "${file}";
--     cwd = '${workspaceFolder}';
--     pathCat = "cat";
--     pathBash = "/bin/bash";
--     pathMkfifo = "mkfifo";
--     pathPkill = "pkill";
--     args = {};
--     env = {};
--     terminalKind = "integrated";
--   }
-- }
