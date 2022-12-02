local  ok, which_key = pcall(require, "which-key")
if not ok then return end

local mappings = {
  W = {
    name = "Notebook",
    a = { "<cmd>edit /home/traap/git/wiki/journal/Acronyms.md<cr>", 'Wiki Acronyms' },
    b = { "<cmd>edit /home/traap/git/wiki/journal/Backlog.md<cr>", 'Wiki Backlog' },
    e = { '<cmd>WikiExport<cr>', 'Wiki Export' },
    p = { '<cmd>WikiFzfPages<cr>', 'Wiki FZF Pages' },
    r = { '<cmd>%s/\r//g<cr>', "Strip Carriage Return" },
    s = { "mz<cmd>%s//\\s\\+$////<cr><cmd>let @/=''<cr>`z", "Strip Trailing Whitespace" },
    Z = { '<cmd>WikiFzfTags<cr>', 'Wiki FZF Tags' },
    v = { "<cmd>execute !g.traap_pdf_viewer g.wiki_root/printed/api.expand('%:p:t:r').pdf &<cr>", 'PDF Viwer' },
    z = { '<cmd>w<cr>', 'Write File' },
  },
}

local opts = require('traap.constants').normal_opts
which_key.register(mappings, opts)
