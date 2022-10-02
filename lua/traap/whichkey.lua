-- {{{ Lvim builting utility keys

lvim.builtin.which_key.mappings["b"] = { "<cmd>Telescope buffers<cr>", "Buffers" }
lvim.builtin.which_key.mappings["v"] = { "<cmd>vsplit<cr>", "vsplit" }
lvim.builtin.which_key.mappings[" "] = { "<cmd>nohlsearch<cr>", "nohl" }
lvim.builtin.which_key.mappings["w"] = { "<cmd>w<CR>", "Write" }
lvim.builtin.which_key.mappings["q"] = { '<cmd>lua require("user.functions").smart_quit()<CR>', "Quit" }
lvim.builtin.which_key.mappings["/"] = { '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', "Comment" }
lvim.builtin.which_key.mappings["c"] = { "<cmd>Bdelete!<CR>", "Close Buffer" }
lvim.builtin.which_key.mappings["gy"] = "Link"

-- ------------------------------------------------------------------------- }}}
-- {{{ a - Alpha

lvim.builtin.which_key.mappings["a"] = {
  name = "Alpha",
  a = { "<cmd>Alpha<cr>", "Display Alpha Page" },
}

  -- ------------------------------------------------------------------------- }}}
-- {{{ b - Buffer adjustments.

lvim.builtin.which_key.mappings["b"] = {
  name = "Buffers",
  h = { [[<cmd>vertical resize -1<cr>]], "Vertical resize -1." },
  j = { [[<cmd>resize +1<cr>]], "Horizontal resize +1.", "Resize +1" },
  k = { [[<cmd>resize -1<cr>]], "Horizontal resize -1." },
  l = { [[<cmd>vertical resize +1<cr>]], "Vertical resize +1." },
  x = { [[<cmd>w<cr><cmd>luafile %<cr><cmd>echo "Sourced " . @%<cr>]], "Reload lua file." },
}

  -- ------------------------------------------------------------------------- }}}
