-- {{{ leader + 1 key

lvim.builtin.which_key.mappings["v"] = { "<cmd>vsplit<cr>", "vsplit" }
lvim.builtin.which_key.mappings[" "] = { "<cmd>nohlsearch<cr>", "nohl" }
lvim.builtin.which_key.mappings["w"] = { "<cmd>w<CR>", "Write" }
lvim.builtin.which_key.mappings["/"] = { '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', "Comment" }
lvim.builtin.which_key.mappings["gy"] = "Link"

lvim.builtin.which_key.mappings["q"] = { "<cmd>Bdelete!<CR>", "Close Buffer" }
lvim.builtin.which_key.mappings["Q"] = { "<cmd>bufdo<cmd>Bdelete!<CR>", "Close Buffer" }

-- ------------------------------------------------------------------------- }}}
-- {{{ G - Gist

lvim.builtin.which_key.mappings["G"] = {
  name = "Gist",
  a = { "<cmd>Gist -b -a<cr>", "Create Anon" },
  d = { "<cmd>Gist -d<cr>", "Delete" },
  f = { "<cmd>Gist -f<cr>", "Fork" },
  g = { "<cmd>Gist -b<cr>", "Create" },
  l = { "<cmd>Gist -l<cr>", "List" },
  p = { "<cmd>Gist -b -p<cr>", "Create Private" },
}

  -- ------------------------------------------------------------------------- }}}
-- {{{ H - Help

lvim.builtin.which_key.mappings["H"] = {
  name = "Help",
    H = { "<cmd>silent vert bo help<cr>", "Help in Vertical Split" },
}

  -- ------------------------------------------------------------------------- }}}
