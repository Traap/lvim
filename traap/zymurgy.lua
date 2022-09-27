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

local o5, transparent = pcall(require, 'transparent')
if o5 then
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
