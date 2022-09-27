-- {{{ Easy align

lvim.keys.normal_mode["ga"] = "<Plug>(EasyAlign)"
lvim.keys.normal_mode["<bar>"] = "gaip*<bar>"
lvim.keys.normal_mode["<leader>0"] = "gaip*,"
lvim.keys.normal_mode["<leader>1"] = "gaip=,"
lvim.keys.normal_mode["<leader>2"] = "gaip=<space>,"

-- ------------------------------------------------------------------------- }}}
-- {{{ General keybindings.

-- Save all files
lvim.keys.normal_mode["<F2>"] = "<cmd>wall<cr>"

-- Move to $GITHOME
lvim.keys.normal_mode["<C-g>"] = "<cmd>cd $GITHOME<cr>"

-- Toggle NvimTree
lvim.keys.normal_mode["<C-n>"] = "<cmd>NvimTreeToggle<cr>"

-- Quit now without saving.
lvim.keys.normal_mode["<C-q>"] = "<cmd>qall!<cr>"

-- sxhkd filetype
lvim.keys.normal_mode["<C-s>"] = "<cmd>set filetype=sxhkd<cr>"

-- Delete the current line.
lvim.keys.normal_mode["-"] = "dd"

-- Select (charwise) the contensts of the current line, excluding indentation.
lvim.keys.normal_mode["vv"] = "^vg_"

-- Select entire buffer.
lvim.keys.normal_mode["vaa"] = "ggvGg_"
lvim.keys.normal_mode["Vaa"] = "ggVG'"

-- Show only this buffer.
lvim.keys.normal_mode["<leader>oo"] = '<cmd>only<cr>'

-- Clear highlights.
lvim.keys.normal_mode["<leader> "] = '<cmd>nohlsearch<cr>'

-- ------------------------------------------------------------------------- }}}
-- {{{ Folding commands.

-- Author: Karl Yngve Lervåg
--    See: https://github.com/lervag/dotnvim

-- Close all fold exceptthe current one.
lvim.keys.normal_mode['zv'] = 'zMzvzz'

-- Close current fold when open. Always open next fold.
lvim.keys.normal_mode['zj'] = 'zcjzOzz'

-- Close current fold when open. Always open previous fold.
lvim.keys.normal_mode['zk'] = 'zckzOzz'

-- ------------------------------------------------------------------------- }}}
-- {{{ Copy and Paste

lvim.keys.normal_mode["<localleader>cc"] = 'ggVGg_"+y'
lvim.keys.visual_mode["<localleader>cc"] = '"+y'
lvim.keys.normal_mode["<localleader>cv"] = '"+p'

-- ------------------------------------------------------------------------- }}}
-- {{{ KVJ and shell commands.

-- KJV bindings.
lvim.keys.normal_mode["gk"] = [[0mMvg_"ky :exec "r!kjv -b -w 65 -d" getreg("k")<cr>]]
lvim.keys.visual_mode["gk"] = [["ky :exec "r!kjv -b -w 65 -d" getreg("k")<cr>]]

-- Execute the current line of test as a shell command.
lvim.keys.normal_mode["<localleader>E"] = [[0mMvg_"ky :exec "r!" getreg("k")<cr>]]
lvim.keys.visual_mode["<localleader>E"] = [["ky :exec "r!" getreg("k")<cr>]]

-- Display help in a vertical buffer.
lvim.keys.normal_mode["<leader>HH"] = "<cmd>vert bo help<cr>"
lvim.keys.visual_mode["<leader>HH"] = [["ky :exec "vert bo help" getreg("k")<cr>]]

-- ------------------------------------------------------------------------- }}}
-- {{{ Resize buffers.

lvim.keys.normal_mode["<localleader>h"] = "<cmd>vertical resize -1<cr>"
lvim.keys.normal_mode["<localleader>j"] = "<cmd>resize +1<cr>"
lvim.keys.normal_mode["<localleader>k"] = "<cmd>resize -1<cr>"
lvim.keys.normal_mode["<localleader>l"] = "<cmd>vertical resize +1<cr>"

-- ------------------------------------------------------------------------- }}}
-- {{{ Fugitive

lvim.keys.normal_mode["<localleader>gL"] = "<cmd>G log<cr>"
lvim.keys.normal_mode["<localleader>gP"] = "<cmd>G pull<cr>"
lvim.keys.normal_mode["<localleader>gc"] = "<cmd>G commit<cr>"
lvim.keys.normal_mode["<localleader>gd"] = "<cmd>G diff<cr>"
lvim.keys.normal_mode["<localleader>gh"] = "<cmd>vert bo help fugitive<cr>"
lvim.keys.normal_mode["<localleader>gp"] = "<cmd>G push<cr>"
lvim.keys.normal_mode["<localleader>gs"] = "<cmd>G<cr>"
lvim.keys.normal_mode["<localleader>gu"] = "<cmd>call GenerateUmlDiagram()<cr>"

-- ------------------------------------------------------------------------- }}}
