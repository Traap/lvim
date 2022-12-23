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
