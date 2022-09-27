-- {{{ lvim is the global options object.
--
-- Linters should be filled in as strings with either a global executable or
-- a path to an executable.
--
-- ------------------------------------------------------------------------- }}}
-- {{{ Enable or disable lvim options.

lvim.builtin.alpha.active = false
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"

lvim.builtin.bufferline.active = false
lvim.builtin.indentlines.active = false

lvim.builtin.lualine.style = "default"
lvim.builtin.notify.active = true

lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.view.side = "right"

lvim.builtin.project.active = false
lvim.builtin.tabnine = { active = false }
lvim.builtin.terminal.active = false
lvim.builtin.terminal.active = true

-- ------------------------------------------------------------------------- }}}
-- {{{ ColorScheme and leaders.

lvim.colorscheme = "base16-tokyo-night-terminal-storm"
lvim.format_on_save = true
lvim.log.level = "warn"
lvim.transparent_window = true

lvim.leader = "space"
vim.g.maplocalleader = [[,]]

-- ------------------------------------------------------------------------- }}}
-- {{{ Unmap default default LunarVim keys.

-- Note:  Unmapping doesn't seame towork.
lvim.keys.normal_mode["<leader>gs"] = ""
lvim.keys.normal_mode["<leader>gC"] = ""
lvim.keys.normal_mode["<leader>gc"] = ""

-- ------------------------------------------------------------------------- }}}
-- {{{ My options.

-- vim.opt.background = "dark"
vim.opt.cmdheight = 1
vim.opt.cursorline = false
vim.opt.expandtab = true
vim.opt.fillchars = "fold: "
vim.opt.foldlevel = 20
vim.opt.foldmethod = "marker"
vim.opt.lazyredraw = true
vim.opt.relativenumber = true
vim.opt.showbreak = "↪"
vim.opt.showtabline = 0
vim.opt.textwidth = 80
vim.opt.wrap = false
vim.opt.whichwrap = ""

-- ------------------------------------------------------------------------- }}}
-- {{{ Bullet plugin settings.

vim.g.bullets_enabled_file_types = {
  "gitcommit",
  "markdown",
  "scratch",
  "text",
  "wiki"
}

-- ------------------------------------------------------------------------- }}}
