-- {{{ Files ignore pattern.

lvim.builtin.telescope.defaults.file_ignore_patterns = {
	".git/",
	"target/",
	"docs/",
	"vendor/*",
	"%.lock",
	"__pycache__/*",
	"%.sqlite3",
	"%.ipynb",
	"node_modules/*",
	-- "%.jpg",
	-- "%.jpeg",
	-- "%.png",
	"%.svg",
	"%.otf",
	"%.ttf",
	"%.webp",
	".dart_tool/",
	".github/",
	".gradle/",
	".idea/",
	".settings/",
	".vscode/",
	"__pycache__/",
	"build/",
	"env/",
	"gradle/",
	"node_modules/",
	"%.pdb",
	"%.dll",
	"%.class",
	"%.exe",
	"%.cache",
	"%.ico",
	"%.pdf",
	"%.dylib",
	"%.jar",
	"%.docx",
	"%.met",
	"smalljre_*/*",
	".vale/",
	"%.burp",
	"%.mp4",
	"%.mkv",
	"%.rar",
	"%.zip",
	"%.7z",
	"%.tar",
	"%.bz2",
	"%.epub",
	"%.flac",
	"%.tar.gz",
}

-- ------------------------------------------------------------------------- }}}
-- {{{ Telescope keymaps

local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
	-- for input mode
	i = {
		["<C-j>"] = actions.move_selection_next,
		["<C-k>"] = actions.move_selection_previous,

		["<C-b>"] = actions.results_scrolling_up,
		["<C-f>"] = actions.results_scrolling_down,

		["<C-c>"] = actions.close,

		["<CR>"] = actions.select_default,
		["<C-s>"] = actions.select_horizontal,
		["<C-v>"] = actions.select_vertical,
		["<C-t>"] = actions.select_tab,

		["<c-d>"] = require("telescope.actions").delete_buffer,

		["<Tab>"] = actions.close,
		["<S-Tab>"] = actions.close,
		-- ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
		["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
		["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
		["<C-l>"] = actions.complete_tag,
		["<C-h>"] = actions.which_key, -- keys from pressing <C-h>
		["<esc>"] = actions.close,
	},

	-- for normal mode
	n = {
		["<esc>"] = actions.close,
		["<CR>"] = actions.select_default,
		["<C-x>"] = actions.select_horizontal,
		["<C-v>"] = actions.select_vertical,
		["<C-t>"] = actions.select_tab,
		["<C-b>"] = actions.results_scrolling_up,
		["<C-f>"] = actions.results_scrolling_down,

		["<Tab>"] = actions.close,
		["<S-Tab>"] = actions.close,
		["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
		["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

		["j"] = actions.move_selection_next,
		["k"] = actions.move_selection_previous,
		["H"] = actions.move_to_top,
		["M"] = actions.move_to_middle,
		["L"] = actions.move_to_bottom,
		["q"] = actions.close,
		["dd"] = require("telescope.actions").delete_buffer,
		["s"] = actions.select_horizontal,
		["v"] = actions.select_vertical,
		["t"] = actions.select_tab,

		["gg"] = actions.move_to_top,
		["G"] = actions.move_to_bottom,

		["<C-u>"] = actions.preview_scrolling_up,
		["<C-d>"] = actions.preview_scrolling_down,

		["<PageUp>"] = actions.results_scrolling_up,
		["<PageDown>"] = actions.results_scrolling_down,

		["?"] = actions.which_key,
	},
}

-- ------------------------------------------------------------------------- }}}
-- {{{ Telescope extensions


local  ok, telescope = pcall(require, 'telescope')
if not ok then return end

local extensions = {
  'fzf',
  'media_files',
}

for _, name in ipairs(extensions) do
  telescope.load_extension(name)
end
-- ------------------------------------------------------------------------- }}}
