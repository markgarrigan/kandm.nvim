local dap = require('dap')
require('dap').adapters['pwa-node'] = {
  type = 'server',
  host = 'localhost',
  port = '${port}',
  executable = {
    command = 'node',
    args = {
      require('mason-registry').get_package('js-debug-adapter'):get_install_path()
        .. '/js-debug/src/dapDebugServer.js',
      '${port}',
    },
  },
}

for _, language in ipairs({ 'typescript', 'javascript'}) do
  if not dap.configurations[language] then
    dap.configurations[language] = {
      {
        type = 'pwa-node',
        request = 'launch',
        name = 'Launch file',
        program = '${file}',
        cwd = '${workspaceFolder}',
      },
      {
        type = 'pwa-node',
        request = 'attach',
        name = 'Attach',
        processId = require('dap.utils').pick_process,
        cwd = '${workspaceFolder}',
      },
    }
  end
end
