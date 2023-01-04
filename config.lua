--er Initial configuration.
require 'traap.core.functions'
require 'traap.core.options'
require 'traap.core.plugins'

-- Personalize neovim.
require 'traap.plugins.autopairs'
require 'traap.plugins.colorize'
require 'traap.plugins.lightbulb'
require 'traap.plugins.surround'
require 'traap.plugins.telescope'
require 'traap.plugins.transparent'
require 'traap.plugins.treesitter'

-- Lsp
require 'traap.lsp'

-- Take control of all keybindings.
require 'traap.keys.keybindings'

-- zymurgy : The last word in 1980 Webster's new collegiate dictionary.
require 'traap.core.autocommands'
require 'traap.core.clipboard'
require 'traap.core.zymurgy'
