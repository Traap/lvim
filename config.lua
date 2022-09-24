-- {{{ lvim is the global options object.
--
-- Linters should be filled in as strings with either a global executable or
-- a path to an executable.
--
-- ------------------------------------------------------------------------- }}}
-- {{{ lvim builtin options.

lvim.builtin.alpha.active = false
lvim.builtin.terminal.active = false

-- ------------------------------------------------------------------------- }}}
-- {{{ General

lvim.colorscheme = "onedarker"
lvim.format_on_save = true
lvim.leader = "space"
lvim.line_wrap_cursor_movement = false
lvim.log.level = "warn"
lvim.transparent_window = true

-- ------------------------------------------------------------------------- }}}
-- {{{ Unmap default default LunarVim keys.

-- vim.keys.normal_mode.del("v", "<C-k>")
-- vim.keys.normal_mode.del("v", "<C-j>")
lvim.keys.normal_mode["<leader>gs"] = ""
lvim.keys.normal_mode["<leader>gC"] = ""
lvim.keys.normal_mode["<leader>gc"] = ""

-- ------------------------------------------------------------------------- }}}
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

-- Author: Karl Yngve Lervåg
--    See: https://github.com/lervag/dotnvim

-- Close current fold when open. Always open next fold.
lvim.keys.normal_mode['zj'] = 'zcjzOzz'

-- Close current fold when open. Always open previous fold.
lvim.keys.normal_mode['zk'] = 'zckzOzz'


-- Copy & Paste
lvim.keys.normal_mode["<leader>cc"] = 'ggVGg_"+y'
lvim.keys.normal_mode["<leader>cv"] = '"+p'

-- Show only this buffer.
lvim.keys.normal_mode["<leader>oo"] = '<cmd>only<cr>'

-- Clear highlights.
lvim.keys.normal_mode["<leader> "] = '<cmd>nohlsearch<cr>'

-- ------------------------------------------------------------------------- }}}
-- {{{ Fugitive

lvim.keys.normal_mode["<leader>gL"] = "<cmd>G log<cr>"
lvim.keys.normal_mode["<leader>gP"] = "<cmd>G pull<cr>"
lvim.keys.normal_mode["<leader>gc"] = "<cmd>G commit<cr>"
lvim.keys.normal_mode["<leader>gd"] = "<cmd>G diff<cr>"
lvim.keys.normal_mode["<leader>gh"] = "<cmd>vert bo help fugitive<cr>"
lvim.keys.normal_mode["<leader>gp"] = "<cmd>G push<cr>"
lvim.keys.normal_mode["<leader>gs"] = "<cmd>G<cr>"
lvim.keys.normal_mode["<leader>gu"] = "<cmd>call GenerateUmlDiagram()<cr>"

-- ------------------------------------------------------------------------- }}}
-- {{{ User Config for predefined plugins

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"

lvim.builtin.bufferline.active = false

lvim.builtin.notify.active = true
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.tabnine = { active = false }
lvim.builtin.terminal.active = true

-- ------------------------------------------------------------------------- }}}
-- {{{ Treesitter

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "c_sharp",
  "comment",
  "cpp",
  "css",
  "dockerfile",
  "graphql",
  "html",
  "http",
  "json",
  "latex",
  "lua",
  "markdown",
  "pascal",
  "ruby",
  "rust",
  "sql",
  "vim",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- ------------------------------------------------------------------------- }}}
-- {{{ Plugins

lvim.plugins = {
  { "aklt/plantuml-syntax" },

  { "christoomey/vim-tmux-navigator" },
  { "christoomey/vim-tmux-runner" },

  { "dkarter/bullets.vim" },

  { "f3fora/cmp-spell" },
  { "folke/trouble.nvim", cmd = "TroubleToggle", },

  { "hrsh7th/cmp-calc" },
  { "hrsh7th/cmp-cmdline" },

  { "junegunn/fzf" },
  { "junegunn/fzf.vim" },
  { "junegunn/vim-easy-align" },

  { "kovetskiy/sxhkd-vim" },
  { "kylechui/nvim-surround" },

  { "lervag/vimtex" },
  { "lervag/wiki-ft.vim" },
  { "lervag/wiki.vim" },
  { "lunarvim/colorschemes" },

  { "mechatroner/rainbow_csv" },

  { "tpope/vim-bundler" },
  { "tpope/vim-characterize" },
  { "tpope/vim-commentary" },
  { "tpope/vim-dispatch" },
  { "tpope/vim-endwise" },
  { "tpope/vim-fugitive" },
  { "tpope/vim-rails" },
  { "tpope/vim-repeat" },
  { "tpope/vim-unimpaired" },

  { "triglav/vim-visual-increment" },
  { "tweekmonster/startuptime.vim" },

  { "vim-utils/vim-most-minimal-folds" },

  { "xiyaowong/nvim-transparent" },

  { "RRethy/nvim-base16" },

  { "Traap/vim-bundle-abbreviate" },
  { "Traap/vim-bundle-autocmd" },
  { "Traap/vim-bundle-fzf" },
  { "Traap/vim-bundle-plantuml" },
  { "Traap/vim-bundle-rainbow" },
  { "Traap/vim-bundle-tmux-runner" },
  { "Traap/vim-bundle-vimtex" },
  { "Traap/vim-bundle-vimwiki" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ My options.

vim.opt.background = "dark"
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
-- {{{ zymurgy : The last word in 1980 Webster's new collegiate dictionary.

-- Plugins listed in this file require minimal setup.

local o0, lightbulb = pcall(require, 'nvim-lightbulb')
if o0 then
  lightbulb.setup({ autocmd = { enabled = true } })
end

local o1, trouble = pcall(require, 'trouble')
if o1 then
  trouble.setup({})
end

local o2, gitsigns = pcall(require, 'gitsigns')
if o2 then
  gitsigns.setup()
end

local o3, surround = pcall(require, 'nvim-surround')
if o3 then
  surround.setup()
end

-- local o4, notify = pcall(require, 'notify')
-- if o4 then
--   notify.setup({
--     background_colour = "#000000",
--   })
-- end

local o5, _ = pcall(require, 'base16-colorscheme')
if o5 then
  vim.cmd('colorscheme base16-tokyo-night-terminal-storm')
end

local o6, transparent = pcall(require, 'transparent')
if o6 then
  transparent.setup({
    enable = true,
    extra_gropus = {
      'Comment',
      'Folded',
      'Normal',
    },
    exclude = {
      'EndOfBuffer',
      'NonText',
    }
  })
end

vim.api.nvim_create_autocmd('ColorScheme', { command = 'highlight clear Folded' })

-- ------------------------------------------------------------------------- }}}
