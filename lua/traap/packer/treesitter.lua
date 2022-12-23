-- {{{ Treesitter

lvim.builtin.treesitter.rainbow = {
  enable = true,
  extended_mode = false,
  disable = {'html'},
}

-- lvim.builtin.treesitter.ensure_installed = {
--   "bash",
--   "c",
--   "c_sharp",
--   "comment",
--   "cpp",
--   "css",
--   "dockerfile",
--   "graphql",
--   "html",
--   "http",
--   "json",
--   "latex",
--   "lua",
--   "markdown",
--   "pascal",
--   "ruby",
--   "rust",
--   "sql",
--   "vim",
--   "yaml",
-- }

-- lvim.builtin.treesitter.ignore_install = { "haskell" }
-- lvim.builtin.treesitter.highlight.enabled = true

lvim.builtin.treesitter.textobjects = {
	select = {
		enable = true,
		-- Automatically jump forward to textobj, similar to targets.vim
		lookahead = true,
		keymaps = {
			-- You can use the capture groups defined in textobjects.scm
			["af"] = "@function.outer",
			["if"] = "@function.inner",
			["at"] = "@class.outer",
			["it"] = "@class.inner",
			["ac"] = "@call.outer",
			["ic"] = "@call.inner",
			["aa"] = "@parameter.outer",
			["ia"] = "@parameter.inner",
			["al"] = "@loop.outer",
			["il"] = "@loop.inner",
			["ai"] = "@conditional.outer",
			["ii"] = "@conditional.inner",
			["a/"] = "@comment.outer",
			["i/"] = "@comment.inner",
			["ab"] = "@block.outer",
			["ib"] = "@block.inner",
			["as"] = "@statement.outer",
			["is"] = "@scopename.inner",
			["aA"] = "@attribute.outer",
			["iA"] = "@attribute.inner",
			["aF"] = "@frame.outer",
			["iF"] = "@frame.inner",
		},
	},
}
-- ------------------------------------------------------------------------- }}}
