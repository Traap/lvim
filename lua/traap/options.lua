-- {{{ lvim is the global options object.
--
-- Linters should be filled in as strings with either a global executable or
-- a path to an executable.
--
-- ------------------------------------------------------------------------- }}}
-- {{{ Enable or disable lvim options.

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.breadcrumbs.active = true
lvim.builtin.bufferline.active = false
lvim.builtin.dap.active = true
lvim.builtin.illuminate.active = false
lvim.builtin.indentlines.active = false

lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.view.side = "right"

lvim.builtin.project.active = false
lvim.builtin.tabnine = { active = false }
lvim.builtin.terminal.active = false
lvim.builtin.treesitter.highlight.enable = true

lvim.builtin.cmp.cmdline.enable =  true
lvim.builtin.cmp.window.documentation = true
lvim.builtin.cmp.window.completion = {
  border = "rounded",
  winhighlight = "NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None",
}

lvim.format_on_save = false
lvim.log.level = "warn"

lvim.colorscheme = "base16-tokyo-night-terminal-storm"
lvim.transparent_window = true

-- ------------------------------------------------------------------------- }}}
-- {{{ My options.

local options = {
  cmdheight = 1,
  colorcolumn = '+1',
  cursorline = false,
  expandtab = true,
  fillchars = "fold: ",
  foldlevel = 20,
  foldmethod = "marker",
  lazyredraw = true,
  listchars = { eol = '↲', tab = '▸ ', trail = '·' },
  relativenumber = true,
  showbreak = "↪",
  showtabline = 0,
  textwidth = 80,
  virtualedit = { 'block' },
  wrap = false,
  whichwrap = "",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

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
