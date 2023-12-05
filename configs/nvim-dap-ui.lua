local dap_present, dap = pcall(require, 'dap')
local dapui_present, dapui = pcall(require, 'dapui')

if not dap_present or not dapui_present then
	return
end

dap.listeners.after.event_initialized['dapui_config'] = function()
	dapui.open()
end

dap.listeners.before.event_terminated['dapui_config'] = function()
	dapui.close()
end

dap.listeners.before.event_exited['dapui_config'] = function()
	dapui.close()
end

dapui.setup()
