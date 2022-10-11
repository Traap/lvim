-- {{{ Leader and maplocalleader

local keymap = require('traap.helpers').keymap


lvim.leader = "space"
vim.g.maplocalleader = [[,]]

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
-- keymap('n', '<c-g>', '<cmd>cd $GITHOME<cr>')

-- Quit now
-- keymap('n', '<c-q>', '<cmd>qall!<cr>')

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
-- {{{ Shell commands.

-- Execute the current line of test as a shell command.
keymap('n', '<localleader>E', [[0mMvg_"ky :exec "r!" getreg("k")<cr>]])
keymap('v', '<localleader>E', [["ky :exec "r!" getreg("k")<cr>]])

-- ------------------------------------------------------------------------- }}}
-- -- {{{ NvimTree

-- keymap('n', '<c-n>', '<cmd>NvimTreeToggle<cr>')

-- ------------------------------------------------------------------------- }}}
