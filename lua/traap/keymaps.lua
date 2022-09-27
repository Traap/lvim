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


-- Move to $GITHOME
keymap('n', '<c-g>', '<cmd>cd $GITHOME<cr>')

-- Quit now
keymap('n', '<c-q>', '<cmd>qall!<cr>')

-- sxhkd filetype.
keymap('n', '<c-s>', '<cmd>set filetype=sxhkd<cr>')

-- Delete the current line.
keymap('n', '-', 'dd')

-- Toggle NvimTree
keymap('n', '<c-n>', '<cmd>NvimTreeToggle<cr>')

-- Select (charwise) the contents of the current line, excluding indentation.
keymap('n', 'vv', '^vg_')

-- Select entire buffer
keymap('n', 'vaa', 'ggvGg_')
keymap('n', 'Vaa', 'ggVG')

-- Save all files.
keymap('n', '<F2>', '<cmd>wall<cr>')

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
keymap('v', '<leader>cc', '"+y')
keymap('n', '<leader>cc', 'ggVGg_"+y')

keymap('n', '<leader>cv>', '"+p')


-- ------------------------------------------------------------------------- }}}
-- {{{ KVJ and shell commands.

-- KJV bindings.
keymap('n', 'gk', [[0mMvg_"ky :exec "r!kjv -b -w 65 -d" getreg("k")<cr>]])
keymap('v', 'gk', [["ky :exec "r!kjv -b -w 65 -d" getreg("k")<cr>]])

-- Execute the current line of test as a shell command.
keymap('n', '<leader>E', [[0mMvg_"ky :exec "r!" getreg("k")<cr>]])
keymap('v', '<leader>E', [["ky :exec "r!" getreg("k")<cr>]])

-- Display help in a vertical buffer.
keymap('n', '<leader>HH', [[<cmd>vert bo help<cr>]])
keymap('v', '<leader>HH', [["ky :exec "vert bo help" getreg("k")<cr>]])

-- ------------------------------------------------------------------------- }}}
-- {{{ Resize buffers.

keymap('n', '<localleader>h', [[<cmd>vertical resize -1<cr>]])
keymap('n', '<localleader>j', [[<cmd>resize +1<cr>]])
keymap('n', '<localleader>k', [[<cmd>resize -1<cr>]])
keymap('n', '<localleader>l', [[<cmd>vertical resize +1<cr>]])

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
