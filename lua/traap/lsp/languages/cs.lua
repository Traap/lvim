local  ok, dap = pcall(require, 'dap')
if not ok then return end

-- // https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#Dotnet
dap.adapters.coreclr = {
  type = 'executable',
  command = os.getenv('HOME') .. '/.local/share/nvim/mason/packages/netcorebg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input(os.getenv('HOME') .. '.local/share/nvim/packages/netcorebg/build', 'netcorebg', 'netcorebg')
    end,
  },
}
