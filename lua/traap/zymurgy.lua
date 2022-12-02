-- zymurgy : The last word in 1980 Webster's new collegiate dictionary.

-- {{{ Experimental configuration items.

local ndvt, dvt = pcall(require, 'nvim-dap-virtual-text')
if ndvt then
  dvt.setup()
end

local  ngo, go = pcall(require, 'dap-go')
if ngo then
  go.setup()
end

local nui, ui = pcall(require, 'dapui')
if nui then
  ui.setup()
end

-- ------------------------------------------------------------------------- }}}
-- {{{ autocmd experiements.

-- vim.api.nvim_create_autocmd({ 'FileType' }, {
--   pattern = {
--     'md',
--     'markdown',
--     'wiki',
--   },
--   callback = function()
--     vim.opt.foldlevelstart = 2
--     vim.opt.filetype='wiki'
--     vim.cmd [[ :WikiEnable ]]
--   end
-- })

-- ------------------------------------------------------------------------- }}}