-- {{{ L - LSP

lvim.builtin.which_key.mappings["L"] = {
  name = "LSP",
  F = { "<cmd>LspToggleAutoFormat<cr>", "Toggle Autoformat" },
  H = { "<cmd>IlluminationToggle<cr>", "Toggle Doc HL" },
  I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
  R = { "<cmd>TroubleToggle lsp_references<cr>", "References" },
  S = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols", },
  a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
  c = { "<cmd>lua require('user.lsp').server_capabilities()<cr>", "Get Capabilities" },
  d = { "<cmd>TroubleToggle<cr>", "Diagnostics" },
  f = { "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", "Format" },
  h = { "<cmd>lua require('lsp-inlayhints').toggle()<cr>", "Toggle Hints" },
  i = { "<cmd>LspInfo<cr>", "Info" },
  j = { "<cmd>lua vim.diagnostic.goto_next({buffer=0})<CR>", "Next Diagnostic", },
  k = { "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", "Prev Diagnostic", },
  l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
  o = { "<cmd>SymbolsOutline<cr>", "Outline" },
  q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
  r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
  s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
  t = { '<cmd>lua require("user.functions").toggle_diagnostics()<cr>', "Toggle Diagnostics" },
  u = { "<cmd>LuaSnipUnlinkCurrent<cr>", "Unlink Snippet" },
  v = { "<cmd>lua require('lsp_lines').toggle()<cr>", "Virtual Text" },
  w = { "<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics", },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ P - Packer

lvim.builtin.which_key.mappings["P"] = {
  name = "Packer",
  c = { "<cmd>PackerCompile<cr>", "Compile" },
  i = { "<cmd>PackerInstall<cr>", "Install" },
  s = { "<cmd>PackerSync<cr>", "Sync" },
  S = { "<cmd>PackerStatus<cr>", "Status" },
  u = { "<cmd>PackerUpdate<cr>", "Update" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ V - Linewise reselection of what you just pasted

lvim.builtin.which_key.mappings["V"] = {
  name = "Reselection",
  V = { "V`]", "Pasted Block" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ S - Gitsigns

lvim.builtin.which_key.mappings["S"] = {
  name = "Signs",
  R = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
  S = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
  d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Diff", },
  h = { "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", "Undo Stage Hunk", },
  j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
  k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
  p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
  r = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ T - Terminal

lvim.builtin.which_key.mappings["T"] = {
  name = "Terminal",
  ["1"] = { ":1ToggleTerm<cr>", "1" },
  ["2"] = { ":2ToggleTerm<cr>", "2" },
  ["3"] = { ":3ToggleTerm<cr>", "3" },
  ["4"] = { ":4ToggleTerm<cr>", "4" },
  f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
  h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
  n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" },
  p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
  t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
  u = { "<cmd>lua _NCDU_TOGGLE()<cr>", "NCDU" },
  v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ a - Alpha

lvim.builtin.which_key.mappings["a"] = {
  name = "Alpha",
  a = { "<cmd>Alpha<cr>", "Display Alpha Page" },
  r = { "<cmd>VtrReattachRunner<cr>", "Reattach runner" },
}

  -- ------------------------------------------------------------------------- }}}
-- {{{ b - Buffer adjustments.

lvim.builtin.which_key.mappings["b"] = {
  name = "Buffers",
  h = { [[<cmd>vertical resize -1<cr>]], "Vertical resize -1." },
  j = { [[<cmd>resize +1<cr>]], "Horizontal resize +1." },
  k = { [[<cmd>resize -1<cr>]], "Horizontal resize -1." },
  l = { [[<cmd>vertical resize +1<cr>]], "Vertical resize +1." },
  x = { [[<cmd>w<cr><cmd>luafile %<cr><cmd>echo "Sourced " . @%<cr>]], "Reload lua file." },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ c - Copy & Paste

lvim.builtin.which_key.mappings["c"] = {
  name = "Copy & Paste",
  c = { 'ggVGg_"+y', "Yank buffer" },
  r = { "<cmd>VtrClearRunner<cr>", "Clear runner" },
  v = { '"+p', "Paste buffer" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ d - Debug

lvim.builtin.which_key.mappings["d"] = {
  name = "Debug",
  O = { "<cmd>lua require'dap'.step_out()<cr>", "Out" },
  b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Breakpoint" },
  c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
  i = { "<cmd>lua require'dap'.step_into()<cr>", "Into" },
  l = { "<cmd>lua require'dap'.run_last()<cr>", "Last" },
  o = { "<cmd>lua require'dap'.step_over()<cr>", "Over" },
  r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Repl" },
  u = { "<cmd>lua require'dapui'.toggle()<cr>", "UI" },
  x = { "<cmd>lua require'dap'.terminate()<cr>", "Exit" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ f - Find

lvim.builtin.which_key.mappings["f"] = {
  name = "Find",
    C = { '<cmd>Telescope commands<cr>', 'Command' },
    F = { '<cmd>Telescope media_files<cr>', 'Media files' },
    M = { '<cmd>Telescope man_pages<cr>', 'Man Pages' },
    O = { '<cmd>Telescope oldfiles<cr>', 'Recent File' },
    R = { '<cmd>Telescope registers<cr>', 'Registers' },
    S = { '<cmd>Telescope colorscheme<cr>', 'Colorscheme' },
    b = { '<cmd>Telescope buffers<cr>', "Buffers" },
    c = { "<cmd>VtrFlushCommand<cr>", "Flush runner" },
    d = { '<cmd>Telescope diagnostics<cr>', 'Diagnostics' },
    f = { '<cmd>Telescope find_files<cr>', "Find files" },
    g = { '<cmd>Telescope live_grep<cr>', 'Find Text' },
    h = { '<cmd>Telescope help_tags<cr>', "Help" },
    i = { "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>", 'Media' },
    k = { '<cmd>Telescope keymaps<cr>', 'Keymaps' },
    l = { '<cmd>Telescope resume<cr>', 'Last Search' },
    o = { '<cmd>Telescope oldfiles<cr>', 'Old files' },
    p = { '<cmd>Telescope find_files cwd=~/.local/share/nvim/site/pack/packer<cr>', '' },
    r = { "<cmd>VtrFocusRunner<cr>", "Focus runner" },
    v = { '<cmd>Telescope find_files cwd=~/git/nvim<cr>', 'NeoVim' },
}
-- ------------------------------------------------------------------------- }}}
-- {{{ g - git

lvim.builtin.which_key.mappings["g"] = {
  name = "Git",
  C = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
  P = { "<cmd>G pull<cr>", "pull" },
  b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  c = { "<cmd>G commit<cr>", "Commit" },
  d = { "<cmd>G diff<cr>", "Diff" },
  h = { "<cmd>vert bo help fugitive<cr>", "Help" },
  l = { "<cmd>G log<cr>", "Log" },
  o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
  p = { "<cmd>G push<cr>", "push" },
  s = { "<cmd>G<cr>", "Status>" },
  u = { "<cmd>call GenerateUmlDiagram()<cr>", "Status" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ k - kill runner

lvim.builtin.which_key.mappings["k"] = {
  name = "Tmux",
  k = { [[^"kyg$<cmd>exec 'r!kjv -b -d -w 65' getreg('k')<cr>]], "Get Verse" },
  f = { [[<cmd>v)3><cr>]], "Format Verse" },
  r = { "<cmd>VtrKillRunner<cr>", "Kill runner" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ l - VimTex

lvim.builtin.which_key.mappings["l"] = {
  name = "VimTex",
  C = { "<Plug>(vimtex-clean-full)", "Full Clean" },
  G = { "<Plug>(vimtex-status-all)", "Status All" },
  I = { "<Plug>(vimtex-info-full)", "Info full" },
  K = { "<Plug>(vimtex-stop-all)", "Stop all" },
  L = { "<Plug>(vimtex-compile-selected)", "Compile selected file" },
  T = { "<Plug>(vimtex-toc-toggle)", "Toggle TOC" },
  X = { "<Plug>(vimtex-reload-state)", "Reload state" },
  a = { "<Plug>(vimtex-context-menu)", "Context menu" },
  c = { "<Plug>(vimtex-clean-full)", "Clean" },
  e = { "<Plug>(vimtex-error)", "Errors" },
  g = { "<Plug>(vimtex-status)", "Status" },
  i = { "<Plug>(vimtex-info)", "Info" },
  k = { "<Plug>(vimtex-stop)", "Stop" },
  l = { "<Plug>(vimtex-compile)", "Compile" },
  m = { "<Plug>(vimtex-impas-list)", "imaps list" },
  o = { "<Plug>(vimtex-compile-output)", "Compile output" },
  q = { "<Plug>(vimtex-log)", "Log" },
  s = { "<Plug>(vimtex-toggle-main)", "Toggle Main" },
  t = { "<Plug>(vimtex-toc_open)", "Open TOC" },
  v = { "<Plug>(vimtex-view)", "View" },
  x = { "<Plug>(vimtex-reload)", "Reload" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ n - NvimTree

lvim.builtin.which_key.mappings["n"] = {
  name = "NvimTree",
  f = { "<cmd>NvimTreeFindFile<cr>", "Find in Tree" },
  r = { "<cmd>NvimTreeRefresh<cr>", "Refresh Tree" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ o - Only

lvim.builtin.which_key.mappings["o"] = {
  name = "Only",
  h = { '<cmd>chechhealth<cr>', "Check health" },
  o = { "<cmd>only<cr>", "Only this buffer." },
  r = { "<cmd>checkhealth<cr>", "Check health." },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ r - Replace

lvim.builtin.which_key.mappings["r"] = {
  name = "Replace",
  r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ s - Split & Sorts

lvim.builtin.which_key.mappings["s"] = {
  name = "Split & Sorts",
  c = { "<cmd>VtrSendCommandToRunner<cr>", "Send command" },
  f = { "<cmd>VtrSendFile!<cr>", "Send command" },
  l = { "<cmd>VtrSendLinesToRunner<cr>", "Send command" },
  h = { "<cmd>split<cr>", "Horizonal Split" },
  v = { "<cmd>vsplit<cr>", "Vertical Split" },

  -- Sort a list followed by a blank line.
  s = { "0v)k$:sort<cr>", "Acronym Sort" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ t - Terminal & Tmux

lvim.builtin.which_key.mappings["t"] = {
  name = "Tmux",
  F = { '<cmd>VtrFocusRunner<cr>', 'Focus Runner' },
  O = { '<cmd>VtrReorientRunner<cr>', 'Reorient Runner' },
  R = { '<cmd>VtrResizeRunner<cr>', 'Resize Runner' },
  S = { '<cmd>VtrSendFile!<cr>', 'Send File' },
  a = { '<cmd>VtrReattachRunner<cr>', 'Reattah Runner' },
  c = { '<cmd>VtrClearRunner<cr>', 'Clear Runner' },
  f = { '<cmd>VtrFlushCommand<cr>', 'Flush Runner' },
  k = { '<cmd>VtrKillRunner<cr>', 'Kill Runner' },
  l = { '<cmd>VtrSendLinesToRunner<cr>', 'Sent Lines' },
  o = { "<cmd>VtrOpenRunner {'orientation': 'h', 'percentage': 50}<cr>", 'Open Runner' },
  s = { '<cmd>VtrSendCommandToRunner<cr>', 'Send Command' },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ w - Wiki & Whitespace

lvim.builtin.which_key.mappings["w"] = {
  name = "Witespace",
  a = { "<cmd>edit /home/traap/git/wiki/journal/Acronyms.md<cr>", 'Wiki Acronyms' },
  b = { "<cmd>edit /home/traap/git/wiki/journal/Backlog.md<cr>", 'Wiki Backlog' },
  e = { '<cmd>WikiExport<cr>', 'Wiki Export' },
  p = { '<cmd>WikiFzfPages<cr>', 'Wiki FZF Pages' },
  r = { '<cmd>%s/\r//g<cr>', "Strip Carriage Return" },
  s = { "mz<cmd>%s//\\s\\+$////<cr><cmd>let @/=''<cr>`z", "Strip Trailing Whitespace" },
  Z = { '<cmd>WikiFzfTags<cr>', 'Wiki FZF Tags' },
  v = { "<cmd>execute !g.traap_pdf_viewer g.wiki_root/printed/api.expand('%:p:t:r').pdf &<cr>", 'PDF Viwer' },
  z = { '<cmd>w<cr>', 'Write File' },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ Disable lvim builtin which_keys.

-- lvim.builtin.which_key.mappings[";"] = nil
-- lvim.builtin.which_key.mappings["c"] = nil
-- lvim.builtin.which_key.mappings["L"] = nil
-- lvim.builtin.which_key.mappings["s"] = nil

-- ------------------------------------------------------------------------- }}}
-- {{{ Load which_key.

local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

-- ------------------------------------------------------------------------- }}}
-- {{{ gn_opts

local gn_opts = {
  mode = "n", -- NORMAL mode
  prefix = "g",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local gv_opts = {
  mode = "v", -- NORMAL mode
  prefix = "g",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

-- ------------------------------------------------------------------------- }}}
-- {{{ gn_mappings and gv_mappings

local gn_mappings = {
  k = {[[0mMvg_"ky :exec "r!kjv -b -w 65 -d" getreg("k")<cr>]], "Get KJV verse" },
}

local gv_mappings = {
  k = {[["ky :exec "r!kjv -b -w 65 -d" getreg("k")<cr>]], "Get KJV verse" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ hn_opts

local hn_opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local hv_opts = {
  mode = "v", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

-- ------------------------------------------------------------------------- }}}
-- {{{ hn_mappings and hv_mappings

local hn_mappings = {
  ["hh"] = {[[<cmd>vert bo help<cr>]], "Help in vertical split" },
}

local hv_mappings = {
  ["hh"] = {[["ky :exec "vert bo help" getreg("k")<cr>]], "Help vertical lookup." },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ m_opts

local m_opts = {
  mode = "n", -- NORMAL mode
  prefix = "m",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

-- ------------------------------------------------------------------------- }}}
-- {{{ m_mappings

local m_mappings = {
  [","] = { '<cmd>lua require("harpoon.ui").nav_prev()<cr>', "Harpoon Prev" },
  ["."] = { '<cmd>lua require("harpoon.ui").nav_next()<cr>', "Harpoon Next" },
  [";"] = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', "Harpoon UI" },
  m = { '<cmd>lua require("harpoon.mark").add_file()<cr>', "Harpoon" },
  s = { "<cmd>Telescope harpoon marks<cr>", "Search Files" },
  v = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', "Harpoon" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ Register.

which_key.register(m_mappings, m_opts)
which_key.register(gn_mappings, gn_opts)
which_key.register(gv_mappings, gv_opts)
which_key.register(hn_mappings, hn_opts)
which_key.register(hv_mappings, hv_opts)

-- ------------------------------------------------------------------------- }}}
