vim.api.nvim_create_autocmd({ "BufEnter", "ColorScheme" },{
  pattern = { "" },
  callback = function()
    vim.cmd [[
      highlight clear Folded
      highlight ColorColumn ctermbg=18
    ]]
  end
})

-- vim.api.nvim_create_autocmd({ 'Bufread', 'BufNewFile' }, {
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
