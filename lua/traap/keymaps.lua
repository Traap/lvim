-- {{{ Leader and maplocalleader

local keymap = require('traap.helpers').keymap


lvim.leader = "space"
vim.g.maplocalleader = [[,]]

-- ------------------------------------------------------------------------ }}}
-- {{{ Ummap default LunarVim keys.

lvim.keys.normal_mode["<leader>gs"] = ""
lvim.keys.normal_mode["<leader>gC"] = ""
lvim.keys.normal_mode["<leader>gc"] = ""

-- ------------------------------------------------------------------------ }}}
-- {{{ Easy align

vim.cmd([[
  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)
  nmap <bar>     gaip*<bar>
  nmap <leader>0 gaip*,
  nmap <leader>1 gaip=,
  nmap <leader>2 gaip=<space>
]])

-- ------------------------------------------------------------------------- }}}
-- {{{ General keybindings.

-- Ctrl-I
keymap('n', '<C-i>', '<C-i>')

-- Move to $GITHOME
keymap('n', '<c-g>', '<cmd>cd $GITHOME<cr>')

-- Quit now
keymap('n', '<c-q>', '<cmd>qall!<cr>')

-- sxhkd filetype.
keymap('n', '<c-s>', '<cmd>set filetype=sxhkd<cr>')

-- Delete the current line.
keymap('n', '-', 'dd')


-- Select (charwise) the contents of the current line, excluding indentation.
keymap('n', 'vv', '^vg_')

-- Select entire buffer
keymap('n', 'vaa', 'ggvGg_')
keymap('n', 'Vaa', 'ggVG')

-- Save all files.
keymap('n', '<F2>', '<cmd>wall<cr>')

-- Delete current buffer.
keymap('n', 'Q', '<cmd>Bdelete!<cr>')

-- Something Chris@Machine is doing?
keymap('n', '_', [[<cmd>lua require'ilr.float'.toggle()<cr>]])

-- ------------------------------------------------------------------------- }}}
-- {{{ Folding commands.

-- Author: Karl Yngve Lervåg
--    See: https://github.com/lervag/dotnvim

-- Close all fold except the current one.
keymap('n', 'zv', 'zMzvzz')

-- Close current fold when open. Always open next fold.
keymap('n', 'zj', 'zcjzOzz')

-- Close current fold when open. Always open previous fold.
keymap('n', 'zk', 'zckzOzz')

-- ------------------------------------------------------------------------- }}}
-- {{{ Copy and Paste

-- Visual yank
keymap('v', '<localleader>cc', [["+y]])
keymap('n', '<localleader>cc', [[ggVGg_"+y]])

keymap('n', '<localleader>cv', [[s"+p]])

-- ------------------------------------------------------------------------- }}}
-- {{{ KVJ and shell commands.

-- KJV bindings.
keymap('n', 'gk', [[0mMvg_"ky :exec "r!kjv -b -w 65 -d" getreg("k")<cr>]])
keymap('v', 'gk', [["ky :exec "r!kjv -b -w 65 -d" getreg("k")<cr>]])

-- Execute the current line of test as a shell command.
keymap('n', '<localleader>E', [[0mMvg_"ky :exec "r!" getreg("k")<cr>]])
keymap('v', '<localleader>E', [["ky :exec "r!" getreg("k")<cr>]])

-- Display help in a vertical buffer.
keymap('n', '<localleader>HH', [[<cmd>vert bo help<cr>]])
keymap('v', '<localleader>HH', [["ky :exec "vert bo help" getreg("k")<cr>]])

-- ------------------------------------------------------------------------- }}}
-- {{{ Buffer adjustments.

-- Buffer reload.
keymap('n', '<localleader>bx', [[<cmd>w<cr><cmd>luafile %<cr><cmd>echo "Sourced " . @%<cr>]])

-- Toggle Alpha
keymap('n', '<leader>aa', '<cmd>Alpha<cr>')

-- Toggle search highlighting.
keymap('n', '<localleader><space>', '<cmd>nohlsearch<cr>')

-- Adjust buffer size.
keymap('n', '<localleader>h', [[<cmd>vertical resize -1<cr>]])
keymap('n', '<localleader>j', [[<cmd>resize +1<cr>]])
keymap('n', '<localleader>k', [[<cmd>resize -1<cr>]])
keymap('n', '<localleader>l', [[<cmd>vertical resize +1<cr>]])

-- Check health.
keymap('n', '<localleader>or', [[<cmd>checkhealth<cr>]])

-- Only this buffer is visuble.
keymap('n', '<localleader>oo', [[<cmd>only<cr>]])

-- ------------------------------------------------------------------------- }}}
-- {{{ Fugitive

keymap('n', '<localleader>gL', '<cmd>G log<cr>')
keymap('n', '<localleader>gP', '<cmd>G pull<cr>')
keymap('n', '<localleader>gc', '<cmd>G commit<cr>')
keymap('n', '<localleader>gd', '<cmd>G diff<cr>')
keymap('n', '<localleader>gh', '<cmd>vert bo help fugitive<cr>')
keymap('n', '<localleader>gp', '<cmd>G push<cr>')
keymap('n', '<localleader>gs', '<cmd>G<cr>')
keymap('n', '<localleader>gu', '<cmd>call GenerateUmlDiagram()<cr>')

-- ------------------------------------------------------------------------- }}}
-- {{{ Telescope

keymap('n', '<localleader>tB', '<cmd>Telescope git_branches<cr>')
keymap('n', '<localleader>tC', '<cmd>Telescope git_commits<cr>')
keymap('n', '<localleader>tF', '<cmd>Telescope media_files<cr>')
keymap('n', '<localleader>tM', '<cmd>Telescope man_pages<cr>')
keymap('n', '<localleader>tR', '<cmd>Telescope registers<cr>')
keymap('n', '<localleader>tS', '<cmd>Telescope git_status<cr>')

keymap('n', '<localleader>tb', '<cmd>Telescope buffers<cr>')
keymap('n', '<localleader>tc', '<cmd>Telescope commands<cr>')
keymap('n', '<localleader>td', '<cmd>Telescope diagnostics<cr>')
keymap('n', '<localleader>tf', '<cmd>Telescope find_files<cr>')
keymap('n', '<localleader>tg', '<cmd>Telescope live_grep<cr>')
keymap('n', '<localleader>th', '<cmd>Telescope help_tags<cr>')
keymap('n', '<localleader>ti', "<cmd>lua require', 'elescope').extensions.media_files.media_files()<cr>")
keymap('n', '<localleader>tk', '<cmd>Telescope keymaps<cr>')
keymap('n', '<localleader>tl', '<cmd>Telescope resume<cr>')
keymap('n', '<localleader>to', '<cmd>Telescope oldfiles<cr>')
keymap('n', '<localleader>tp', '<cmd>Telescope find_files cwd=~/.local/share/nvim/site/pack/packer<cr>')
keymap('n', '<localleader>ts', '<cmd>Telescope colorscheme<cr>')
keymap('n', '<localleader>tv', '<cmd>Telescope find_files cwd=~/git/lvim<cr>')

-- ------------------------------------------------------------------------- }}}
-- {{{ NvimTree

keymap('n', '<c-n>', '<cmd>NvimTreeToggle<cr>')
keymap('n', '<localleader>nf', '<cmd>NvimTreeFindFile<cr>')
keymap('n', '<localleader>nr', '<cmd>NvimTreeRefresh<cr>')

-- ------------------------------------------------------------------------- }}}
