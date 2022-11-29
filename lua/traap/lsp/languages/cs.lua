local  ok, dap = pcall(require, 'dap')
if not ok then return end

-- // https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#Dotnet

--[[ local command = os.getenv('HOME') .. '/.local/share/nvim/mason/packages/netcoredbg/netcoredbg' ]]
local command = 'netcoredbg'
local dbgdll = vim.fn.getcwd() .. '/bin/Debug/net7.0/'

dap.adapters.coreclr = {
  type = 'executable',
  command = command,
  args = {'--interpreter=vscode'}
}

dap.set_log_level('TRACE')

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "Launch file",
    request = "launch",
    program = function()
      return vim.fn.input('Path to dll', dbgdll, 'file')
    end,
  },
}
