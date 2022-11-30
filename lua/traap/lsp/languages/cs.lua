-- // https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#Dotnet

local  ok, dap = pcall(require, 'dap')
if not ok then return end

dap.adapters.coreclr = {
  type = 'executable',
  command = 'netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = 'coreclr',
    request = 'launch',
    name = 'Launch file',
    program = function()
       return vim.fn.input('Dbg:', vim.fn.getcwd() .. '/bin/Debug/net7.0/', 'file')
    end,
  },
}
