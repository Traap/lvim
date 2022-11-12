-- {{{ Credits

-- https://github.com/LunarVim/Neovim-from-scratch

-- ------------------------------------------------------------------------- }}}
-- {{{ Use protected call so we don't error on first use.

local  ok, _ = pcall(require, "alpha")
if not ok then return end

-- ------------------------------------------------------------------------- }}}

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {"L u n a r   V i m"}

dashboard.section.buttons.val = {
  dashboard.button("a", "  Alpha",               ":e ~/.config/lvim/lua/traap/alpha.lua <CR>"),
  dashboard.button("b", "  bspwm",               ":e ~/.config/bspwm/bspwmrc <CR>"),
  dashboard.button("c", "  Configuration",       ":e ~/.config/lvim/config.lua <CR>"),
  dashboard.button("e", "  New file",            ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", "  Find file",           ":Telescope find_files <CR>"),
  dashboard.button("k", "  Keybindings",         ":e ~/.config/lvim/lua/traap/keybindings.lua<CR>"),
  dashboard.button("n", "  Notebook",            ":e ~/git/wiki/index.md<CR>"),
  dashboard.button("p", "  Plugins",             ":e ~/.config/lvim/lua/traap/plugins.lua <CR>"),
  dashboard.button("q", "  Quit Neovim",         ":qa<CR>"),
  dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
  dashboard.button("s", "  sxhkd",               ":e ~/.config/sxhkd/sxhkdrc <CR>"),
  dashboard.button("t", "  Find text",           ":Telescope live_grep <CR>"),
  dashboard.button("v", "  Resume",              ":e ~/git/wiki/personal/cv/cv.tex<CR>"),
  dashboard.button("w", "  WhichKey",            ":e ~/.config/lvim/lua/traap/whichkey.lua<CR>"),
}

lvim.builtin.alpha.dashboard.section.header.val = dashboard.section.header.val
lvim.builtin.alpha.dashboard.section.buttons.val = dashboard.section.buttons.val
