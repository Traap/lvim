local  ok, dap = pcall(require, 'dap')
if not ok then return end

-- // https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#Dotnet
dap.adapters.coreclr = {
  type = 'executable',
  command = os.getenv('HOME') .. '/.local/share/nvim/mason/packages/netcoredbg/netcoredbg',
  args = {'--interpreter=cli'}
}

dap.set_log_level('TRACE')

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "Launch file",
    request = "launch",
    program = function()
      return vim.fn.input(
        'Path to dll',
        vim.fn.getcwd() .. '/bin/Debug/net7.0',
        'file'
      )
    end,
  },
}
