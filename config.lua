--er Initial configuration.
require 'traap.core.functions'
require 'traap.core.options'
require 'traap.core.plugins'

-- Personalize neovim.
require 'traap.packer.autopairs'
require 'traap.packer.colorize'
require 'traap.packer.lightbulb'
require 'traap.packer.surround'
require 'traap.packer.telescope'
require 'traap.packer.transparent'
require 'traap.packer.treesitter'

-- Lsp
require 'traap.lsp'

-- Take control of all keybindings.
require 'traap.keys.keybindings'

-- zymurgy : The last word in 1980 Webster's new collegiate dictionary.
require 'traap.core.autocommands'
require 'traap.core.clipboard'
require 'traap.core.zymurgy'