-- {{{ d - Debug

lvim.builtin.which_key.mappings["d"] = {
	name = "Debug",
	b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Breakpoint" },
	c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
	i = { "<cmd>lua require'dap'.step_into()<cr>", "Into" },
	o = { "<cmd>lua require'dap'.step_over()<cr>", "Over" },
	O = { "<cmd>lua require'dap'.step_out()<cr>", "Out" },
	r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Repl" },
	l = { "<cmd>lua require'dap'.run_last()<cr>", "Last" },
	u = { "<cmd>lua require'dapui'.toggle()<cr>", "UI" },
	x = { "<cmd>lua require'dap'.terminate()<cr>", "Exit" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ f - Find

lvim.builtin.which_key.mappings["f"] = {
	name = "Find",
	C = { "<cmd>Telescope commands<cr>", "Commands" },
	F = { "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>", "Media" },
	H = { "<cmd>Telescope highlights<cr>", "Highlights" },
	M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
	R = { "<cmd>Telescope registers<cr>", "Registers" },
	b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
	c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
	f = { "<cmd>Telescope find_files<cr>", "Find files" },
	h = { "<cmd>Telescope help_tags<cr>", "Help" },
	k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
	l = { "<cmd>Telescope resume<cr>", "Last Search" },
	r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
	s = { "<cmd>Telescope grep_string<cr>", "Find String" },
	t = { "<cmd>Telescope live_grep<cr>", "Find Text" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ g - Git

lvim.builtin.which_key.mappings["g"] = {
	name = "Git",
    P = { "<cmd>G pull<cr>", "pull" },
    c = { "<cmd>G commit<cr>", "Commit" },
    d = { "<cmd>G diff<cr>", "Diff" },
    h = { "<cmd>vert bo help fugitive<cr>", "Help" },
    l = { "<cmd>G log<cr>", "Log" },
    p = { "<cmd>G push<cr>", "push" },
    s = { "<cmd>G<cr>", "Status>" },
    u = { "<cmd>call GenerateUmlDiagram()<cr>", "Status" },
	G = {
		name = "Gist",
		a = { "<cmd>Gist -b -a<cr>", "Create Anon" },
		d = { "<cmd>Gist -d<cr>", "Delete" },
		f = { "<cmd>Gist -f<cr>", "Fork" },
		g = { "<cmd>Gist -b<cr>", "Create" },
		l = { "<cmd>Gist -l<cr>", "List" },
		p = { "<cmd>Gist -b -p<cr>", "Create Private" },
	},
	S = {
		name = "Signs",
    R = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
    S = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
    d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Diff", },
    h = { "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", "Undo Stage Hunk", },
    j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
    k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
    p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
    r = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
	},
}

-- ------------------------------------------------------------------------- }}}
-- {{{ l - LSP

lvim.builtin.which_key.mappings["l"] = {
	name = "LSP",
	a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
	c = { "<cmd>lua require('user.lsp').server_capabilities()<cr>", "Get Capabilities" },
	d = { "<cmd>TroubleToggle<cr>", "Diagnostics" },
	w = {
		"<cmd>Telescope lsp_workspace_diagnostics<cr>",
		"Workspace Diagnostics",
	},
	f = { "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", "Format" },
	F = { "<cmd>LspToggleAutoFormat<cr>", "Toggle Autoformat" },
	i = { "<cmd>LspInfo<cr>", "Info" },
	h = { "<cmd>lua require('lsp-inlayhints').toggle()<cr>", "Toggle Hints" },
	H = { "<cmd>IlluminationToggle<cr>", "Toggle Doc HL" },
	I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
	j = {
		"<cmd>lua vim.diagnostic.goto_next({buffer=0})<CR>",
		"Next Diagnostic",
	},
	k = {
		"<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>",
		"Prev Diagnostic",
	},
	v = { "<cmd>lua require('lsp_lines').toggle()<cr>", "Virtual Text" },
	l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
	o = { "<cmd>SymbolsOutline<cr>", "Outline" },
	q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
	r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
	R = { "<cmd>TroubleToggle lsp_references<cr>", "References" },
	s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
	S = {
		"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
		"Workspace Symbols",
	},
	t = { '<cmd>lua require("user.functions").toggle_diagnostics()<cr>', "Toggle Diagnostics" },
	u = { "<cmd>LuaSnipUnlinkCurrent<cr>", "Unlink Snippet" },
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
	o = { "<cmd>only<cr>", "Only this buffer." },
	r = { "<cmd>checkhealth<cr>", "Check health." },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ Disable lvim builtin whichkeys.

lvim.builtin.which_key.mappings[";"] = nil
lvim.builtin.which_key.mappings["c"] = nil
lvim.builtin.which_key.mappings["L"] = nil
lvim.builtin.which_key.mappings["s"] = nil

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
-- {{{ Load whichkey.

local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
	return
end

-- ------------------------------------------------------------------------- }}}
-- {{{ m_mappings

local m_mappings = {
	a = { "<cmd>silent BookmarkAnnotate<cr>", "Annotate" },
	c = { "<cmd>silent BookmarkClear<cr>", "Clear" },
	b = { "<cmd>silent BookmarkToggle<cr>", "Toggle" },
	m = { '<cmd>lua require("harpoon.mark").add_file()<cr>', "Harpoon" },
	["."] = { '<cmd>lua require("harpoon.ui").nav_next()<cr>', "Harpoon Next" },
	[","] = { '<cmd>lua require("harpoon.ui").nav_prev()<cr>', "Harpoon Prev" },
	l = { "<cmd>lua require('user.bfs').open()<cr>", "Buffers" },
	j = { "<cmd>silent BookmarkNext<cr>", "Next" },
	s = { "<cmd>Telescope harpoon marks<cr>", "Search Files" },
	k = { "<cmd>silent BookmarkPrev<cr>", "Prev" },
	S = { "<cmd>silent BookmarkShowAll<cr>", "Prev" },
	-- s = {
	--   "<cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>",
	--   "Show",
	-- },
	x = { "<cmd>BookmarkClearAll<cr>", "Clear All" },
	[";"] = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', "Harpoon UI" },
}

-- ------------------------------------------------------------------------- }}}
-- {{{ Setup and register.

which_key.register(m_mappings, m_opts)

-- ------------------------------------------------------------------------- }}}
