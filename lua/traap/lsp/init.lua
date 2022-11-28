require 'traap.lsp.languages.go'
require 'traap.lsp.languages.csharp'
require 'traap.lsp.languages.js-ts'
require 'traap.lsp.languages.python'
require 'traap.lsp.languages.ruby'
require 'traap.lsp.languages.rust'
require 'traap.lsp.languages.sh'

lvim.lsp.diagnostics.virtual_text = true

lvim.builtin.treesitter.ensure_installed = {
  'java',
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { 'jdtls' })

local formatters = require 'lvim.lsp.null-ls.formatters'
formatters.setup {
  { command = 'google_java_format', filetypes = { 'java' } },
  { command = 'stylua', filetypes = { 'lua' } },
  { command = 'shfmt', filetypes = { 'sh', 'zsh' } },
}
